using SDL2
using Base.Test

@testset "Init+Quit" begin
# Test that you can init and quit SDL multiple times correctly.
@test 0 == SDL2.Init(UInt32(SDL2.INIT_VIDEO))
SDL2.Quit()

@test 0 == SDL2.Init(UInt32(SDL2.INIT_VIDEO))
SDL2.Quit()
end


@testset "Window open+close" begin
@test 0 == SDL2.Init(UInt32(SDL2.INIT_VIDEO))
# Create window
win = SDL2.CreateWindow("Hello World!", Int32(100), Int32(100), Int32(300), Int32(400),
         UInt32(SDL2.WINDOW_SHOWN))
@test win != C_NULL

renderer = SDL2.CreateRenderer(win, Int32(-1),
             UInt32(SDL2.RENDERER_ACCELERATED | SDL2.RENDERER_PRESENTVSYNC))
@test renderer != C_NULL

# Close window
SDL2.DestroyWindow(win)

# Create window again
win = SDL2.CreateWindow("Hello World!", Int32(100), Int32(100), Int32(300), Int32(400),
         UInt32(SDL2.WINDOW_SHOWN))
@test win != C_NULL
renderer = SDL2.CreateRenderer(win, Int32(-1),
             UInt32(SDL2.RENDERER_ACCELERATED | SDL2.RENDERER_PRESENTVSYNC))
@test renderer != C_NULL

SDL2.Quit()
end

@testset "Window" begin
@test 0 == SDL2.Init(UInt32(SDL2.INIT_VIDEO))

win = SDL2.CreateWindow("Hello World!", Int32(100), Int32(100), Int32(300), Int32(400),
         UInt32(SDL2.WINDOW_SHOWN))

# Test get size
w,h = Int32[-1],Int32[-1]
SDL2.GetWindowSize(win, w,h)
@test 300 == w[]
@test 400 == h[]

e = SDL2.event()
@test typeof(e) <: SDL2.WindowEvent

# Test drawing
renderer = SDL2.CreateRenderer(win, Int32(-1),
             UInt32(SDL2.RENDERER_ACCELERATED | SDL2.RENDERER_PRESENTVSYNC))

rect = SDL2.Rect(1,1,50,50)
@test 0 == SDL2.RenderFillRect(renderer, pointer_from_objref(rect) )

# Close window
SDL2.DestroyWindow(win)

SDL2.Quit()
end
