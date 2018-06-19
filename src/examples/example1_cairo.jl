using SimpleDirectMediaLayer, Cairo
const SDL2 = SimpleDirectMediaLayer

function example1()

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
             #Set render color to red ( background will be rendered in this color )
            SDL2.SetRenderDrawColor(win.renderer, 200, 200, 200, 255)
            SDL2.RenderClear(win.renderer)
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
            for offset in 1:4:h
                draw(surfaces.SDL_surface,surfaces.cairo_context,w,h,offset-x[1],round(Int,w/5*mod(offset,5)))
            end
            tex = SDL2.CreateTextureFromSurface(win.renderer,surfaces.SDL_surface)
            SDL2.RenderCopy(win.renderer, tex, C_NULL, pointer_from_objref(SDL2.Rect(0,0,w,h)))
            SDL2.RenderPresent(win.renderer)

        end

        #println(1/frame_time)
    end

    SDL2.init()
    win = SDL2.SDLWindow(w,h,"Example 0")
    surfaces = SDL2.CairoSDLSurface(w,h)

    for i = 1:100
        draw_frame(surfaces,w,h,win)
    end
    SDL2.Quit()

    true
end
