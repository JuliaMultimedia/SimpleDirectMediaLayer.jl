cd(joinpath(Pkg.dir(),"SDL/src/"))

const libSDL = "/Users/bieler/.julia/v0.6/Homebrew/deps/usr/Cellar/sdl2/2.0.5/lib/libSDL2.dylib"
const SDL_ttf = "/Users/bieler/.julia/v0.6/Homebrew/deps/usr/Cellar/sdl2_ttf/2.0.14/lib/libSDL2_ttf.dylib"

include(joinpath(Pkg.dir(),"SDL/src/lib/SDL.jl"))
include(joinpath(Pkg.dir(),"SDL/src/lib/SDL_ttf.jl"))

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

# Create text
font = TTF_OpenFont("../assets/fonts/FiraCode/ttf/FiraCode-Regular.ttf", 14)
txt = "@BinDeps.install Dict([ (:glib, :libglib) ])"
text = TTF_RenderText_Blended(font, txt, SDL_Color(20,20,20,255))
tex = SDL_CreateTextureFromSurface(renderer,text)

fx,fy = Int[1], Int[1]
TTF_SizeText(font, txt, pointer(fx), pointer(fy))
fx,fy = fx[1],fy[1]

#img = SDL_LoadBMP("LB2951.jpg")
#tex = SDL_CreateTextureFromSurface(ren, img)
#SDL_FreeSurface(img)

for i = 1:1000
    x,y = Int[1], Int[1]
    SDL_PumpEvents()
    SDL_GetMouseState(pointer(x), pointer(y))

    # Set render color to red ( background will be rendered in this color )
    SDL_SetRenderDrawColor(renderer, 200, 200, 200, 255)
    SDL_RenderClear(renderer)

    SDL_SetRenderDrawColor(renderer, 20, 50, 105, 255)
    SDL_RenderDrawLine(renderer,0,0,800,600)

    rect = SDL_Rect(1,1,200,200)
    SDL_RenderFillRect(renderer, pointer_from_objref(rect) )
    SDL_RenderCopy(renderer, tex, C_NULL, pointer_from_objref(SDL_Rect(x[1],y[1],fx,fy)))

    SDL_RenderPresent(renderer)
    sleep(0.001)
end
SDL_Quit()
