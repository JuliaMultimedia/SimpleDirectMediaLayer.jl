__precompile__()
module SimpleDirectMediaLayer

    # TODO: these take a little while to load. Perhaps that can be reduced or we can only
    # load the ones we need.
    using SDL2_jll
    using SDL2_mixer_jll
    using SDL2_image_jll
    using SDL2_ttf_jll

    Base.@deprecate_binding libSDL2       SimpleDirectMediaLayer.libsdl2       false
    Base.@deprecate_binding libSDL2_mixer SimpleDirectMediaLayer.libsdl2_mixer false
    Base.@deprecate_binding libSDL2_ttf   SimpleDirectMediaLayer.libsdl2_ttf   false

    using CEnum: @cenum
    using ColorTypes

    # FIXME: this isn't actually used anywhere
    import Base.unsafe_convert
    # FIXME: these probably shouldn't be exported.
    export  TTF_Init, TTF_OpenFont, TTF_RenderText_Blended, TTF_SizeText

    include("../gen/bindings/ctypes.jl")
    include("../gen/bindings/before_h.jl")
    include("../gen/bindings/SDL_h.jl")
    include("../gen/bindings/after_h.jl")
    include("../gen/bindings/SDL.jl")
    include("../gen/bindings/after_api.jl")

    #= include("lib/SDL.jl") =#

    # TODO: It might be better to have one package for each of these.
    # Find out if these depend on stuff in SDL.jl
    include("lib/SDL_ttf.jl")
    include("lib/SDL_mixer.jl")
    include("lib/SDL_image.jl")

    # TODO: These look like leftover attempts to build a Julia interface.
    # It's probably sensible to keep the wrapper libraries separate from the nicer
    # Julia interface.
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

    # FIXME: update with new Event type.
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

        unsafe_load( Ptr{evtype}(pointer_from_objref(ev)) )
    end

end # module
