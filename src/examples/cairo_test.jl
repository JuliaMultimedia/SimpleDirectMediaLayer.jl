cd("/Users/bieler/.julia/v0.6/SDL/src/")

using Cairo

const libSDL = "/Users/bieler/.julia/v0.6/Homebrew/deps/usr/Cellar/sdl2/2.0.5/lib/libSDL2.dylib"
const SDL_ttf = "/Users/bieler/.julia/v0.6/Homebrew/deps/usr/Cellar/sdl2_ttf/2.0.14/lib/libSDL2_ttf.dylib"

include("lib/SDL.jl")
include("lib/SDL_ttf.jl")

SDL_GL_SetAttribute(SDL_GL_MULTISAMPLEBUFFERS, 16)
SDL_GL_SetAttribute(SDL_GL_MULTISAMPLESAMPLES, 16)
SDL_Init(Int32(SDL_INIT_VIDEO))

TTF_Init()

win = SDL_CreateWindow("Hello World!", Int32(100), Int32(100), Int32(800), Int32(600), Int32(SDL_WINDOW_SHOWN))
SDL_SetWindowResizable(win,true)

renderer = SDL_CreateRenderer(win, Int32(-1), Int32(SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC))

import Base.unsafe_convert
unsafe_convert(::Type{Ptr{SDL_RWops}}, s::String) = SDL_RWFromFile(s, "rb")
SDL_LoadBMP(src::String) = SDL_LoadBMP_RW(src,Int32(1))

bkg = SDL_Color(200, 200, 200, 255)


    surface = SDL_CreateRGBSurfaceWithFormat(0, 800, 600, 32, SDL_PIXELFORMAT_ARGB32)
    surf = unsafe_load(surface)
    SDL_FillRect(surface, C_NULL, SDL_MapRGBA(surf.format,155,2,3,255))


    format = Cairo.FORMAT_ARGB32
    w,h = 800,600
    stride = Cairo.format_stride_for_width(format, w)
    @assert stride == 4w

    ptr = ccall((:cairo_image_surface_create_for_data,Cairo._jl_libcairo),
                Ptr{Void}, (Ptr{Void},Int32,Int32,Int32,Int32),
                surface, format, w, h, stride)
    cr = CairoContext(ptr)
    # draw
    save(cr);
    set_source_rgb(cr,0.8,0.8,0.8);    # light gray
    rectangle(cr,0.0,0.0,256.0,256.0); # background
    fill(cr);
    restore(cr);

    ## original example, following here
    xc = 128.0;
    yc = 128.0;
    radius = 100.0;
    angle1 = 45.0  * (pi/180.0);  # angles are specified
    angle2 = 180.0 * (pi/180.0);  # in radians

    set_line_width(cr, 10.0);
    arc(cr, xc, yc, radius, angle1, angle2);
    stroke(cr);

    tex = SDL_CreateTextureFromSurface(renderer,surface)
    surf = unsafe_load(surface)

for i = 1:200
    x,y = Int[1], Int[1]

    # Set render color to red ( background will be rendered in this color )
    SDL_SetRenderDrawColor(renderer, 200, 200, 200, 255)
    SDL_RenderClear(renderer)

    SDL_PumpEvents()
    SDL_GetMouseState(pointer(x), pointer(y))

    rect = SDL_Rect(1,1,200,200)

    SDL_SetRenderDrawColor(renderer, 20, 50, 105, 255)
    SDL_RenderFillRect(renderer, pointer_from_objref(rect) )

    SDL_RenderCopy(renderer, tex, C_NULL, C_NULL)

    SDL_RenderPresent(renderer)
    sleep(0.001)
end
SDL_Quit()
