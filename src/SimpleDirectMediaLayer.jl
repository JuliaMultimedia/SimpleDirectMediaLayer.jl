module SimpleDirectMediaLayer
    if Sys.islinux()
        using alsa_plugins_jll
        ENV["ALSA_PLUGIN_DIR"] = joinpath(alsa_plugins_jll.artifact_dir, "lib", "alsa-lib")
    end

    include("LibSDL2.jl")
    using .LibSDL2

    using ColorTypes

    import Base.unsafe_convert
    export  TTF_Init, TTF_OpenFont, TTF_RenderText_Blended, TTF_SizeText

    mutable struct SDLWindow
        win::Ptr{SDL_Window}
        renderer::Ptr{SDL_Renderer}

        function SDLWindow(w,h,title="SDL Window")
            win = SDL_CreateWindow(title, Int32(100), Int32(100), Int32(w), Int32(h), UInt32(SDL_WINDOW_SHOWN | SDL_WINDOW_INPUT_FOCUS))
            SDL_SetWindowResizable(win,true)

            renderer = SDL_CreateRenderer(win, Int32(-1), UInt32(SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC) )

            new(win, renderer)
        end
    end

    function init()
        if Sys.islinux() && !haskey(ENV, "ALSA_CONFIG_PATH")
            ENV["ALSA_CONFIG_PATH"] = "/usr/share/alsa/alsa.conf"
        end

        SDL_GL_SetAttribute(SDL_GL_MULTISAMPLEBUFFERS, 4)
        SDL_GL_SetAttribute(SDL_GL_MULTISAMPLESAMPLES, 4)
        SDL_Init(UInt32(SDL_INIT_VIDEO))
        TTF_Init()
        Mix_OpenAudio(Int32(22050), UInt16(MIX_DEFAULT_FORMAT), Int32(2), Int32(1024) )
    end

    function mouse_position()
        x,y = Int[1], Int[1]
        SDL_GetMouseState(pointer(x), pointer(y))
        x[1],y[1]
    end

    function event()
        ev = SDL_Event(ntuple(i->UInt8(0),56))
        SDL_PollEvent(pointer_from_objref(ev)) == 0 && return nothing

        t = UInt32(0)
        for x in ev._Event[4:-1:1]
            t = t << (sizeof(x)*8)
            t |= x
        end
        evtype = SDL_Event(t)
        evtype == nothing && return nothing

        unsafe_load( Ptr{evtype}(pointer_from_objref(ev)) )
    end

end # module
