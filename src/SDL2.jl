module SDL2

    using Cairo, ColorTypes

    const depsfile = joinpath(dirname(@__FILE__), "..", "deps", "deps.jl")
    if isfile(depsfile)
        include(depsfile)
    else
        error("SDL2 not properly installed. Please run Pkg.build(\"SDL2\") then restart Julia.")
    end

    include("lib/SDL.jl")
    include("lib/SDL_ttf.jl")

    import Base.unsafe_convert

    export  TTF_Init, TTF_OpenFont, TTF_RenderText_Blended, TTF_SizeText

    type SDLWindow
        win::Ptr{Window}
        renderer::Ptr{Renderer}

        function SDLWindow(w,h,title="SDL Window")
            win = CreateWindow(title, Int32(100), Int32(100), Int32(w), Int32(h), Int32(WINDOW_SHOWN))
            SetWindowResizable(win,true)

            renderer = CreateRenderer(win, Int32(-1), Int32(RENDERER_ACCELERATED ))#| RENDERER_PRESENTVSYNC))

            new(win, renderer)
        end
    end

    type CairoSDLSurface
        SDL_surface::Ptr{Surface}
        cairo_surface::Cairo.CairoSurface
        cairo_context::Cairo.CairoContext

        function CairoSDLSurface(w::Int,h::Int)

            pixels = Array{ColorTypes.ARGB32,2}(w,h)

            format = Cairo.FORMAT_ARGB32
            stride = Cairo.format_stride_for_width(format, w)
            amask = 0xff000000
            rmask = 0x00ff0000
            gmask = 0x0000ff00
            bmask = 0x000000ff

            surface = CreateRGBSurfaceFrom(convert(Ptr{Void},pointer(pixels)), w, h, 32, stride, rmask, gmask, bmask, amask)
            cs = CairoImageSurface(pixels)
            cr = CairoContext(cs)
            new(surface, cs, cr)
        end

    end

    function __init__()
        GL_SetAttribute(GL_MULTISAMPLEBUFFERS, 16)
        GL_SetAttribute(GL_MULTISAMPLESAMPLES, 16)
        Init(Int32(INIT_VIDEO))
        TTF_Init()
    end

    function mouse_position()
        x,y = Int[1], Int[1]
        GetMouseState(pointer(x), pointer(y))
        x[1],y[1]
    end



end # module

using SDL2, Cairo

function test()

    w,h = 1000,800

    function draw(surface,cr,w,h,y,x)

        #LockSurface(surface);

        save(cr);
        set_source_rgb(cr,0.9,0.9,0.9); # light gray
        rectangle(cr,x,y-2,400,20); # background
        fill(cr);
        restore(cr);

        set_source_rgb(cr,0.,0.,0);

        select_font_face(cr, "monospace", Cairo.FONT_SLANT_NORMAL,Cairo.FONT_WEIGHT_NORMAL)
        set_font_size(cr, 12.0);

        move_to(cr, x, y);
        show_text(cr,"img = unsafe_wrap(Array,convert(Ptr{UInt32},surf.pixels),(w,h))")
        #UnlockSurface(surface)
    end

    function draw_frame(surfaces,w,h,win)
        frame_time = @elapsed begin

            x,y = Int[1], Int[1]
            # Set render color to red ( background will be rendered in this color )
            # SetRenderDrawColor(renderer, 200, 200, 200, 255)
            # RenderClear(renderer)
            #
            # SetRenderDrawColor(renderer, 20, 50, 105, 255)
            # RenderDrawLine(renderer,0,0,800,600)
            #
            SDL2.PumpEvents()
            SDL2.GetMouseState(pointer(x), pointer(y))
            #
            # rect = Rect(x[1],y[1],200,200)
            # RenderFillRect(renderer, pointer_from_objref(rect))

            #cairo draws
            for offset in 10:2:h
                draw(surfaces.SDL_surface,surfaces.cairo_context,w,h,offset-x[1],round(Int,w/5*mod(offset,5)))
            end
            tex = SDL2.CreateTextureFromSurface(win.renderer,surfaces.SDL_surface)
            SDL2.RenderCopy(win.renderer, tex, C_NULL, pointer_from_objref(SDL2.Rect(0,0,w,h)))
            SDL2.RenderPresent(win.renderer)

        end

        warn(1/frame_time)
    end

    win = SDL2.SDLWindow(w,h,"Example 0")
    surfaces = SDL2.CairoSDLSurface(w,h)

    for i = 1:300

        draw_frame(surfaces,w,h,win)

    end
    SDL2.Quit()

end
