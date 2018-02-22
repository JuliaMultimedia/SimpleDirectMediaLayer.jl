using BinDeps
using Compat

@BinDeps.setup

libSDL2 = library_dependency("libSDL2", aliases = ["sdl2", "libsdl2-2.0"])
libSDL_ttf = library_dependency("libSDL_ttf", aliases = ["SDL_ttf"])

if is_apple()
    using Homebrew
    provides(Homebrew.HB, "sdl2", libSDL2, os = :Darwin)
    provides(Homebrew.HB, "SDL_ttf", libSDL_ttf, os = :Darwin)
end

provides(AptGet, "libsdl2-2.0", libSDL2)
provides(Yum, "SDL2", libSDL2)
provides(Pacman, "sdl2", libSDL2)

@BinDeps.install Dict(
    "libSDL2" => "libSDL2",
    "libSDL_ttf" => "libSDL_ttf",
)