using BinDeps
using Compat

@BinDeps.setup

libSDL2 = library_dependency("libSDL2", aliases = ["sdl2", "libsdl2-2.0", "libSDL","SDL2"])
if !is_windows()
    # HACK: These definitions must come later for windows.
    libSDL2_ttf = library_dependency("libSDL2_ttf", aliases = ["SDL_ttf","SDL2_ttf"])
    libSDL2_mixer = library_dependency("libSDL2_mixer", aliases = ["SDL_mixer","SDL2_mixer"])
end

if is_apple()
    using Homebrew
    provides(Homebrew.HB, "sdl2", libSDL2, os = :Darwin)
    provides(Homebrew.HB, "SDL2_ttf", libSDL2_ttf, os = :Darwin)
    provides(Homebrew.HB, "SDL2_mixer", libSDL2_mixer, os = :Darwin)
end

provides(AptGet, "libsdl2-2.0", libSDL2)
provides(Yum, "SDL2", libSDL2)
provides(Pacman, "sdl2", libSDL2)

if is_windows()
    # HACK: First, install just libSDL2, so that the other libs have access to it.
    provides(Binaries, URI("https://www.libsdl.org/release/SDL2-2.0.7-win32-x64.zip"), libSDL2, unpacked_dir=".", os = :Windows)
    @BinDeps.install Dict(
        "libSDL2" => "libSDL2",
    )
    # Now that SDL2 is installed, we can install the extension libraries.
    libSDL2_ttf = library_dependency("libSDL2_ttf", aliases = ["SDL_ttf","SDL2_ttf"])
    libSDL2_mixer = library_dependency("libSDL2_mixer", aliases = ["SDL_mixer","SDL2_mixer"])
    # HACK: In order to get them to pass validation, we have to manually load
    # SDL2.dll, since SDL2_ttf and SDL2_mixer won't dlopen unless SDL2 is
    # already opened. As far as I can tell, there's no way to tell BinDeps about
    # that kind of hard inter-library dependency.
    Libdl.dlopen(joinpath(@__DIR__, "libSDL2", "SDL2.dll"))
    provides(Binaries, URI("https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.14-win32-x64.zip"), libSDL2_ttf, unpacked_dir=".", os = :Windows)
    provides(Binaries, URI("https://www.libsdl.org/projects/SDL_mixer/release/SDL2_mixer-2.0.2-win32-x64.zip"), libSDL2_mixer, unpacked_dir=".", os = :Windows)
    # Regenerate the deps.jl file with all three libs.
    @BinDeps.install Dict(
        "libSDL2" => "libSDL2",
        "libSDL2_ttf" => "libSDL2_ttf",
        "libSDL2_mixer" => "libSDL2_mixer",
    )
    # HACK: Finally, hilariously, reorder the @checked_lib lines to make sure
    # SDL2 is loaded first at runtime.
    deps_jl = joinpath(@__DIR__, "deps.jl")
    depslines = readlines(deps_jl)
    liblines = ismatch.(r"SDL2", depslines)
    depslines[liblines] = sort(depslines[liblines])
    write(deps_jl, join(depslines, "\n"))
else
    @BinDeps.install Dict(
        "libSDL2" => "libSDL2",
        "libSDL2_ttf" => "libSDL2_ttf",
        "libSDL2_mixer" => "libSDL2_mixer",
    )
end
