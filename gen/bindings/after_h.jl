# Could keep the enum and write a convert, but the enum is pointless so w/e
const bool = UInt32

# The later SDL2 libraries want this in its prefixed form.
const SDL_version = version

# The rest of this is copied and lightly edited from the original SDL_h.jl

# FIXME: Doesn't cover all events
# Dicts are slow
# Event should probably be changed as well
const event_type_to_event = Dict{EventType,Any}(
    WINDOWEVENT => WindowEvent,
    KEYDOWN => KeyboardEvent,
    KEYUP => KeyboardEvent,
    TEXTEDITING => TextEditingEvent,
    TEXTINPUT => TextInputEvent,
    MOUSEMOTION => MouseMotionEvent,
    MOUSEBUTTONDOWN => MouseButtonEvent,
    MOUSEBUTTONUP => MouseButtonEvent,
    MOUSEWHEEL => MouseWheelEvent,
    DROPFILE => DropEvent,
    DROPTEXT => DropEvent,
    DROPBEGIN => DropEvent,
    DROPCOMPLETE => DropEvent,
    QUIT => QuitEvent,
    USEREVENT => UserEvent
)

function Event(t::UInt32)
    t = EventType(t)
    haskey(event_type_to_event,t) && return event_type_to_event[t]
    nothing
end

# Macros ported by NHDaly
MUSTLOCK(S::Ptr{Surface}) = ((unsafe_load(S).flags & RLEACCEL) != 0)
LoadBMP(file) = LoadBMP_RW(RWFromFile(file, "rb"), Int32(1))
SaveBMP(surface::Ptr{Surface}, file) = SaveBMP_RW(surface, RWFromFile(file, "wb" ), Int32(1))
