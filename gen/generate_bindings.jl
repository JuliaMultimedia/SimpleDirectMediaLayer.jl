"""
Generate bindings for SDL from the C source


## Outline

Download and extract source
Run Clang.jl on it
Remove extra SDL_ bit
Compare with original

    Some of these are manual changes, some will be due to Clang.jl changes. Some might be
    deliberate configuration differences.
    
    Differences in SDL.jl
        They manually changed a bunch of types from Cint to more specific things.
        I don't know whether that was required to get things to run or whether they 
        just wanted the documentation.

        They have type annotations in the functions signature most of the time and I don't

        They manually added a macro

        There are a few more functions in mine

        There are a load of _mm_* functions in theirs

        Some functions in mine take and return no arguments when they definitely should
        (iconv, writeu8, utf8strlcpy)

    Differences in SDL_h.jl
        Mine uses @cenum, and that makes the diff a huge mess. I'll work on it another time.

## Future work

Once the experimentation is over, the downloading and extracting code can go
and we can just vendor the includes from the right SDL2 version, maybe keeping
a script for downloading and extracting them for the future. Maybe not.

Decide if the opengl headers should be excluded or not.

Try running your examples with these bindings.

Maybe parse and rewrite the files rather than string mangling.

"""

const dir = @__DIR__
cd(dir)

# Latest
# sdl2_version = "2.0.12"

# The version in the comment of SDL.jl
sdl2_version = "2.0.5"

urls = [
    :sdl2 => "http://www.libsdl.org/release/SDL2-$sdl2_version.tar.gz"
    # :sdl2_image => "https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.5.tar.gz"
    # :sdl2_mixer => "https://www.libsdl.org/projects/SDL_mixer/release/SDL2_mixer-2.0.4.tar.gz"
    # :sdl2_ttf => "https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.15.tar.gz"
]

# Get sources
mkpath("downloads")
for (_, url) in urls
    if !isfile(joinpath("downloads", basename(url)))
        download(url, joinpath("downloads", basename(url)))
    end
end

# Unpack their include dirs
using DataDeps: unpack

# Let's just do this one at a time for now.

isdir("SDL2-$sdl2_version") ||
    unpack("downloads/SDL2-$sdl2_version.tar.gz"; keep_originals=true)

# Generate .jl
# This is copied from the Clang.jl readme and then I changed the obvious bits.
using Clang: CLANG_INCLUDE, InternalOptions, init

# Clang complains that it can't find stddef.h, but that probably doesn't matter. Can add to the include line if it does.
LIBSDL_INCLUDE = "SDL2-$sdl2_version/include/"
LIBSDL_HEADERS = [joinpath(LIBSDL_INCLUDE, header) for header in readdir(LIBSDL_INCLUDE) if endswith(header, ".h")]

# I think Jonathan excluded these, too.
filter!(!fn -> occursin("test", fn), LIBSDL_HEADERS)
filter!(!fn -> occursin("opengl", fn), LIBSDL_HEADERS)
filter!(!fn -> occursin("config", fn), LIBSDL_HEADERS)

bindings_dir = joinpath(dir, "bindings")
SDL_jl = joinpath(bindings_dir, "SDL.jl")
SDL_h_jl = joinpath(bindings_dir, "SDL_h.jl")

mkpath(bindings_dir)

wc = init(; headers = LIBSDL_HEADERS,          
            output_dir = bindings_dir,
            output_file = SDL_jl,
            common_file = SDL_h_jl,
            clang_includes = vcat(LIBSDL_INCLUDE, CLANG_INCLUDE),
            #= clang_args = ["-I", joinpath(STDLIB_INCLUDE, "..")], =#
            # I don't know what this does, but deleting it gives us an error.
            header_wrapped = (root, current) -> root == current,
            header_library = x -> "libsdl2",
            # Generate mutable structs
            options = InternalOptions(true, true),
            )

run(wc)

# Remove SDL_

function rm_SDL_(fn)
    str = String(read(fn))
    str = replace(str, r"(::|[^:])SDL_" => s"\1");
    write(fn, str)
end

rm_SDL_(SDL_jl)
rm_SDL_(SDL_h_jl)

# Compare them

"""
Give diff a chance to work by sorting the blocks

Pretty useless with the `common` output because of the enums.

"""
function normjl(filename)
    lines = readlines(filename)
    lines = filter(s -> !startswith(s, "#"), lines)

    funcs = split(join(lines, "\n"), "\n\n")
    funcs = strip.(funcs)
    funcs = filter(!isempty, funcs)
    # funcs = replace.(funcs, r"([^:])SDL_" => s"\1");
    funcs = sort(funcs)
    
    str = join(funcs, "\n\n")
    return str
end

write("bindings/mine.jl", normjl(SDL_jl))
write("bindings/theirs.jl", normjl("../src/lib/SDL.jl"))

write("bindings/mine_h.jl", normjl(SDL_h_jl))
write("bindings/theirs_h.jl", normjl("../src/lib/SDL_h.jl"))
