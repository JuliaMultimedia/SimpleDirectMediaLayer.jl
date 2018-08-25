__precompile__()
module SimpleDirectMediaLayer

    using ColorTypes

    import Base.unsafe_convert
    export  TTF_Init, TTF_OpenFont, TTF_RenderText_Blended, TTF_SizeText

    const depsfile = joinpath(dirname(@__FILE__), "..", "deps", "deps.jl")
    if isfile(depsfile)
        include(depsfile)
    else
        error("SimpleDirectMediaLayer not properly installed. Please run Pkg.build(\"SimpleDirectMediaLayer\") then restart Julia.")
    end

    include("lib/SDL.jl")
    include("lib/SDL_ttf.jl")
    include("lib/SDL_mixer.jl")

    mutable struct SDLWindow
        win::Ptr{Window}
        renderer::Ptr{Renderer}

        function SDLWindow(w,h,title="SDL Window")
            win = CreateWindow(title, Int32(100), Int32(100), Int32(w), Int32(h), UInt32(WINDOW_SHOWN | WINDOW_INPUT_FOCUS))
            SetWindowResizable(win,true)

            renderer = CreateRenderer(win, Int32(-1), UInt32(RENDERER_ACCELERATED | RENDERER_PRESENTVSYNC) )

            new(win, renderer)
        end
    end

    function init()
        GL_SetAttribute(GL_MULTISAMPLEBUFFERS, 4)
        GL_SetAttribute(GL_MULTISAMPLESAMPLES, 4)
        Init(UInt32(INIT_VIDEO))
        TTF_Init()
        Mix_OpenAudio(Int32(22050), UInt16(MIX_DEFAULT_FORMAT), Int32(2), Int32(1024) )
    end

    function mouse_position()
        x,y = Int[1], Int[1]
        GetMouseState(pointer(x), pointer(y))
        x[1],y[1]
    end

    function event()
        ev = Event(ntuple(i->UInt8(0),56))
        PollEvent(pointer_from_objref(ev)) == 0 && return nothing

        t = UInt32(0)
        for x in ev._Event[4:-1:1]
            t = t << (sizeof(x)*8)
            t |= x
        end
        evtype = Event(t)
        evtype == nothing && return nothing

        evtype == KeyboardEvent && info(ev)

        unsafe_load( Ptr{evtype}(pointer_from_objref(ev)) )
    end

end # module
