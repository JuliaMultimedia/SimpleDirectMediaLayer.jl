using SimpleDirectMediaLayer
const SDL2 = SimpleDirectMediaLayer 

import SimpleDirectMediaLayer.LoadBMP

SDL2.GL_SetAttribute(SDL2.GL_MULTISAMPLEBUFFERS, 16)
SDL2.GL_SetAttribute(SDL2.GL_MULTISAMPLESAMPLES, 16)

SDL2.init()

win = SDL2.CreateWindow("Hello World!", Int32(100), Int32(100), Int32(800), Int32(600), 
    UInt32(SDL2.WINDOW_SHOWN))
SDL2.SetWindowResizable(win,true)

renderer = SDL2.CreateRenderer(win, Int32(-1),
    UInt32(SDL2.RENDERER_ACCELERATED | SDL2.RENDERER_PRESENTVSYNC))

import Base.unsafe_convert
unsafe_convert(::Type{Ptr{SDL2.RWops}}, s::String) = SDL2.RWFromFile(s, "rb")

LoadBMP(src::String) = SDL2.LoadBMP_RW(src,Int32(1))

bkg = SDL2.Color(200, 200, 200, 255)

# Create text
font = TTF_OpenFont(joinpath(@__DIR__,"../../assets/fonts/FiraCode/ttf/FiraCode-Regular.ttf"), 14)
#txt = "@BinDeps.install Dict([ (:glib, :libglib) ])"
txt = "hi"
text = TTF_RenderText_Blended(font, txt, SDL2.Color(20,20,20,255))
tex = SDL2.CreateTextureFromSurface(renderer,text)

fx,fy = Int[1], Int[1]
TTF_SizeText(font, txt, pointer(fx), pointer(fy))
fx,fy = fx[1],fy[1]

#img = SDL2.LoadBMP("LB2951.jpg")
#tex = SDL2.CreateTextureFromSurface(ren, img)
#SDL2.FreeSurface(img)

for i = 1:200
    x,y = Int[1], Int[1]
    SDL2.PumpEvents()
    SDL2.GetMouseState(pointer(x), pointer(y))

    # Set render color to red ( background will be rendered in this color )
    SDL2.SetRenderDrawColor(renderer, 200, 200, 200, 255)
    SDL2.RenderClear(renderer)

    SDL2.SetRenderDrawColor(renderer, 20, 50, 105, 255)
    SDL2.RenderDrawLine(renderer,0,0,800,600)

    rect = SDL2.Rect(1,1,200,200)
    SDL2.RenderFillRect(renderer, pointer_from_objref(rect) )
    SDL2.RenderCopy(renderer, tex, C_NULL, pointer_from_objref(SDL2.Rect(x[1],y[1],fx,fy)))

    SDL2.RenderPresent(renderer)
    sleep(0.001)
end
SDL2.Quit()
