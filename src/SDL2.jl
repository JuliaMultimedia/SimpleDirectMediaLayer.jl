__precompile__()
module SDL2

    using Cairo, ColorTypes

    const depsfile = joinpath(dirname(@__FILE__), "..", "deps", "deps.jl")
    if isfile(depsfile)
        include(depsfile)
    else
        error("SDL2 not properly installed. Please run Pkg.build(\"SDL2\") then restart Julia.")
    end

    include("lib/SDL.jl")
    if is_apple()
        include("lib/SDL_ttf.jl")
        include("lib/SDL_mixer.jl")

        export  TTF_Init, TTF_OpenFont, TTF_RenderText_Blended, TTF_SizeText
    end

    import Base.unsafe_convert

    type SDLWindow
        win::Ptr{Window}
        renderer::Ptr{Renderer}

        function SDLWindow(w,h,title="SDL Window")
            win = CreateWindow(title, Int32(100), Int32(100), Int32(w), Int32(h), UInt32(WINDOW_SHOWN | WINDOW_INPUT_FOCUS))
            SetWindowResizable(win,true)

            renderer = CreateRenderer(win, Int32(-1), UInt32(RENDERER_ACCELERATED | RENDERER_PRESENTVSYNC) )

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
        Init(UInt32(INIT_VIDEO))
        if is_apple()
            TTF_Init()
            Mix_OpenAudio(Int32(22050), UInt16(MIX_DEFAULT_FORMAT), Int32(2), Int32(1024) )
        end
    end

    function mouse_position()
        x,y = Int[1], Int[1]
        GetMouseState(pointer(x), pointer(y))
        x[1],y[1]
    end

    function event()
        ev = Event(ntuple(i->UInt8(0),56))
        PollEvent(pointer_from_objref(ev)) == 0 && return nothing

        ee = ev._Event
        t = UInt32(ee[4]) << 24 | UInt32(ee[3]) << 16 | UInt32(ee[2]) << 8 | ee[1]
        evtype = Event(t)
        evtype == nothing && return nothing

        unsafe_load( Ptr{evtype}(pointer_from_objref(ev)) )
    end

end # module
