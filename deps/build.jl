using BinDeps
using Compat

@BinDeps.setup

libSDL2 = library_dependency("libSDL2", aliases = ["sdl2", "libsdl2-2.0", "libSDL","SDL2"])
libSDL2_ttf = library_dependency("libSDL2_ttf", aliases = ["SDL_ttf","SDL2_ttf"])

if is_apple()
    using Homebrew
    provides(Homebrew.HB, "sdl2", libSDL2, os = :Darwin)
    provides(Homebrew.HB, "SDL2_ttf", libSDL2_ttf, os = :Darwin)
end


if is_windows()
    provides(Binaries, URI("https://www.libsdl.org/release/SDL2-2.0.7-win32-x64.zip"), libSDL2, unpacked_dir=".")
    provides(Binaries, URI("https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.14-win32-x64.zip"), libSDL2_ttf, unpacked_dir=".")
end

provides(AptGet, "libsdl2-2.0", libSDL2)
provides(Yum, "SDL2", libSDL2)
provides(Pacman, "sdl2", libSDL2)

@BinDeps.install Dict(
    "libSDL2" => "libSDL2",
    "libSDL2_ttf" => "libSDL2_ttf",
)
