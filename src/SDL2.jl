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
            win = CreateWindow(title, Int32(100), Int32(100), Int32(w), Int32(h), Int32(WINDOW_SHOWN | WINDOW_INPUT_FOCUS))
            SetWindowResizable(win,true)

            renderer = CreateRenderer(win, Int32(-1), Int32(RENDERER_ACCELERATED | RENDERER_PRESENTVSYNC) ) 

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

    function init()
        GL_SetAttribute(GL_MULTISAMPLEBUFFERS, 4)
        GL_SetAttribute(GL_MULTISAMPLESAMPLES, 4)
        Init(Int32(INIT_VIDEO))
        TTF_Init()
    end

    function mouse_position()
        x,y = Int[1], Int[1]
        GetMouseState(pointer(x), pointer(y))
        x[1],y[1]
    end

    function event()
        ev = Event(ntuple(i->-1,56))
        PollEvent(pointer_from_objref(ev)) == 0 && return nothing
        
        evtype = Event(ev._Event[1])
        evtype == nothing && return nothing

        evtype == KeyboardEvent && info(ev)

        unsafe_load( Ptr{evtype}(pointer_from_objref(ev)) )
    end


end # module


