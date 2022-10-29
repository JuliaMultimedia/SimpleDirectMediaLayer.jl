using Clang
using Clang.Generators
using SDL2_jll
using SDL2_mixer_jll
using SDL2_image_jll
using SDL2_ttf_jll
using SDL2_gfx_jll

cd(@__DIR__)

sdl2_include_dir = joinpath(SDL2_jll.artifact_dir, "include") |> normpath
sdl_gfx_include_dir = joinpath(SDL2_gfx_jll.artifact_dir, "include") |> normpath
sdl_mixer_h = joinpath(SDL2_mixer_jll.artifact_dir, "include", "SDL2", "SDL_mixer.h") |> normpath
sdl_image_h = joinpath(SDL2_image_jll.artifact_dir, "include", "SDL2", "SDL_image.h") |> normpath
sdl_ttf_h = joinpath(SDL2_ttf_jll.artifact_dir, "include", "SDL2", "SDL_ttf.h") |> normpath
sdl_h = joinpath(sdl2_include_dir, "SDL2", "SDL.h")
sdl_framerate_h = joinpath(sdl_gfx_include_dir, "SDL2", "SDL2_framerate.h")
sdl_gfxPrimitives_h = joinpath(sdl_gfx_include_dir, "SDL2", "SDL2_gfxPrimitives.h")
sdl_imageFilter_h = joinpath(sdl_gfx_include_dir, "SDL2", "SDL2_imageFilter.h")
sdl_rotozoom_h = joinpath(sdl_gfx_include_dir, "SDL2", "SDL2_rotozoom.h")

local_include_dir = joinpath(@__DIR__, "include")
isdir(local_include_dir) && rm(local_include_dir, recursive=true)
cp(sdl2_include_dir, local_include_dir, force=true)
cp(sdl_mixer_h, joinpath(@__DIR__, "include", "SDL2", basename(sdl_mixer_h)))
cp(sdl_image_h, joinpath(@__DIR__, "include", "SDL2", basename(sdl_image_h)))
cp(sdl_ttf_h, joinpath(@__DIR__, "include", "SDL2", basename(sdl_ttf_h)))
cp(sdl_framerate_h, joinpath(@__DIR__, "include", "SDL2", basename(sdl_framerate_h)))
cp(sdl_gfxPrimitives_h, joinpath(@__DIR__, "include", "SDL2", basename(sdl_gfxPrimitives_h)))
cp(sdl_imageFilter_h, joinpath(@__DIR__, "include", "SDL2", basename(sdl_imageFilter_h)))
cp(sdl_rotozoom_h, joinpath(@__DIR__, "include", "SDL2", basename(sdl_rotozoom_h)))

sdl_mixer_h = joinpath(local_include_dir, "SDL2", "SDL_mixer.h")
sdl_image_h = joinpath(local_include_dir, "SDL2", "SDL_image.h")
sdl_ttf_h = joinpath(local_include_dir, "SDL2", "SDL_ttf.h")
sdl_h = joinpath(local_include_dir, "SDL2", "SDL.h")
sdl_framerate_h = joinpath(local_include_dir, "SDL2", "SDL2_framerate.h")
sdl_gfxPrimitives_h = joinpath(local_include_dir, "SDL2", "SDL2_gfxPrimitives.h")
sdl_imageFilter_h = joinpath(local_include_dir, "SDL2", "SDL2_imageFilter.h")
sdl_rotozoom_h = joinpath(local_include_dir, "SDL2", "SDL2_rotozoom.h")


options = load_options(joinpath(@__DIR__, "generator.toml"))

args = get_default_args()
push!(args, "-I$local_include_dir")

ctx = create_context([sdl_h, sdl_mixer_h, sdl_image_h, sdl_ttf_h, sdl_framerate_h, sdl_gfxPrimitives_h, sdl_imageFilter_h, sdl_rotozoom_h], args, options)

build!(ctx)
