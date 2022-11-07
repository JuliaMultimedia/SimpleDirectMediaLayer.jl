module LibSDL2

using SDL2_jll
export SDL2_jll

using SDL2_mixer_jll
export SDL2_mixer_jll

using SDL2_image_jll
export SDL2_image_jll

using SDL2_ttf_jll
export SDL2_ttf_jll

using CEnum

const SDL_MIN_SINT8 = reinterpret(Int8, ~0x7F)
const SDL_MIN_SINT16 = reinterpret(Int16, ~0x7FFF)
const SDL_MIN_SINT32 = reinterpret(Int32, ~0x7FFFFFFF)
const SDL_MIN_SINT64 = reinterpret(Int64, ~0x7FFFFFFFFFFFFFFF)

const SDL_ICONV_ERROR = reinterpret(Csize_t, -1)
const SDL_ICONV_E2BIG = reinterpret(Csize_t, -2)
const SDL_ICONV_EILSEQ = reinterpret(Csize_t, -3)
const SDL_ICONV_EINVAL = reinterpret(Csize_t, -4)

const SDL_TOUCH_MOUSEID = reinterpret(UInt32, Int32(-1))


const Uint32 = UInt32

const Uint8 = UInt8

const Sint8 = Int8

const Sint16 = Int16

const Uint16 = UInt16

const Sint32 = Int32

const Sint64 = Int64

const Uint64 = UInt64

function SDL_memset(dst, c, len)
    ccall((:SDL_memset, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Cint, Csize_t), dst, c, len)
end

function SDL_memcpy(dst, src, len)
    ccall((:SDL_memcpy, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), dst, src, len)
end

function SDL_iconv_string(tocode, fromcode, inbuf, inbytesleft)
    ccall((:SDL_iconv_string, libsdl2), Ptr{Cchar}, (Ptr{Cchar}, Ptr{Cchar}, Ptr{Cchar}, Csize_t), tocode, fromcode, inbuf, inbytesleft)
end

function SDL_strlen(str)
    ccall((:SDL_strlen, libsdl2), Csize_t, (Ptr{Cchar},), str)
end

function SDL_wcslen(wstr)
    ccall((:SDL_wcslen, libsdl2), Csize_t, (Ptr{Cwchar_t},), wstr)
end

function _SDL_size_mul_overflow_builtin(a, b, ret)
    ccall((:_SDL_size_mul_overflow_builtin, libsdl2), Cint, (Csize_t, Csize_t, Ptr{Csize_t}), a, b, ret)
end

function _SDL_size_add_overflow_builtin(a, b, ret)
    ccall((:_SDL_size_add_overflow_builtin, libsdl2), Cint, (Csize_t, Csize_t, Ptr{Csize_t}), a, b, ret)
end

struct SDL_AssertData
    always_ignore::Cint
    trigger_count::Cuint
    condition::Ptr{Cchar}
    filename::Ptr{Cchar}
    linenum::Cint
    _function::Ptr{Cchar}
    next::Ptr{SDL_AssertData}
end

@cenum SDL_AssertState::UInt32 begin
    SDL_ASSERTION_RETRY = 0
    SDL_ASSERTION_BREAK = 1
    SDL_ASSERTION_ABORT = 2
    SDL_ASSERTION_IGNORE = 3
    SDL_ASSERTION_ALWAYS_IGNORE = 4
end

function SDL_ReportAssertion(arg1, arg2, arg3, arg4)
    ccall((:SDL_ReportAssertion, libsdl2), SDL_AssertState, (Ptr{SDL_AssertData}, Ptr{Cchar}, Ptr{Cchar}, Cint), arg1, arg2, arg3, arg4)
end

struct SDL_atomic_t
    value::Cint
end

function SDL_AtomicAdd(a, v)
    ccall((:SDL_AtomicAdd, libsdl2), Cint, (Ptr{SDL_atomic_t}, Cint), a, v)
end

@cenum SDL_errorcode::UInt32 begin
    SDL_ENOMEM = 0
    SDL_EFREAD = 1
    SDL_EFWRITE = 2
    SDL_EFSEEK = 3
    SDL_UNSUPPORTED = 4
    SDL_LASTERROR = 5
end

function SDL_Error(code)
    ccall((:SDL_Error, libsdl2), Cint, (SDL_errorcode,), code)
end

function SDL_SwapFloat(x)
    ccall((:SDL_SwapFloat, libsdl2), Cfloat, (Cfloat,), x)
end

mutable struct SDL_mutex end

function SDL_LockMutex(mutex)
    ccall((:SDL_LockMutex, libsdl2), Cint, (Ptr{SDL_mutex},), mutex)
end

function SDL_UnlockMutex(mutex)
    ccall((:SDL_UnlockMutex, libsdl2), Cint, (Ptr{SDL_mutex},), mutex)
end

struct __JL_Ctag_475
    data::NTuple{24, UInt8}
end

function Base.getproperty(x::Ptr{__JL_Ctag_475}, f::Symbol)
    f === :stdio && return Ptr{__JL_Ctag_476}(x + 0)
    f === :mem && return Ptr{__JL_Ctag_477}(x + 0)
    f === :unknown && return Ptr{__JL_Ctag_478}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::__JL_Ctag_475, f::Symbol)
    r = Ref{__JL_Ctag_475}(x)
    ptr = Base.unsafe_convert(Ptr{__JL_Ctag_475}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{__JL_Ctag_475}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

struct SDL_RWops
    data::NTuple{72, UInt8}
end

function Base.getproperty(x::Ptr{SDL_RWops}, f::Symbol)
    f === :size && return Ptr{Ptr{Cvoid}}(x + 0)
    f === :seek && return Ptr{Ptr{Cvoid}}(x + 8)
    f === :read && return Ptr{Ptr{Cvoid}}(x + 16)
    f === :write && return Ptr{Ptr{Cvoid}}(x + 24)
    f === :close && return Ptr{Ptr{Cvoid}}(x + 32)
    f === :type && return Ptr{Uint32}(x + 40)
    f === :hidden && return Ptr{__JL_Ctag_475}(x + 48)
    return getfield(x, f)
end

function Base.getproperty(x::SDL_RWops, f::Symbol)
    r = Ref{SDL_RWops}(x)
    ptr = Base.unsafe_convert(Ptr{SDL_RWops}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{SDL_RWops}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

const SDL_AudioFormat = Uint16

# typedef void ( SDLCALL * SDL_AudioCallback ) ( void * userdata , Uint8 * stream , int len )
const SDL_AudioCallback = Ptr{Cvoid}

struct SDL_AudioSpec
    freq::Cint
    format::SDL_AudioFormat
    channels::Uint8
    silence::Uint8
    samples::Uint16
    padding::Uint16
    size::Uint32
    callback::SDL_AudioCallback
    userdata::Ptr{Cvoid}
end

function SDL_LoadWAV_RW(src, freesrc, spec, audio_buf, audio_len)
    ccall((:SDL_LoadWAV_RW, libsdl2), Ptr{SDL_AudioSpec}, (Ptr{SDL_RWops}, Cint, Ptr{SDL_AudioSpec}, Ptr{Ptr{Uint8}}, Ptr{Uint32}), src, freesrc, spec, audio_buf, audio_len)
end

function SDL_RWFromFile(file, mode)
    ccall((:SDL_RWFromFile, libsdl2), Ptr{SDL_RWops}, (Ptr{Cchar}, Ptr{Cchar}), file, mode)
end

struct SDL_Color
    r::Uint8
    g::Uint8
    b::Uint8
    a::Uint8
end

struct SDL_Rect
    x::Cint
    y::Cint
    w::Cint
    h::Cint
end

mutable struct SDL_BlitMap end

struct SDL_Surface
    flags::Uint32
    format::Ptr{Cvoid} # format::Ptr{SDL_PixelFormat}
    w::Cint
    h::Cint
    pitch::Cint
    pixels::Ptr{Cvoid}
    userdata::Ptr{Cvoid}
    locked::Cint
    list_blitmap::Ptr{Cvoid}
    clip_rect::SDL_Rect
    map::Ptr{SDL_BlitMap}
    refcount::Cint
end

function Base.getproperty(x::SDL_Surface, f::Symbol)
    f === :format && return Ptr{SDL_PixelFormat}(getfield(x, f))
    return getfield(x, f)
end

function SDL_LoadBMP_RW(src, freesrc)
    ccall((:SDL_LoadBMP_RW, libsdl2), Ptr{SDL_Surface}, (Ptr{SDL_RWops}, Cint), src, freesrc)
end

function SDL_SaveBMP_RW(surface, dst, freedst)
    ccall((:SDL_SaveBMP_RW, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{SDL_RWops}, Cint), surface, dst, freedst)
end

function SDL_UpperBlit(src, srcrect, dst, dstrect)
    ccall((:SDL_UpperBlit, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SDL_UpperBlitScaled(src, srcrect, dst, dstrect)
    ccall((:SDL_UpperBlitScaled, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SDL_GameControllerAddMappingsFromRW(rw, freerw)
    ccall((:SDL_GameControllerAddMappingsFromRW, libsdl2), Cint, (Ptr{SDL_RWops}, Cint), rw, freerw)
end

function SDL_PumpEvents()
    ccall((:SDL_PumpEvents, libsdl2), Cvoid, ())
end

struct SDL_Event
    data::NTuple{56, UInt8}
end

function Base.getproperty(x::Ptr{SDL_Event}, f::Symbol)
    f === :type && return Ptr{Uint32}(x + 0)
    f === :common && return Ptr{SDL_CommonEvent}(x + 0)
    f === :display && return Ptr{SDL_DisplayEvent}(x + 0)
    f === :window && return Ptr{SDL_WindowEvent}(x + 0)
    f === :key && return Ptr{SDL_KeyboardEvent}(x + 0)
    f === :edit && return Ptr{SDL_TextEditingEvent}(x + 0)
    f === :editExt && return Ptr{SDL_TextEditingExtEvent}(x + 0)
    f === :text && return Ptr{SDL_TextInputEvent}(x + 0)
    f === :motion && return Ptr{SDL_MouseMotionEvent}(x + 0)
    f === :button && return Ptr{SDL_MouseButtonEvent}(x + 0)
    f === :wheel && return Ptr{SDL_MouseWheelEvent}(x + 0)
    f === :jaxis && return Ptr{SDL_JoyAxisEvent}(x + 0)
    f === :jball && return Ptr{SDL_JoyBallEvent}(x + 0)
    f === :jhat && return Ptr{SDL_JoyHatEvent}(x + 0)
    f === :jbutton && return Ptr{SDL_JoyButtonEvent}(x + 0)
    f === :jdevice && return Ptr{SDL_JoyDeviceEvent}(x + 0)
    f === :jbattery && return Ptr{SDL_JoyBatteryEvent}(x + 0)
    f === :caxis && return Ptr{SDL_ControllerAxisEvent}(x + 0)
    f === :cbutton && return Ptr{SDL_ControllerButtonEvent}(x + 0)
    f === :cdevice && return Ptr{SDL_ControllerDeviceEvent}(x + 0)
    f === :ctouchpad && return Ptr{SDL_ControllerTouchpadEvent}(x + 0)
    f === :csensor && return Ptr{SDL_ControllerSensorEvent}(x + 0)
    f === :adevice && return Ptr{SDL_AudioDeviceEvent}(x + 0)
    f === :sensor && return Ptr{SDL_SensorEvent}(x + 0)
    f === :quit && return Ptr{SDL_QuitEvent}(x + 0)
    f === :user && return Ptr{SDL_UserEvent}(x + 0)
    f === :syswm && return Ptr{SDL_SysWMEvent}(x + 0)
    f === :tfinger && return Ptr{SDL_TouchFingerEvent}(x + 0)
    f === :mgesture && return Ptr{SDL_MultiGestureEvent}(x + 0)
    f === :dgesture && return Ptr{SDL_DollarGestureEvent}(x + 0)
    f === :drop && return Ptr{SDL_DropEvent}(x + 0)
    f === :padding && return Ptr{NTuple{56, Uint8}}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::SDL_Event, f::Symbol)
    r = Ref{SDL_Event}(x)
    ptr = Base.unsafe_convert(Ptr{SDL_Event}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{SDL_Event}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

@cenum SDL_eventaction::UInt32 begin
    SDL_ADDEVENT = 0
    SDL_PEEKEVENT = 1
    SDL_GETEVENT = 2
end

function SDL_PeepEvents(events, numevents, action, minType, maxType)
    ccall((:SDL_PeepEvents, libsdl2), Cint, (Ptr{SDL_Event}, Cint, SDL_eventaction, Uint32, Uint32), events, numevents, action, minType, maxType)
end

function SDL_EventState(type, state)
    ccall((:SDL_EventState, libsdl2), Uint8, (Uint32, Cint), type, state)
end

function SDL_GetPlatform()
    ccall((:SDL_GetPlatform, libsdl2), Ptr{Cchar}, ())
end

@cenum SDL_bool::UInt32 begin
    SDL_FALSE = 0
    SDL_TRUE = 1
end

@cenum SDL_DUMMY_ENUM::UInt32 begin
    DUMMY_ENUM_VALUE = 0
end

function SDL_malloc(size)
    ccall((:SDL_malloc, libsdl2), Ptr{Cvoid}, (Csize_t,), size)
end

function SDL_calloc(nmemb, size)
    ccall((:SDL_calloc, libsdl2), Ptr{Cvoid}, (Csize_t, Csize_t), nmemb, size)
end

function SDL_realloc(mem, size)
    ccall((:SDL_realloc, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Csize_t), mem, size)
end

function SDL_free(mem)
    ccall((:SDL_free, libsdl2), Cvoid, (Ptr{Cvoid},), mem)
end

# typedef void * ( SDLCALL * SDL_malloc_func ) ( size_t size )
const SDL_malloc_func = Ptr{Cvoid}

# typedef void * ( SDLCALL * SDL_calloc_func ) ( size_t nmemb , size_t size )
const SDL_calloc_func = Ptr{Cvoid}

# typedef void * ( SDLCALL * SDL_realloc_func ) ( void * mem , size_t size )
const SDL_realloc_func = Ptr{Cvoid}

# typedef void ( SDLCALL * SDL_free_func ) ( void * mem )
const SDL_free_func = Ptr{Cvoid}

function SDL_GetOriginalMemoryFunctions(malloc_func, calloc_func, realloc_func, free_func)
    ccall((:SDL_GetOriginalMemoryFunctions, libsdl2), Cvoid, (Ptr{SDL_malloc_func}, Ptr{SDL_calloc_func}, Ptr{SDL_realloc_func}, Ptr{SDL_free_func}), malloc_func, calloc_func, realloc_func, free_func)
end

function SDL_GetMemoryFunctions(malloc_func, calloc_func, realloc_func, free_func)
    ccall((:SDL_GetMemoryFunctions, libsdl2), Cvoid, (Ptr{SDL_malloc_func}, Ptr{SDL_calloc_func}, Ptr{SDL_realloc_func}, Ptr{SDL_free_func}), malloc_func, calloc_func, realloc_func, free_func)
end

function SDL_SetMemoryFunctions(malloc_func, calloc_func, realloc_func, free_func)
    ccall((:SDL_SetMemoryFunctions, libsdl2), Cint, (SDL_malloc_func, SDL_calloc_func, SDL_realloc_func, SDL_free_func), malloc_func, calloc_func, realloc_func, free_func)
end

function SDL_GetNumAllocations()
    ccall((:SDL_GetNumAllocations, libsdl2), Cint, ())
end

function SDL_getenv(name)
    ccall((:SDL_getenv, libsdl2), Ptr{Cchar}, (Ptr{Cchar},), name)
end

function SDL_setenv(name, value, overwrite)
    ccall((:SDL_setenv, libsdl2), Cint, (Ptr{Cchar}, Ptr{Cchar}, Cint), name, value, overwrite)
end

function SDL_qsort(base, nmemb, size, compare)
    ccall((:SDL_qsort, libsdl2), Cvoid, (Ptr{Cvoid}, Csize_t, Csize_t, Ptr{Cvoid}), base, nmemb, size, compare)
end

function SDL_bsearch(key, base, nmemb, size, compare)
    ccall((:SDL_bsearch, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t, Csize_t, Ptr{Cvoid}), key, base, nmemb, size, compare)
end

function SDL_abs(x)
    ccall((:SDL_abs, libsdl2), Cint, (Cint,), x)
end

function SDL_isalpha(x)
    ccall((:SDL_isalpha, libsdl2), Cint, (Cint,), x)
end

function SDL_isalnum(x)
    ccall((:SDL_isalnum, libsdl2), Cint, (Cint,), x)
end

function SDL_isblank(x)
    ccall((:SDL_isblank, libsdl2), Cint, (Cint,), x)
end

function SDL_iscntrl(x)
    ccall((:SDL_iscntrl, libsdl2), Cint, (Cint,), x)
end

function SDL_isdigit(x)
    ccall((:SDL_isdigit, libsdl2), Cint, (Cint,), x)
end

function SDL_isxdigit(x)
    ccall((:SDL_isxdigit, libsdl2), Cint, (Cint,), x)
end

function SDL_ispunct(x)
    ccall((:SDL_ispunct, libsdl2), Cint, (Cint,), x)
end

function SDL_isspace(x)
    ccall((:SDL_isspace, libsdl2), Cint, (Cint,), x)
end

function SDL_isupper(x)
    ccall((:SDL_isupper, libsdl2), Cint, (Cint,), x)
end

function SDL_islower(x)
    ccall((:SDL_islower, libsdl2), Cint, (Cint,), x)
end

function SDL_isprint(x)
    ccall((:SDL_isprint, libsdl2), Cint, (Cint,), x)
end

function SDL_isgraph(x)
    ccall((:SDL_isgraph, libsdl2), Cint, (Cint,), x)
end

function SDL_toupper(x)
    ccall((:SDL_toupper, libsdl2), Cint, (Cint,), x)
end

function SDL_tolower(x)
    ccall((:SDL_tolower, libsdl2), Cint, (Cint,), x)
end

function SDL_crc16(crc, data, len)
    ccall((:SDL_crc16, libsdl2), Uint16, (Uint16, Ptr{Cvoid}, Csize_t), crc, data, len)
end

function SDL_crc32(crc, data, len)
    ccall((:SDL_crc32, libsdl2), Uint32, (Uint32, Ptr{Cvoid}, Csize_t), crc, data, len)
end

function SDL_memset4(dst, val, dwords)
    ccall((:SDL_memset4, libsdl2), Cvoid, (Ptr{Cvoid}, Uint32, Csize_t), dst, val, dwords)
end

function SDL_memmove(dst, src, len)
    ccall((:SDL_memmove, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), dst, src, len)
end

function SDL_memcmp(s1, s2, len)
    ccall((:SDL_memcmp, libsdl2), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), s1, s2, len)
end

function SDL_wcslcpy(dst, src, maxlen)
    ccall((:SDL_wcslcpy, libsdl2), Csize_t, (Ptr{Cwchar_t}, Ptr{Cwchar_t}, Csize_t), dst, src, maxlen)
end

function SDL_wcslcat(dst, src, maxlen)
    ccall((:SDL_wcslcat, libsdl2), Csize_t, (Ptr{Cwchar_t}, Ptr{Cwchar_t}, Csize_t), dst, src, maxlen)
end

function SDL_wcsdup(wstr)
    ccall((:SDL_wcsdup, libsdl2), Ptr{Cwchar_t}, (Ptr{Cwchar_t},), wstr)
end

function SDL_wcsstr(haystack, needle)
    ccall((:SDL_wcsstr, libsdl2), Ptr{Cwchar_t}, (Ptr{Cwchar_t}, Ptr{Cwchar_t}), haystack, needle)
end

function SDL_wcscmp(str1, str2)
    ccall((:SDL_wcscmp, libsdl2), Cint, (Ptr{Cwchar_t}, Ptr{Cwchar_t}), str1, str2)
end

function SDL_wcsncmp(str1, str2, maxlen)
    ccall((:SDL_wcsncmp, libsdl2), Cint, (Ptr{Cwchar_t}, Ptr{Cwchar_t}, Csize_t), str1, str2, maxlen)
end

function SDL_wcscasecmp(str1, str2)
    ccall((:SDL_wcscasecmp, libsdl2), Cint, (Ptr{Cwchar_t}, Ptr{Cwchar_t}), str1, str2)
end

function SDL_wcsncasecmp(str1, str2, len)
    ccall((:SDL_wcsncasecmp, libsdl2), Cint, (Ptr{Cwchar_t}, Ptr{Cwchar_t}, Csize_t), str1, str2, len)
end

function SDL_strlcpy(dst, src, maxlen)
    ccall((:SDL_strlcpy, libsdl2), Csize_t, (Ptr{Cchar}, Ptr{Cchar}, Csize_t), dst, src, maxlen)
end

function SDL_utf8strlcpy(dst, src, dst_bytes)
    ccall((:SDL_utf8strlcpy, libsdl2), Csize_t, (Ptr{Cchar}, Ptr{Cchar}, Csize_t), dst, src, dst_bytes)
end

function SDL_strlcat(dst, src, maxlen)
    ccall((:SDL_strlcat, libsdl2), Csize_t, (Ptr{Cchar}, Ptr{Cchar}, Csize_t), dst, src, maxlen)
end

function SDL_strdup(str)
    ccall((:SDL_strdup, libsdl2), Ptr{Cchar}, (Ptr{Cchar},), str)
end

function SDL_strrev(str)
    ccall((:SDL_strrev, libsdl2), Ptr{Cchar}, (Ptr{Cchar},), str)
end

function SDL_strupr(str)
    ccall((:SDL_strupr, libsdl2), Ptr{Cchar}, (Ptr{Cchar},), str)
end

function SDL_strlwr(str)
    ccall((:SDL_strlwr, libsdl2), Ptr{Cchar}, (Ptr{Cchar},), str)
end

function SDL_strchr(str, c)
    ccall((:SDL_strchr, libsdl2), Ptr{Cchar}, (Ptr{Cchar}, Cint), str, c)
end

function SDL_strrchr(str, c)
    ccall((:SDL_strrchr, libsdl2), Ptr{Cchar}, (Ptr{Cchar}, Cint), str, c)
end

function SDL_strstr(haystack, needle)
    ccall((:SDL_strstr, libsdl2), Ptr{Cchar}, (Ptr{Cchar}, Ptr{Cchar}), haystack, needle)
end

function SDL_strtokr(s1, s2, saveptr)
    ccall((:SDL_strtokr, libsdl2), Ptr{Cchar}, (Ptr{Cchar}, Ptr{Cchar}, Ptr{Ptr{Cchar}}), s1, s2, saveptr)
end

function SDL_utf8strlen(str)
    ccall((:SDL_utf8strlen, libsdl2), Csize_t, (Ptr{Cchar},), str)
end

function SDL_utf8strnlen(str, bytes)
    ccall((:SDL_utf8strnlen, libsdl2), Csize_t, (Ptr{Cchar}, Csize_t), str, bytes)
end

function SDL_itoa(value, str, radix)
    ccall((:SDL_itoa, libsdl2), Ptr{Cchar}, (Cint, Ptr{Cchar}, Cint), value, str, radix)
end

function SDL_uitoa(value, str, radix)
    ccall((:SDL_uitoa, libsdl2), Ptr{Cchar}, (Cuint, Ptr{Cchar}, Cint), value, str, radix)
end

function SDL_ltoa(value, str, radix)
    ccall((:SDL_ltoa, libsdl2), Ptr{Cchar}, (Clong, Ptr{Cchar}, Cint), value, str, radix)
end

function SDL_ultoa(value, str, radix)
    ccall((:SDL_ultoa, libsdl2), Ptr{Cchar}, (Culong, Ptr{Cchar}, Cint), value, str, radix)
end

function SDL_lltoa(value, str, radix)
    ccall((:SDL_lltoa, libsdl2), Ptr{Cchar}, (Sint64, Ptr{Cchar}, Cint), value, str, radix)
end

function SDL_ulltoa(value, str, radix)
    ccall((:SDL_ulltoa, libsdl2), Ptr{Cchar}, (Uint64, Ptr{Cchar}, Cint), value, str, radix)
end

function SDL_atoi(str)
    ccall((:SDL_atoi, libsdl2), Cint, (Ptr{Cchar},), str)
end

function SDL_atof(str)
    ccall((:SDL_atof, libsdl2), Cdouble, (Ptr{Cchar},), str)
end

function SDL_strtol(str, endp, base)
    ccall((:SDL_strtol, libsdl2), Clong, (Ptr{Cchar}, Ptr{Ptr{Cchar}}, Cint), str, endp, base)
end

function SDL_strtoul(str, endp, base)
    ccall((:SDL_strtoul, libsdl2), Culong, (Ptr{Cchar}, Ptr{Ptr{Cchar}}, Cint), str, endp, base)
end

function SDL_strtoll(str, endp, base)
    ccall((:SDL_strtoll, libsdl2), Sint64, (Ptr{Cchar}, Ptr{Ptr{Cchar}}, Cint), str, endp, base)
end

function SDL_strtoull(str, endp, base)
    ccall((:SDL_strtoull, libsdl2), Uint64, (Ptr{Cchar}, Ptr{Ptr{Cchar}}, Cint), str, endp, base)
end

function SDL_strtod(str, endp)
    ccall((:SDL_strtod, libsdl2), Cdouble, (Ptr{Cchar}, Ptr{Ptr{Cchar}}), str, endp)
end

function SDL_strcmp(str1, str2)
    ccall((:SDL_strcmp, libsdl2), Cint, (Ptr{Cchar}, Ptr{Cchar}), str1, str2)
end

function SDL_strncmp(str1, str2, maxlen)
    ccall((:SDL_strncmp, libsdl2), Cint, (Ptr{Cchar}, Ptr{Cchar}, Csize_t), str1, str2, maxlen)
end

function SDL_strcasecmp(str1, str2)
    ccall((:SDL_strcasecmp, libsdl2), Cint, (Ptr{Cchar}, Ptr{Cchar}), str1, str2)
end

function SDL_strncasecmp(str1, str2, len)
    ccall((:SDL_strncasecmp, libsdl2), Cint, (Ptr{Cchar}, Ptr{Cchar}, Csize_t), str1, str2, len)
end

function SDL_acos(x)
    ccall((:SDL_acos, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_acosf(x)
    ccall((:SDL_acosf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_asin(x)
    ccall((:SDL_asin, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_asinf(x)
    ccall((:SDL_asinf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_atan(x)
    ccall((:SDL_atan, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_atanf(x)
    ccall((:SDL_atanf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_atan2(y, x)
    ccall((:SDL_atan2, libsdl2), Cdouble, (Cdouble, Cdouble), y, x)
end

function SDL_atan2f(y, x)
    ccall((:SDL_atan2f, libsdl2), Cfloat, (Cfloat, Cfloat), y, x)
end

function SDL_ceil(x)
    ccall((:SDL_ceil, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_ceilf(x)
    ccall((:SDL_ceilf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_copysign(x, y)
    ccall((:SDL_copysign, libsdl2), Cdouble, (Cdouble, Cdouble), x, y)
end

function SDL_copysignf(x, y)
    ccall((:SDL_copysignf, libsdl2), Cfloat, (Cfloat, Cfloat), x, y)
end

function SDL_cos(x)
    ccall((:SDL_cos, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_cosf(x)
    ccall((:SDL_cosf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_exp(x)
    ccall((:SDL_exp, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_expf(x)
    ccall((:SDL_expf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_fabs(x)
    ccall((:SDL_fabs, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_fabsf(x)
    ccall((:SDL_fabsf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_floor(x)
    ccall((:SDL_floor, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_floorf(x)
    ccall((:SDL_floorf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_trunc(x)
    ccall((:SDL_trunc, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_truncf(x)
    ccall((:SDL_truncf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_fmod(x, y)
    ccall((:SDL_fmod, libsdl2), Cdouble, (Cdouble, Cdouble), x, y)
end

function SDL_fmodf(x, y)
    ccall((:SDL_fmodf, libsdl2), Cfloat, (Cfloat, Cfloat), x, y)
end

function SDL_log(x)
    ccall((:SDL_log, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_logf(x)
    ccall((:SDL_logf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_log10(x)
    ccall((:SDL_log10, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_log10f(x)
    ccall((:SDL_log10f, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_pow(x, y)
    ccall((:SDL_pow, libsdl2), Cdouble, (Cdouble, Cdouble), x, y)
end

function SDL_powf(x, y)
    ccall((:SDL_powf, libsdl2), Cfloat, (Cfloat, Cfloat), x, y)
end

function SDL_round(x)
    ccall((:SDL_round, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_roundf(x)
    ccall((:SDL_roundf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_lround(x)
    ccall((:SDL_lround, libsdl2), Clong, (Cdouble,), x)
end

function SDL_lroundf(x)
    ccall((:SDL_lroundf, libsdl2), Clong, (Cfloat,), x)
end

function SDL_scalbn(x, n)
    ccall((:SDL_scalbn, libsdl2), Cdouble, (Cdouble, Cint), x, n)
end

function SDL_scalbnf(x, n)
    ccall((:SDL_scalbnf, libsdl2), Cfloat, (Cfloat, Cint), x, n)
end

function SDL_sin(x)
    ccall((:SDL_sin, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_sinf(x)
    ccall((:SDL_sinf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_sqrt(x)
    ccall((:SDL_sqrt, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_sqrtf(x)
    ccall((:SDL_sqrtf, libsdl2), Cfloat, (Cfloat,), x)
end

function SDL_tan(x)
    ccall((:SDL_tan, libsdl2), Cdouble, (Cdouble,), x)
end

function SDL_tanf(x)
    ccall((:SDL_tanf, libsdl2), Cfloat, (Cfloat,), x)
end

mutable struct _SDL_iconv_t end

const SDL_iconv_t = Ptr{_SDL_iconv_t}

function SDL_iconv_open(tocode, fromcode)
    ccall((:SDL_iconv_open, libsdl2), SDL_iconv_t, (Ptr{Cchar}, Ptr{Cchar}), tocode, fromcode)
end

function SDL_iconv_close(cd)
    ccall((:SDL_iconv_close, libsdl2), Cint, (SDL_iconv_t,), cd)
end

function SDL_iconv(cd, inbuf, inbytesleft, outbuf, outbytesleft)
    ccall((:SDL_iconv, libsdl2), Csize_t, (SDL_iconv_t, Ptr{Ptr{Cchar}}, Ptr{Csize_t}, Ptr{Ptr{Cchar}}, Ptr{Csize_t}), cd, inbuf, inbytesleft, outbuf, outbytesleft)
end

function SDL_memcpy4(dst, src, dwords)
    ccall((:SDL_memcpy4, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), dst, src, dwords)
end

# typedef int ( * SDL_main_func ) ( int argc , char * argv [ ] )
const SDL_main_func = Ptr{Cvoid}

function SDL_main(argc, argv)
    ccall((:SDL_main, libsdl2), Cint, (Cint, Ptr{Ptr{Cchar}}), argc, argv)
end

function SDL_SetMainReady()
    ccall((:SDL_SetMainReady, libsdl2), Cvoid, ())
end

# typedef SDL_AssertState ( SDLCALL * SDL_AssertionHandler ) ( const SDL_AssertData * data , void * userdata )
const SDL_AssertionHandler = Ptr{Cvoid}

function SDL_SetAssertionHandler(handler, userdata)
    ccall((:SDL_SetAssertionHandler, libsdl2), Cvoid, (SDL_AssertionHandler, Ptr{Cvoid}), handler, userdata)
end

function SDL_GetDefaultAssertionHandler()
    ccall((:SDL_GetDefaultAssertionHandler, libsdl2), SDL_AssertionHandler, ())
end

function SDL_GetAssertionHandler(puserdata)
    ccall((:SDL_GetAssertionHandler, libsdl2), SDL_AssertionHandler, (Ptr{Ptr{Cvoid}},), puserdata)
end

function SDL_GetAssertionReport()
    ccall((:SDL_GetAssertionReport, libsdl2), Ptr{SDL_AssertData}, ())
end

function SDL_ResetAssertionReport()
    ccall((:SDL_ResetAssertionReport, libsdl2), Cvoid, ())
end

const SDL_SpinLock = Cint

function SDL_AtomicTryLock(lock)
    ccall((:SDL_AtomicTryLock, libsdl2), SDL_bool, (Ptr{SDL_SpinLock},), lock)
end

function SDL_AtomicLock(lock)
    ccall((:SDL_AtomicLock, libsdl2), Cvoid, (Ptr{SDL_SpinLock},), lock)
end

function SDL_AtomicUnlock(lock)
    ccall((:SDL_AtomicUnlock, libsdl2), Cvoid, (Ptr{SDL_SpinLock},), lock)
end

function SDL_MemoryBarrierReleaseFunction()
    ccall((:SDL_MemoryBarrierReleaseFunction, libsdl2), Cvoid, ())
end

function SDL_MemoryBarrierAcquireFunction()
    ccall((:SDL_MemoryBarrierAcquireFunction, libsdl2), Cvoid, ())
end

function SDL_AtomicCAS(a, oldval, newval)
    ccall((:SDL_AtomicCAS, libsdl2), SDL_bool, (Ptr{SDL_atomic_t}, Cint, Cint), a, oldval, newval)
end

function SDL_AtomicSet(a, v)
    ccall((:SDL_AtomicSet, libsdl2), Cint, (Ptr{SDL_atomic_t}, Cint), a, v)
end

function SDL_AtomicGet(a)
    ccall((:SDL_AtomicGet, libsdl2), Cint, (Ptr{SDL_atomic_t},), a)
end

function SDL_AtomicCASPtr(a, oldval, newval)
    ccall((:SDL_AtomicCASPtr, libsdl2), SDL_bool, (Ptr{Ptr{Cvoid}}, Ptr{Cvoid}, Ptr{Cvoid}), a, oldval, newval)
end

function SDL_AtomicSetPtr(a, v)
    ccall((:SDL_AtomicSetPtr, libsdl2), Ptr{Cvoid}, (Ptr{Ptr{Cvoid}}, Ptr{Cvoid}), a, v)
end

function SDL_AtomicGetPtr(a)
    ccall((:SDL_AtomicGetPtr, libsdl2), Ptr{Cvoid}, (Ptr{Ptr{Cvoid}},), a)
end

function SDL_GetError()
    ccall((:SDL_GetError, libsdl2), Ptr{Cchar}, ())
end

function SDL_GetErrorMsg(errstr, maxlen)
    ccall((:SDL_GetErrorMsg, libsdl2), Ptr{Cchar}, (Ptr{Cchar}, Cint), errstr, maxlen)
end

function SDL_ClearError()
    ccall((:SDL_ClearError, libsdl2), Cvoid, ())
end

function SDL_CreateMutex()
    ccall((:SDL_CreateMutex, libsdl2), Ptr{SDL_mutex}, ())
end

function SDL_TryLockMutex(mutex)
    ccall((:SDL_TryLockMutex, libsdl2), Cint, (Ptr{SDL_mutex},), mutex)
end

function SDL_DestroyMutex(mutex)
    ccall((:SDL_DestroyMutex, libsdl2), Cvoid, (Ptr{SDL_mutex},), mutex)
end

mutable struct SDL_semaphore end

const SDL_sem = SDL_semaphore

function SDL_CreateSemaphore(initial_value)
    ccall((:SDL_CreateSemaphore, libsdl2), Ptr{SDL_sem}, (Uint32,), initial_value)
end

function SDL_DestroySemaphore(sem)
    ccall((:SDL_DestroySemaphore, libsdl2), Cvoid, (Ptr{SDL_sem},), sem)
end

function SDL_SemWait(sem)
    ccall((:SDL_SemWait, libsdl2), Cint, (Ptr{SDL_sem},), sem)
end

function SDL_SemTryWait(sem)
    ccall((:SDL_SemTryWait, libsdl2), Cint, (Ptr{SDL_sem},), sem)
end

function SDL_SemWaitTimeout(sem, ms)
    ccall((:SDL_SemWaitTimeout, libsdl2), Cint, (Ptr{SDL_sem}, Uint32), sem, ms)
end

function SDL_SemPost(sem)
    ccall((:SDL_SemPost, libsdl2), Cint, (Ptr{SDL_sem},), sem)
end

function SDL_SemValue(sem)
    ccall((:SDL_SemValue, libsdl2), Uint32, (Ptr{SDL_sem},), sem)
end

mutable struct SDL_cond end

function SDL_CreateCond()
    ccall((:SDL_CreateCond, libsdl2), Ptr{SDL_cond}, ())
end

function SDL_DestroyCond(cond)
    ccall((:SDL_DestroyCond, libsdl2), Cvoid, (Ptr{SDL_cond},), cond)
end

function SDL_CondSignal(cond)
    ccall((:SDL_CondSignal, libsdl2), Cint, (Ptr{SDL_cond},), cond)
end

function SDL_CondBroadcast(cond)
    ccall((:SDL_CondBroadcast, libsdl2), Cint, (Ptr{SDL_cond},), cond)
end

function SDL_CondWait(cond, mutex)
    ccall((:SDL_CondWait, libsdl2), Cint, (Ptr{SDL_cond}, Ptr{SDL_mutex}), cond, mutex)
end

function SDL_CondWaitTimeout(cond, mutex, ms)
    ccall((:SDL_CondWaitTimeout, libsdl2), Cint, (Ptr{SDL_cond}, Ptr{SDL_mutex}, Uint32), cond, mutex, ms)
end

mutable struct SDL_Thread end

const SDL_threadID = Culong

const SDL_TLSID = Cuint

@cenum SDL_ThreadPriority::UInt32 begin
    SDL_THREAD_PRIORITY_LOW = 0
    SDL_THREAD_PRIORITY_NORMAL = 1
    SDL_THREAD_PRIORITY_HIGH = 2
    SDL_THREAD_PRIORITY_TIME_CRITICAL = 3
end

# typedef int ( SDLCALL * SDL_ThreadFunction ) ( void * data )
const SDL_ThreadFunction = Ptr{Cvoid}

function SDL_CreateThread(fn, name, data)
    ccall((:SDL_CreateThread, libsdl2), Ptr{SDL_Thread}, (SDL_ThreadFunction, Ptr{Cchar}, Ptr{Cvoid}), fn, name, data)
end

function SDL_CreateThreadWithStackSize(fn, name, stacksize, data)
    ccall((:SDL_CreateThreadWithStackSize, libsdl2), Ptr{SDL_Thread}, (SDL_ThreadFunction, Ptr{Cchar}, Csize_t, Ptr{Cvoid}), fn, name, stacksize, data)
end

function SDL_GetThreadName(thread)
    ccall((:SDL_GetThreadName, libsdl2), Ptr{Cchar}, (Ptr{SDL_Thread},), thread)
end

function SDL_ThreadID()
    ccall((:SDL_ThreadID, libsdl2), SDL_threadID, ())
end

function SDL_GetThreadID(thread)
    ccall((:SDL_GetThreadID, libsdl2), SDL_threadID, (Ptr{SDL_Thread},), thread)
end

function SDL_SetThreadPriority(priority)
    ccall((:SDL_SetThreadPriority, libsdl2), Cint, (SDL_ThreadPriority,), priority)
end

function SDL_WaitThread(thread, status)
    ccall((:SDL_WaitThread, libsdl2), Cvoid, (Ptr{SDL_Thread}, Ptr{Cint}), thread, status)
end

function SDL_DetachThread(thread)
    ccall((:SDL_DetachThread, libsdl2), Cvoid, (Ptr{SDL_Thread},), thread)
end

function SDL_TLSCreate()
    ccall((:SDL_TLSCreate, libsdl2), SDL_TLSID, ())
end

function SDL_TLSGet(id)
    ccall((:SDL_TLSGet, libsdl2), Ptr{Cvoid}, (SDL_TLSID,), id)
end

function SDL_TLSSet(id, value, destructor)
    ccall((:SDL_TLSSet, libsdl2), Cint, (SDL_TLSID, Ptr{Cvoid}, Ptr{Cvoid}), id, value, destructor)
end

function SDL_TLSCleanup()
    ccall((:SDL_TLSCleanup, libsdl2), Cvoid, ())
end

function SDL_RWFromFP(fp, autoclose)
    ccall((:SDL_RWFromFP, libsdl2), Ptr{SDL_RWops}, (Ptr{Libc.FILE}, SDL_bool), fp, autoclose)
end

function SDL_RWFromMem(mem, size)
    ccall((:SDL_RWFromMem, libsdl2), Ptr{SDL_RWops}, (Ptr{Cvoid}, Cint), mem, size)
end

function SDL_RWFromConstMem(mem, size)
    ccall((:SDL_RWFromConstMem, libsdl2), Ptr{SDL_RWops}, (Ptr{Cvoid}, Cint), mem, size)
end

function SDL_AllocRW()
    ccall((:SDL_AllocRW, libsdl2), Ptr{SDL_RWops}, ())
end

function SDL_FreeRW(area)
    ccall((:SDL_FreeRW, libsdl2), Cvoid, (Ptr{SDL_RWops},), area)
end

function SDL_RWsize(context)
    ccall((:SDL_RWsize, libsdl2), Sint64, (Ptr{SDL_RWops},), context)
end

function SDL_RWseek(context, offset, whence)
    ccall((:SDL_RWseek, libsdl2), Sint64, (Ptr{SDL_RWops}, Sint64, Cint), context, offset, whence)
end

function SDL_RWtell(context)
    ccall((:SDL_RWtell, libsdl2), Sint64, (Ptr{SDL_RWops},), context)
end

function SDL_RWread(context, ptr, size, maxnum)
    ccall((:SDL_RWread, libsdl2), Csize_t, (Ptr{SDL_RWops}, Ptr{Cvoid}, Csize_t, Csize_t), context, ptr, size, maxnum)
end

function SDL_RWwrite(context, ptr, size, num)
    ccall((:SDL_RWwrite, libsdl2), Csize_t, (Ptr{SDL_RWops}, Ptr{Cvoid}, Csize_t, Csize_t), context, ptr, size, num)
end

function SDL_RWclose(context)
    ccall((:SDL_RWclose, libsdl2), Cint, (Ptr{SDL_RWops},), context)
end

function SDL_LoadFile_RW(src, datasize, freesrc)
    ccall((:SDL_LoadFile_RW, libsdl2), Ptr{Cvoid}, (Ptr{SDL_RWops}, Ptr{Csize_t}, Cint), src, datasize, freesrc)
end

function SDL_LoadFile(file, datasize)
    ccall((:SDL_LoadFile, libsdl2), Ptr{Cvoid}, (Ptr{Cchar}, Ptr{Csize_t}), file, datasize)
end

function SDL_ReadU8(src)
    ccall((:SDL_ReadU8, libsdl2), Uint8, (Ptr{SDL_RWops},), src)
end

function SDL_ReadLE16(src)
    ccall((:SDL_ReadLE16, libsdl2), Uint16, (Ptr{SDL_RWops},), src)
end

function SDL_ReadBE16(src)
    ccall((:SDL_ReadBE16, libsdl2), Uint16, (Ptr{SDL_RWops},), src)
end

function SDL_ReadLE32(src)
    ccall((:SDL_ReadLE32, libsdl2), Uint32, (Ptr{SDL_RWops},), src)
end

function SDL_ReadBE32(src)
    ccall((:SDL_ReadBE32, libsdl2), Uint32, (Ptr{SDL_RWops},), src)
end

function SDL_ReadLE64(src)
    ccall((:SDL_ReadLE64, libsdl2), Uint64, (Ptr{SDL_RWops},), src)
end

function SDL_ReadBE64(src)
    ccall((:SDL_ReadBE64, libsdl2), Uint64, (Ptr{SDL_RWops},), src)
end

function SDL_WriteU8(dst, value)
    ccall((:SDL_WriteU8, libsdl2), Csize_t, (Ptr{SDL_RWops}, Uint8), dst, value)
end

function SDL_WriteLE16(dst, value)
    ccall((:SDL_WriteLE16, libsdl2), Csize_t, (Ptr{SDL_RWops}, Uint16), dst, value)
end

function SDL_WriteBE16(dst, value)
    ccall((:SDL_WriteBE16, libsdl2), Csize_t, (Ptr{SDL_RWops}, Uint16), dst, value)
end

function SDL_WriteLE32(dst, value)
    ccall((:SDL_WriteLE32, libsdl2), Csize_t, (Ptr{SDL_RWops}, Uint32), dst, value)
end

function SDL_WriteBE32(dst, value)
    ccall((:SDL_WriteBE32, libsdl2), Csize_t, (Ptr{SDL_RWops}, Uint32), dst, value)
end

function SDL_WriteLE64(dst, value)
    ccall((:SDL_WriteLE64, libsdl2), Csize_t, (Ptr{SDL_RWops}, Uint64), dst, value)
end

function SDL_WriteBE64(dst, value)
    ccall((:SDL_WriteBE64, libsdl2), Csize_t, (Ptr{SDL_RWops}, Uint64), dst, value)
end

# typedef void ( SDLCALL * SDL_AudioFilter ) ( struct SDL_AudioCVT * cvt , SDL_AudioFormat format )
const SDL_AudioFilter = Ptr{Cvoid}

struct SDL_AudioCVT
    data::NTuple{128, UInt8}
end

function Base.getproperty(x::Ptr{SDL_AudioCVT}, f::Symbol)
    f === :needed && return Ptr{Cint}(x + 0)
    f === :src_format && return Ptr{SDL_AudioFormat}(x + 4)
    f === :dst_format && return Ptr{SDL_AudioFormat}(x + 6)
    f === :rate_incr && return Ptr{Cdouble}(x + 8)
    f === :buf && return Ptr{Ptr{Uint8}}(x + 16)
    f === :len && return Ptr{Cint}(x + 24)
    f === :len_cvt && return Ptr{Cint}(x + 28)
    f === :len_mult && return Ptr{Cint}(x + 32)
    f === :len_ratio && return Ptr{Cdouble}(x + 36)
    f === :filters && return Ptr{NTuple{10, SDL_AudioFilter}}(x + 44)
    f === :filter_index && return Ptr{Cint}(x + 124)
    return getfield(x, f)
end

function Base.getproperty(x::SDL_AudioCVT, f::Symbol)
    r = Ref{SDL_AudioCVT}(x)
    ptr = Base.unsafe_convert(Ptr{SDL_AudioCVT}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{SDL_AudioCVT}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

function SDL_GetNumAudioDrivers()
    ccall((:SDL_GetNumAudioDrivers, libsdl2), Cint, ())
end

function SDL_GetAudioDriver(index)
    ccall((:SDL_GetAudioDriver, libsdl2), Ptr{Cchar}, (Cint,), index)
end

function SDL_AudioInit(driver_name)
    ccall((:SDL_AudioInit, libsdl2), Cint, (Ptr{Cchar},), driver_name)
end

function SDL_AudioQuit()
    ccall((:SDL_AudioQuit, libsdl2), Cvoid, ())
end

function SDL_GetCurrentAudioDriver()
    ccall((:SDL_GetCurrentAudioDriver, libsdl2), Ptr{Cchar}, ())
end

function SDL_OpenAudio(desired, obtained)
    ccall((:SDL_OpenAudio, libsdl2), Cint, (Ptr{SDL_AudioSpec}, Ptr{SDL_AudioSpec}), desired, obtained)
end

const SDL_AudioDeviceID = Uint32

function SDL_GetNumAudioDevices(iscapture)
    ccall((:SDL_GetNumAudioDevices, libsdl2), Cint, (Cint,), iscapture)
end

function SDL_GetAudioDeviceName(index, iscapture)
    ccall((:SDL_GetAudioDeviceName, libsdl2), Ptr{Cchar}, (Cint, Cint), index, iscapture)
end

function SDL_GetAudioDeviceSpec(index, iscapture, spec)
    ccall((:SDL_GetAudioDeviceSpec, libsdl2), Cint, (Cint, Cint, Ptr{SDL_AudioSpec}), index, iscapture, spec)
end

function SDL_GetDefaultAudioInfo(name, spec, iscapture)
    ccall((:SDL_GetDefaultAudioInfo, libsdl2), Cint, (Ptr{Ptr{Cchar}}, Ptr{SDL_AudioSpec}, Cint), name, spec, iscapture)
end

function SDL_OpenAudioDevice(device, iscapture, desired, obtained, allowed_changes)
    ccall((:SDL_OpenAudioDevice, libsdl2), SDL_AudioDeviceID, (Ptr{Cchar}, Cint, Ptr{SDL_AudioSpec}, Ptr{SDL_AudioSpec}, Cint), device, iscapture, desired, obtained, allowed_changes)
end

@cenum SDL_AudioStatus::UInt32 begin
    SDL_AUDIO_STOPPED = 0
    SDL_AUDIO_PLAYING = 1
    SDL_AUDIO_PAUSED = 2
end

function SDL_GetAudioStatus()
    ccall((:SDL_GetAudioStatus, libsdl2), SDL_AudioStatus, ())
end

function SDL_GetAudioDeviceStatus(dev)
    ccall((:SDL_GetAudioDeviceStatus, libsdl2), SDL_AudioStatus, (SDL_AudioDeviceID,), dev)
end

function SDL_PauseAudio(pause_on)
    ccall((:SDL_PauseAudio, libsdl2), Cvoid, (Cint,), pause_on)
end

function SDL_PauseAudioDevice(dev, pause_on)
    ccall((:SDL_PauseAudioDevice, libsdl2), Cvoid, (SDL_AudioDeviceID, Cint), dev, pause_on)
end

function SDL_FreeWAV(audio_buf)
    ccall((:SDL_FreeWAV, libsdl2), Cvoid, (Ptr{Uint8},), audio_buf)
end

function SDL_BuildAudioCVT(cvt, src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate)
    ccall((:SDL_BuildAudioCVT, libsdl2), Cint, (Ptr{SDL_AudioCVT}, SDL_AudioFormat, Uint8, Cint, SDL_AudioFormat, Uint8, Cint), cvt, src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate)
end

function SDL_ConvertAudio(cvt)
    ccall((:SDL_ConvertAudio, libsdl2), Cint, (Ptr{SDL_AudioCVT},), cvt)
end

mutable struct _SDL_AudioStream end

const SDL_AudioStream = _SDL_AudioStream

function SDL_NewAudioStream(src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate)
    ccall((:SDL_NewAudioStream, libsdl2), Ptr{SDL_AudioStream}, (SDL_AudioFormat, Uint8, Cint, SDL_AudioFormat, Uint8, Cint), src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate)
end

function SDL_AudioStreamPut(stream, buf, len)
    ccall((:SDL_AudioStreamPut, libsdl2), Cint, (Ptr{SDL_AudioStream}, Ptr{Cvoid}, Cint), stream, buf, len)
end

function SDL_AudioStreamGet(stream, buf, len)
    ccall((:SDL_AudioStreamGet, libsdl2), Cint, (Ptr{SDL_AudioStream}, Ptr{Cvoid}, Cint), stream, buf, len)
end

function SDL_AudioStreamAvailable(stream)
    ccall((:SDL_AudioStreamAvailable, libsdl2), Cint, (Ptr{SDL_AudioStream},), stream)
end

function SDL_AudioStreamFlush(stream)
    ccall((:SDL_AudioStreamFlush, libsdl2), Cint, (Ptr{SDL_AudioStream},), stream)
end

function SDL_AudioStreamClear(stream)
    ccall((:SDL_AudioStreamClear, libsdl2), Cvoid, (Ptr{SDL_AudioStream},), stream)
end

function SDL_FreeAudioStream(stream)
    ccall((:SDL_FreeAudioStream, libsdl2), Cvoid, (Ptr{SDL_AudioStream},), stream)
end

function SDL_MixAudio(dst, src, len, volume)
    ccall((:SDL_MixAudio, libsdl2), Cvoid, (Ptr{Uint8}, Ptr{Uint8}, Uint32, Cint), dst, src, len, volume)
end

function SDL_MixAudioFormat(dst, src, format, len, volume)
    ccall((:SDL_MixAudioFormat, libsdl2), Cvoid, (Ptr{Uint8}, Ptr{Uint8}, SDL_AudioFormat, Uint32, Cint), dst, src, format, len, volume)
end

function SDL_QueueAudio(dev, data, len)
    ccall((:SDL_QueueAudio, libsdl2), Cint, (SDL_AudioDeviceID, Ptr{Cvoid}, Uint32), dev, data, len)
end

function SDL_DequeueAudio(dev, data, len)
    ccall((:SDL_DequeueAudio, libsdl2), Uint32, (SDL_AudioDeviceID, Ptr{Cvoid}, Uint32), dev, data, len)
end

function SDL_GetQueuedAudioSize(dev)
    ccall((:SDL_GetQueuedAudioSize, libsdl2), Uint32, (SDL_AudioDeviceID,), dev)
end

function SDL_ClearQueuedAudio(dev)
    ccall((:SDL_ClearQueuedAudio, libsdl2), Cvoid, (SDL_AudioDeviceID,), dev)
end

function SDL_LockAudio()
    ccall((:SDL_LockAudio, libsdl2), Cvoid, ())
end

function SDL_LockAudioDevice(dev)
    ccall((:SDL_LockAudioDevice, libsdl2), Cvoid, (SDL_AudioDeviceID,), dev)
end

function SDL_UnlockAudio()
    ccall((:SDL_UnlockAudio, libsdl2), Cvoid, ())
end

function SDL_UnlockAudioDevice(dev)
    ccall((:SDL_UnlockAudioDevice, libsdl2), Cvoid, (SDL_AudioDeviceID,), dev)
end

function SDL_CloseAudio()
    ccall((:SDL_CloseAudio, libsdl2), Cvoid, ())
end

function SDL_CloseAudioDevice(dev)
    ccall((:SDL_CloseAudioDevice, libsdl2), Cvoid, (SDL_AudioDeviceID,), dev)
end

function SDL_SetClipboardText(text)
    ccall((:SDL_SetClipboardText, libsdl2), Cint, (Ptr{Cchar},), text)
end

function SDL_GetClipboardText()
    ccall((:SDL_GetClipboardText, libsdl2), Ptr{Cchar}, ())
end

function SDL_HasClipboardText()
    ccall((:SDL_HasClipboardText, libsdl2), SDL_bool, ())
end

function SDL_GetCPUCount()
    ccall((:SDL_GetCPUCount, libsdl2), Cint, ())
end

function SDL_GetCPUCacheLineSize()
    ccall((:SDL_GetCPUCacheLineSize, libsdl2), Cint, ())
end

function SDL_HasRDTSC()
    ccall((:SDL_HasRDTSC, libsdl2), SDL_bool, ())
end

function SDL_HasAltiVec()
    ccall((:SDL_HasAltiVec, libsdl2), SDL_bool, ())
end

function SDL_HasMMX()
    ccall((:SDL_HasMMX, libsdl2), SDL_bool, ())
end

function SDL_Has3DNow()
    ccall((:SDL_Has3DNow, libsdl2), SDL_bool, ())
end

function SDL_HasSSE()
    ccall((:SDL_HasSSE, libsdl2), SDL_bool, ())
end

function SDL_HasSSE2()
    ccall((:SDL_HasSSE2, libsdl2), SDL_bool, ())
end

function SDL_HasSSE3()
    ccall((:SDL_HasSSE3, libsdl2), SDL_bool, ())
end

function SDL_HasSSE41()
    ccall((:SDL_HasSSE41, libsdl2), SDL_bool, ())
end

function SDL_HasSSE42()
    ccall((:SDL_HasSSE42, libsdl2), SDL_bool, ())
end

function SDL_HasAVX()
    ccall((:SDL_HasAVX, libsdl2), SDL_bool, ())
end

function SDL_HasAVX2()
    ccall((:SDL_HasAVX2, libsdl2), SDL_bool, ())
end

function SDL_HasAVX512F()
    ccall((:SDL_HasAVX512F, libsdl2), SDL_bool, ())
end

function SDL_HasARMSIMD()
    ccall((:SDL_HasARMSIMD, libsdl2), SDL_bool, ())
end

function SDL_HasNEON()
    ccall((:SDL_HasNEON, libsdl2), SDL_bool, ())
end

function SDL_HasLSX()
    ccall((:SDL_HasLSX, libsdl2), SDL_bool, ())
end

function SDL_HasLASX()
    ccall((:SDL_HasLASX, libsdl2), SDL_bool, ())
end

function SDL_GetSystemRAM()
    ccall((:SDL_GetSystemRAM, libsdl2), Cint, ())
end

function SDL_SIMDGetAlignment()
    ccall((:SDL_SIMDGetAlignment, libsdl2), Csize_t, ())
end

function SDL_SIMDAlloc(len)
    ccall((:SDL_SIMDAlloc, libsdl2), Ptr{Cvoid}, (Csize_t,), len)
end

function SDL_SIMDRealloc(mem, len)
    ccall((:SDL_SIMDRealloc, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Csize_t), mem, len)
end

function SDL_SIMDFree(ptr)
    ccall((:SDL_SIMDFree, libsdl2), Cvoid, (Ptr{Cvoid},), ptr)
end

@cenum SDL_PixelType::UInt32 begin
    SDL_PIXELTYPE_UNKNOWN = 0
    SDL_PIXELTYPE_INDEX1 = 1
    SDL_PIXELTYPE_INDEX4 = 2
    SDL_PIXELTYPE_INDEX8 = 3
    SDL_PIXELTYPE_PACKED8 = 4
    SDL_PIXELTYPE_PACKED16 = 5
    SDL_PIXELTYPE_PACKED32 = 6
    SDL_PIXELTYPE_ARRAYU8 = 7
    SDL_PIXELTYPE_ARRAYU16 = 8
    SDL_PIXELTYPE_ARRAYU32 = 9
    SDL_PIXELTYPE_ARRAYF16 = 10
    SDL_PIXELTYPE_ARRAYF32 = 11
end

@cenum SDL_BitmapOrder::UInt32 begin
    SDL_BITMAPORDER_NONE = 0
    SDL_BITMAPORDER_4321 = 1
    SDL_BITMAPORDER_1234 = 2
end

@cenum SDL_PackedOrder::UInt32 begin
    SDL_PACKEDORDER_NONE = 0
    SDL_PACKEDORDER_XRGB = 1
    SDL_PACKEDORDER_RGBX = 2
    SDL_PACKEDORDER_ARGB = 3
    SDL_PACKEDORDER_RGBA = 4
    SDL_PACKEDORDER_XBGR = 5
    SDL_PACKEDORDER_BGRX = 6
    SDL_PACKEDORDER_ABGR = 7
    SDL_PACKEDORDER_BGRA = 8
end

@cenum SDL_ArrayOrder::UInt32 begin
    SDL_ARRAYORDER_NONE = 0
    SDL_ARRAYORDER_RGB = 1
    SDL_ARRAYORDER_RGBA = 2
    SDL_ARRAYORDER_ARGB = 3
    SDL_ARRAYORDER_BGR = 4
    SDL_ARRAYORDER_BGRA = 5
    SDL_ARRAYORDER_ABGR = 6
end

@cenum SDL_PackedLayout::UInt32 begin
    SDL_PACKEDLAYOUT_NONE = 0
    SDL_PACKEDLAYOUT_332 = 1
    SDL_PACKEDLAYOUT_4444 = 2
    SDL_PACKEDLAYOUT_1555 = 3
    SDL_PACKEDLAYOUT_5551 = 4
    SDL_PACKEDLAYOUT_565 = 5
    SDL_PACKEDLAYOUT_8888 = 6
    SDL_PACKEDLAYOUT_2101010 = 7
    SDL_PACKEDLAYOUT_1010102 = 8
end

@cenum SDL_PixelFormatEnum::UInt32 begin
    SDL_PIXELFORMAT_UNKNOWN = 0
    SDL_PIXELFORMAT_INDEX1LSB = 286261504
    SDL_PIXELFORMAT_INDEX1MSB = 287310080
    SDL_PIXELFORMAT_INDEX4LSB = 303039488
    SDL_PIXELFORMAT_INDEX4MSB = 304088064
    SDL_PIXELFORMAT_INDEX8 = 318769153
    SDL_PIXELFORMAT_RGB332 = 336660481
    SDL_PIXELFORMAT_XRGB4444 = 353504258
    SDL_PIXELFORMAT_RGB444 = 353504258
    SDL_PIXELFORMAT_XBGR4444 = 357698562
    SDL_PIXELFORMAT_BGR444 = 357698562
    SDL_PIXELFORMAT_XRGB1555 = 353570562
    SDL_PIXELFORMAT_RGB555 = 353570562
    SDL_PIXELFORMAT_XBGR1555 = 357764866
    SDL_PIXELFORMAT_BGR555 = 357764866
    SDL_PIXELFORMAT_ARGB4444 = 355602434
    SDL_PIXELFORMAT_RGBA4444 = 356651010
    SDL_PIXELFORMAT_ABGR4444 = 359796738
    SDL_PIXELFORMAT_BGRA4444 = 360845314
    SDL_PIXELFORMAT_ARGB1555 = 355667970
    SDL_PIXELFORMAT_RGBA5551 = 356782082
    SDL_PIXELFORMAT_ABGR1555 = 359862274
    SDL_PIXELFORMAT_BGRA5551 = 360976386
    SDL_PIXELFORMAT_RGB565 = 353701890
    SDL_PIXELFORMAT_BGR565 = 357896194
    SDL_PIXELFORMAT_RGB24 = 386930691
    SDL_PIXELFORMAT_BGR24 = 390076419
    SDL_PIXELFORMAT_XRGB8888 = 370546692
    SDL_PIXELFORMAT_RGB888 = 370546692
    SDL_PIXELFORMAT_RGBX8888 = 371595268
    SDL_PIXELFORMAT_XBGR8888 = 374740996
    SDL_PIXELFORMAT_BGR888 = 374740996
    SDL_PIXELFORMAT_BGRX8888 = 375789572
    SDL_PIXELFORMAT_ARGB8888 = 372645892
    SDL_PIXELFORMAT_RGBA8888 = 373694468
    SDL_PIXELFORMAT_ABGR8888 = 376840196
    SDL_PIXELFORMAT_BGRA8888 = 377888772
    SDL_PIXELFORMAT_ARGB2101010 = 372711428
    SDL_PIXELFORMAT_RGBA32 = 376840196
    SDL_PIXELFORMAT_ARGB32 = 377888772
    SDL_PIXELFORMAT_BGRA32 = 372645892
    SDL_PIXELFORMAT_ABGR32 = 373694468
    SDL_PIXELFORMAT_YV12 = 842094169
    SDL_PIXELFORMAT_IYUV = 1448433993
    SDL_PIXELFORMAT_YUY2 = 844715353
    SDL_PIXELFORMAT_UYVY = 1498831189
    SDL_PIXELFORMAT_YVYU = 1431918169
    SDL_PIXELFORMAT_NV12 = 842094158
    SDL_PIXELFORMAT_NV21 = 825382478
    SDL_PIXELFORMAT_EXTERNAL_OES = 542328143
end

struct SDL_Palette
    ncolors::Cint
    colors::Ptr{SDL_Color}
    version::Uint32
    refcount::Cint
end

struct SDL_PixelFormat
    format::Uint32
    palette::Ptr{SDL_Palette}
    BitsPerPixel::Uint8
    BytesPerPixel::Uint8
    padding::NTuple{2, Uint8}
    Rmask::Uint32
    Gmask::Uint32
    Bmask::Uint32
    Amask::Uint32
    Rloss::Uint8
    Gloss::Uint8
    Bloss::Uint8
    Aloss::Uint8
    Rshift::Uint8
    Gshift::Uint8
    Bshift::Uint8
    Ashift::Uint8
    refcount::Cint
    next::Ptr{SDL_PixelFormat}
end

function SDL_GetPixelFormatName(format)
    ccall((:SDL_GetPixelFormatName, libsdl2), Ptr{Cchar}, (Uint32,), format)
end

function SDL_PixelFormatEnumToMasks(format, bpp, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_PixelFormatEnumToMasks, libsdl2), SDL_bool, (Uint32, Ptr{Cint}, Ptr{Uint32}, Ptr{Uint32}, Ptr{Uint32}, Ptr{Uint32}), format, bpp, Rmask, Gmask, Bmask, Amask)
end

function SDL_MasksToPixelFormatEnum(bpp, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_MasksToPixelFormatEnum, libsdl2), Uint32, (Cint, Uint32, Uint32, Uint32, Uint32), bpp, Rmask, Gmask, Bmask, Amask)
end

function SDL_AllocFormat(pixel_format)
    ccall((:SDL_AllocFormat, libsdl2), Ptr{SDL_PixelFormat}, (Uint32,), pixel_format)
end

function SDL_FreeFormat(format)
    ccall((:SDL_FreeFormat, libsdl2), Cvoid, (Ptr{SDL_PixelFormat},), format)
end

function SDL_AllocPalette(ncolors)
    ccall((:SDL_AllocPalette, libsdl2), Ptr{SDL_Palette}, (Cint,), ncolors)
end

function SDL_SetPixelFormatPalette(format, palette)
    ccall((:SDL_SetPixelFormatPalette, libsdl2), Cint, (Ptr{SDL_PixelFormat}, Ptr{SDL_Palette}), format, palette)
end

function SDL_SetPaletteColors(palette, colors, firstcolor, ncolors)
    ccall((:SDL_SetPaletteColors, libsdl2), Cint, (Ptr{SDL_Palette}, Ptr{SDL_Color}, Cint, Cint), palette, colors, firstcolor, ncolors)
end

function SDL_FreePalette(palette)
    ccall((:SDL_FreePalette, libsdl2), Cvoid, (Ptr{SDL_Palette},), palette)
end

function SDL_MapRGB(format, r, g, b)
    ccall((:SDL_MapRGB, libsdl2), Uint32, (Ptr{SDL_PixelFormat}, Uint8, Uint8, Uint8), format, r, g, b)
end

function SDL_MapRGBA(format, r, g, b, a)
    ccall((:SDL_MapRGBA, libsdl2), Uint32, (Ptr{SDL_PixelFormat}, Uint8, Uint8, Uint8, Uint8), format, r, g, b, a)
end

function SDL_GetRGB(pixel, format, r, g, b)
    ccall((:SDL_GetRGB, libsdl2), Cvoid, (Uint32, Ptr{SDL_PixelFormat}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), pixel, format, r, g, b)
end

function SDL_GetRGBA(pixel, format, r, g, b, a)
    ccall((:SDL_GetRGBA, libsdl2), Cvoid, (Uint32, Ptr{SDL_PixelFormat}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), pixel, format, r, g, b, a)
end

function SDL_CalculateGammaRamp(gamma, ramp)
    ccall((:SDL_CalculateGammaRamp, libsdl2), Cvoid, (Cfloat, Ptr{Uint16}), gamma, ramp)
end

struct SDL_Point
    x::Cint
    y::Cint
end

struct SDL_FPoint
    x::Cfloat
    y::Cfloat
end

struct SDL_FRect
    x::Cfloat
    y::Cfloat
    w::Cfloat
    h::Cfloat
end

function SDL_PointInRect(p, r)
    ccall((:SDL_PointInRect, libsdl2), SDL_bool, (Ptr{SDL_Point}, Ptr{SDL_Rect}), p, r)
end

function SDL_RectEmpty(r)
    ccall((:SDL_RectEmpty, libsdl2), SDL_bool, (Ptr{SDL_Rect},), r)
end

function SDL_RectEquals(a, b)
    ccall((:SDL_RectEquals, libsdl2), SDL_bool, (Ptr{SDL_Rect}, Ptr{SDL_Rect}), a, b)
end

function SDL_HasIntersection(A, B)
    ccall((:SDL_HasIntersection, libsdl2), SDL_bool, (Ptr{SDL_Rect}, Ptr{SDL_Rect}), A, B)
end

function SDL_IntersectRect(A, B, result)
    ccall((:SDL_IntersectRect, libsdl2), SDL_bool, (Ptr{SDL_Rect}, Ptr{SDL_Rect}, Ptr{SDL_Rect}), A, B, result)
end

function SDL_UnionRect(A, B, result)
    ccall((:SDL_UnionRect, libsdl2), Cvoid, (Ptr{SDL_Rect}, Ptr{SDL_Rect}, Ptr{SDL_Rect}), A, B, result)
end

function SDL_EnclosePoints(points, count, clip, result)
    ccall((:SDL_EnclosePoints, libsdl2), SDL_bool, (Ptr{SDL_Point}, Cint, Ptr{SDL_Rect}, Ptr{SDL_Rect}), points, count, clip, result)
end

function SDL_IntersectRectAndLine(rect, X1, Y1, X2, Y2)
    ccall((:SDL_IntersectRectAndLine, libsdl2), SDL_bool, (Ptr{SDL_Rect}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), rect, X1, Y1, X2, Y2)
end

function SDL_PointInFRect(p, r)
    ccall((:SDL_PointInFRect, libsdl2), SDL_bool, (Ptr{SDL_FPoint}, Ptr{SDL_FRect}), p, r)
end

function SDL_FRectEmpty(r)
    ccall((:SDL_FRectEmpty, libsdl2), SDL_bool, (Ptr{SDL_FRect},), r)
end

function SDL_FRectEqualsEpsilon(a, b, epsilon)
    ccall((:SDL_FRectEqualsEpsilon, libsdl2), SDL_bool, (Ptr{SDL_FRect}, Ptr{SDL_FRect}, Cfloat), a, b, epsilon)
end

function SDL_FRectEquals(a, b)
    ccall((:SDL_FRectEquals, libsdl2), SDL_bool, (Ptr{SDL_FRect}, Ptr{SDL_FRect}), a, b)
end

function SDL_HasIntersectionF(A, B)
    ccall((:SDL_HasIntersectionF, libsdl2), SDL_bool, (Ptr{SDL_FRect}, Ptr{SDL_FRect}), A, B)
end

function SDL_IntersectFRect(A, B, result)
    ccall((:SDL_IntersectFRect, libsdl2), SDL_bool, (Ptr{SDL_FRect}, Ptr{SDL_FRect}, Ptr{SDL_FRect}), A, B, result)
end

function SDL_UnionFRect(A, B, result)
    ccall((:SDL_UnionFRect, libsdl2), Cvoid, (Ptr{SDL_FRect}, Ptr{SDL_FRect}, Ptr{SDL_FRect}), A, B, result)
end

function SDL_EncloseFPoints(points, count, clip, result)
    ccall((:SDL_EncloseFPoints, libsdl2), SDL_bool, (Ptr{SDL_FPoint}, Cint, Ptr{SDL_FRect}, Ptr{SDL_FRect}), points, count, clip, result)
end

function SDL_IntersectFRectAndLine(rect, X1, Y1, X2, Y2)
    ccall((:SDL_IntersectFRectAndLine, libsdl2), SDL_bool, (Ptr{SDL_FRect}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), rect, X1, Y1, X2, Y2)
end

@cenum SDL_BlendMode::UInt32 begin
    SDL_BLENDMODE_NONE = 0
    SDL_BLENDMODE_BLEND = 1
    SDL_BLENDMODE_ADD = 2
    SDL_BLENDMODE_MOD = 4
    SDL_BLENDMODE_MUL = 8
    SDL_BLENDMODE_INVALID = 2147483647
end

@cenum SDL_BlendOperation::UInt32 begin
    SDL_BLENDOPERATION_ADD = 1
    SDL_BLENDOPERATION_SUBTRACT = 2
    SDL_BLENDOPERATION_REV_SUBTRACT = 3
    SDL_BLENDOPERATION_MINIMUM = 4
    SDL_BLENDOPERATION_MAXIMUM = 5
end

@cenum SDL_BlendFactor::UInt32 begin
    SDL_BLENDFACTOR_ZERO = 1
    SDL_BLENDFACTOR_ONE = 2
    SDL_BLENDFACTOR_SRC_COLOR = 3
    SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 4
    SDL_BLENDFACTOR_SRC_ALPHA = 5
    SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 6
    SDL_BLENDFACTOR_DST_COLOR = 7
    SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 8
    SDL_BLENDFACTOR_DST_ALPHA = 9
    SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 10
end

function SDL_ComposeCustomBlendMode(srcColorFactor, dstColorFactor, colorOperation, srcAlphaFactor, dstAlphaFactor, alphaOperation)
    ccall((:SDL_ComposeCustomBlendMode, libsdl2), SDL_BlendMode, (SDL_BlendFactor, SDL_BlendFactor, SDL_BlendOperation, SDL_BlendFactor, SDL_BlendFactor, SDL_BlendOperation), srcColorFactor, dstColorFactor, colorOperation, srcAlphaFactor, dstAlphaFactor, alphaOperation)
end

# typedef int ( SDLCALL * SDL_blit ) ( struct SDL_Surface * src , SDL_Rect * srcrect , struct SDL_Surface * dst , SDL_Rect * dstrect )
const SDL_blit = Ptr{Cvoid}

@cenum SDL_YUV_CONVERSION_MODE::UInt32 begin
    SDL_YUV_CONVERSION_JPEG = 0
    SDL_YUV_CONVERSION_BT601 = 1
    SDL_YUV_CONVERSION_BT709 = 2
    SDL_YUV_CONVERSION_AUTOMATIC = 3
end

function SDL_CreateRGBSurface(flags, width, height, depth, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_CreateRGBSurface, libsdl2), Ptr{SDL_Surface}, (Uint32, Cint, Cint, Cint, Uint32, Uint32, Uint32, Uint32), flags, width, height, depth, Rmask, Gmask, Bmask, Amask)
end

function SDL_CreateRGBSurfaceWithFormat(flags, width, height, depth, format)
    ccall((:SDL_CreateRGBSurfaceWithFormat, libsdl2), Ptr{SDL_Surface}, (Uint32, Cint, Cint, Cint, Uint32), flags, width, height, depth, format)
end

function SDL_CreateRGBSurfaceFrom(pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_CreateRGBSurfaceFrom, libsdl2), Ptr{SDL_Surface}, (Ptr{Cvoid}, Cint, Cint, Cint, Cint, Uint32, Uint32, Uint32, Uint32), pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask)
end

function SDL_CreateRGBSurfaceWithFormatFrom(pixels, width, height, depth, pitch, format)
    ccall((:SDL_CreateRGBSurfaceWithFormatFrom, libsdl2), Ptr{SDL_Surface}, (Ptr{Cvoid}, Cint, Cint, Cint, Cint, Uint32), pixels, width, height, depth, pitch, format)
end

function SDL_FreeSurface(surface)
    ccall((:SDL_FreeSurface, libsdl2), Cvoid, (Ptr{SDL_Surface},), surface)
end

function SDL_SetSurfacePalette(surface, palette)
    ccall((:SDL_SetSurfacePalette, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Palette}), surface, palette)
end

function SDL_LockSurface(surface)
    ccall((:SDL_LockSurface, libsdl2), Cint, (Ptr{SDL_Surface},), surface)
end

function SDL_UnlockSurface(surface)
    ccall((:SDL_UnlockSurface, libsdl2), Cvoid, (Ptr{SDL_Surface},), surface)
end

function SDL_SetSurfaceRLE(surface, flag)
    ccall((:SDL_SetSurfaceRLE, libsdl2), Cint, (Ptr{SDL_Surface}, Cint), surface, flag)
end

function SDL_HasSurfaceRLE(surface)
    ccall((:SDL_HasSurfaceRLE, libsdl2), SDL_bool, (Ptr{SDL_Surface},), surface)
end

function SDL_SetColorKey(surface, flag, key)
    ccall((:SDL_SetColorKey, libsdl2), Cint, (Ptr{SDL_Surface}, Cint, Uint32), surface, flag, key)
end

function SDL_HasColorKey(surface)
    ccall((:SDL_HasColorKey, libsdl2), SDL_bool, (Ptr{SDL_Surface},), surface)
end

function SDL_GetColorKey(surface, key)
    ccall((:SDL_GetColorKey, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{Uint32}), surface, key)
end

function SDL_SetSurfaceColorMod(surface, r, g, b)
    ccall((:SDL_SetSurfaceColorMod, libsdl2), Cint, (Ptr{SDL_Surface}, Uint8, Uint8, Uint8), surface, r, g, b)
end

function SDL_GetSurfaceColorMod(surface, r, g, b)
    ccall((:SDL_GetSurfaceColorMod, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), surface, r, g, b)
end

function SDL_SetSurfaceAlphaMod(surface, alpha)
    ccall((:SDL_SetSurfaceAlphaMod, libsdl2), Cint, (Ptr{SDL_Surface}, Uint8), surface, alpha)
end

function SDL_GetSurfaceAlphaMod(surface, alpha)
    ccall((:SDL_GetSurfaceAlphaMod, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{Uint8}), surface, alpha)
end

function SDL_SetSurfaceBlendMode(surface, blendMode)
    ccall((:SDL_SetSurfaceBlendMode, libsdl2), Cint, (Ptr{SDL_Surface}, SDL_BlendMode), surface, blendMode)
end

function SDL_GetSurfaceBlendMode(surface, blendMode)
    ccall((:SDL_GetSurfaceBlendMode, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{SDL_BlendMode}), surface, blendMode)
end

function SDL_SetClipRect(surface, rect)
    ccall((:SDL_SetClipRect, libsdl2), SDL_bool, (Ptr{SDL_Surface}, Ptr{SDL_Rect}), surface, rect)
end

function SDL_GetClipRect(surface, rect)
    ccall((:SDL_GetClipRect, libsdl2), Cvoid, (Ptr{SDL_Surface}, Ptr{SDL_Rect}), surface, rect)
end

function SDL_DuplicateSurface(surface)
    ccall((:SDL_DuplicateSurface, libsdl2), Ptr{SDL_Surface}, (Ptr{SDL_Surface},), surface)
end

function SDL_ConvertSurface(src, fmt, flags)
    ccall((:SDL_ConvertSurface, libsdl2), Ptr{SDL_Surface}, (Ptr{SDL_Surface}, Ptr{SDL_PixelFormat}, Uint32), src, fmt, flags)
end

function SDL_ConvertSurfaceFormat(src, pixel_format, flags)
    ccall((:SDL_ConvertSurfaceFormat, libsdl2), Ptr{SDL_Surface}, (Ptr{SDL_Surface}, Uint32, Uint32), src, pixel_format, flags)
end

function SDL_ConvertPixels(width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch)
    ccall((:SDL_ConvertPixels, libsdl2), Cint, (Cint, Cint, Uint32, Ptr{Cvoid}, Cint, Uint32, Ptr{Cvoid}, Cint), width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch)
end

function SDL_PremultiplyAlpha(width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch)
    ccall((:SDL_PremultiplyAlpha, libsdl2), Cint, (Cint, Cint, Uint32, Ptr{Cvoid}, Cint, Uint32, Ptr{Cvoid}, Cint), width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch)
end

function SDL_FillRect(dst, rect, color)
    ccall((:SDL_FillRect, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Uint32), dst, rect, color)
end

function SDL_FillRects(dst, rects, count, color)
    ccall((:SDL_FillRects, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Cint, Uint32), dst, rects, count, color)
end

function SDL_LowerBlit(src, srcrect, dst, dstrect)
    ccall((:SDL_LowerBlit, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SDL_SoftStretch(src, srcrect, dst, dstrect)
    ccall((:SDL_SoftStretch, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SDL_SoftStretchLinear(src, srcrect, dst, dstrect)
    ccall((:SDL_SoftStretchLinear, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SDL_LowerBlitScaled(src, srcrect, dst, dstrect)
    ccall((:SDL_LowerBlitScaled, libsdl2), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SDL_SetYUVConversionMode(mode)
    ccall((:SDL_SetYUVConversionMode, libsdl2), Cvoid, (SDL_YUV_CONVERSION_MODE,), mode)
end

function SDL_GetYUVConversionMode()
    ccall((:SDL_GetYUVConversionMode, libsdl2), SDL_YUV_CONVERSION_MODE, ())
end

function SDL_GetYUVConversionModeForResolution(width, height)
    ccall((:SDL_GetYUVConversionModeForResolution, libsdl2), SDL_YUV_CONVERSION_MODE, (Cint, Cint), width, height)
end

struct SDL_DisplayMode
    format::Uint32
    w::Cint
    h::Cint
    refresh_rate::Cint
    driverdata::Ptr{Cvoid}
end

mutable struct SDL_Window end

@cenum SDL_WindowFlags::UInt32 begin
    SDL_WINDOW_FULLSCREEN = 1
    SDL_WINDOW_OPENGL = 2
    SDL_WINDOW_SHOWN = 4
    SDL_WINDOW_HIDDEN = 8
    SDL_WINDOW_BORDERLESS = 16
    SDL_WINDOW_RESIZABLE = 32
    SDL_WINDOW_MINIMIZED = 64
    SDL_WINDOW_MAXIMIZED = 128
    SDL_WINDOW_MOUSE_GRABBED = 256
    SDL_WINDOW_INPUT_FOCUS = 512
    SDL_WINDOW_MOUSE_FOCUS = 1024
    SDL_WINDOW_FULLSCREEN_DESKTOP = 4097
    SDL_WINDOW_FOREIGN = 2048
    SDL_WINDOW_ALLOW_HIGHDPI = 8192
    SDL_WINDOW_MOUSE_CAPTURE = 16384
    SDL_WINDOW_ALWAYS_ON_TOP = 32768
    SDL_WINDOW_SKIP_TASKBAR = 65536
    SDL_WINDOW_UTILITY = 131072
    SDL_WINDOW_TOOLTIP = 262144
    SDL_WINDOW_POPUP_MENU = 524288
    SDL_WINDOW_KEYBOARD_GRABBED = 1048576
    SDL_WINDOW_VULKAN = 268435456
    SDL_WINDOW_METAL = 536870912
    SDL_WINDOW_INPUT_GRABBED = 256
end

@cenum SDL_WindowEventID::UInt32 begin
    SDL_WINDOWEVENT_NONE = 0
    SDL_WINDOWEVENT_SHOWN = 1
    SDL_WINDOWEVENT_HIDDEN = 2
    SDL_WINDOWEVENT_EXPOSED = 3
    SDL_WINDOWEVENT_MOVED = 4
    SDL_WINDOWEVENT_RESIZED = 5
    SDL_WINDOWEVENT_SIZE_CHANGED = 6
    SDL_WINDOWEVENT_MINIMIZED = 7
    SDL_WINDOWEVENT_MAXIMIZED = 8
    SDL_WINDOWEVENT_RESTORED = 9
    SDL_WINDOWEVENT_ENTER = 10
    SDL_WINDOWEVENT_LEAVE = 11
    SDL_WINDOWEVENT_FOCUS_GAINED = 12
    SDL_WINDOWEVENT_FOCUS_LOST = 13
    SDL_WINDOWEVENT_CLOSE = 14
    SDL_WINDOWEVENT_TAKE_FOCUS = 15
    SDL_WINDOWEVENT_HIT_TEST = 16
    SDL_WINDOWEVENT_ICCPROF_CHANGED = 17
    SDL_WINDOWEVENT_DISPLAY_CHANGED = 18
end

@cenum SDL_DisplayEventID::UInt32 begin
    SDL_DISPLAYEVENT_NONE = 0
    SDL_DISPLAYEVENT_ORIENTATION = 1
    SDL_DISPLAYEVENT_CONNECTED = 2
    SDL_DISPLAYEVENT_DISCONNECTED = 3
end

@cenum SDL_DisplayOrientation::UInt32 begin
    SDL_ORIENTATION_UNKNOWN = 0
    SDL_ORIENTATION_LANDSCAPE = 1
    SDL_ORIENTATION_LANDSCAPE_FLIPPED = 2
    SDL_ORIENTATION_PORTRAIT = 3
    SDL_ORIENTATION_PORTRAIT_FLIPPED = 4
end

@cenum SDL_FlashOperation::UInt32 begin
    SDL_FLASH_CANCEL = 0
    SDL_FLASH_BRIEFLY = 1
    SDL_FLASH_UNTIL_FOCUSED = 2
end

const SDL_GLContext = Ptr{Cvoid}

@cenum SDL_GLattr::UInt32 begin
    SDL_GL_RED_SIZE = 0
    SDL_GL_GREEN_SIZE = 1
    SDL_GL_BLUE_SIZE = 2
    SDL_GL_ALPHA_SIZE = 3
    SDL_GL_BUFFER_SIZE = 4
    SDL_GL_DOUBLEBUFFER = 5
    SDL_GL_DEPTH_SIZE = 6
    SDL_GL_STENCIL_SIZE = 7
    SDL_GL_ACCUM_RED_SIZE = 8
    SDL_GL_ACCUM_GREEN_SIZE = 9
    SDL_GL_ACCUM_BLUE_SIZE = 10
    SDL_GL_ACCUM_ALPHA_SIZE = 11
    SDL_GL_STEREO = 12
    SDL_GL_MULTISAMPLEBUFFERS = 13
    SDL_GL_MULTISAMPLESAMPLES = 14
    SDL_GL_ACCELERATED_VISUAL = 15
    SDL_GL_RETAINED_BACKING = 16
    SDL_GL_CONTEXT_MAJOR_VERSION = 17
    SDL_GL_CONTEXT_MINOR_VERSION = 18
    SDL_GL_CONTEXT_EGL = 19
    SDL_GL_CONTEXT_FLAGS = 20
    SDL_GL_CONTEXT_PROFILE_MASK = 21
    SDL_GL_SHARE_WITH_CURRENT_CONTEXT = 22
    SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = 23
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR = 24
    SDL_GL_CONTEXT_RESET_NOTIFICATION = 25
    SDL_GL_CONTEXT_NO_ERROR = 26
    SDL_GL_FLOATBUFFERS = 27
end

@cenum SDL_GLprofile::UInt32 begin
    SDL_GL_CONTEXT_PROFILE_CORE = 1
    SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2
    SDL_GL_CONTEXT_PROFILE_ES = 4
end

@cenum SDL_GLcontextFlag::UInt32 begin
    SDL_GL_CONTEXT_DEBUG_FLAG = 1
    SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2
    SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4
    SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8
end

@cenum SDL_GLcontextReleaseFlag::UInt32 begin
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 1
end

@cenum SDL_GLContextResetNotification::UInt32 begin
    SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = 0
    SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = 1
end

function SDL_GetNumVideoDrivers()
    ccall((:SDL_GetNumVideoDrivers, libsdl2), Cint, ())
end

function SDL_GetVideoDriver(index)
    ccall((:SDL_GetVideoDriver, libsdl2), Ptr{Cchar}, (Cint,), index)
end

function SDL_VideoInit(driver_name)
    ccall((:SDL_VideoInit, libsdl2), Cint, (Ptr{Cchar},), driver_name)
end

function SDL_VideoQuit()
    ccall((:SDL_VideoQuit, libsdl2), Cvoid, ())
end

function SDL_GetCurrentVideoDriver()
    ccall((:SDL_GetCurrentVideoDriver, libsdl2), Ptr{Cchar}, ())
end

function SDL_GetNumVideoDisplays()
    ccall((:SDL_GetNumVideoDisplays, libsdl2), Cint, ())
end

function SDL_GetDisplayName(displayIndex)
    ccall((:SDL_GetDisplayName, libsdl2), Ptr{Cchar}, (Cint,), displayIndex)
end

function SDL_GetDisplayBounds(displayIndex, rect)
    ccall((:SDL_GetDisplayBounds, libsdl2), Cint, (Cint, Ptr{SDL_Rect}), displayIndex, rect)
end

function SDL_GetDisplayUsableBounds(displayIndex, rect)
    ccall((:SDL_GetDisplayUsableBounds, libsdl2), Cint, (Cint, Ptr{SDL_Rect}), displayIndex, rect)
end

function SDL_GetDisplayDPI(displayIndex, ddpi, hdpi, vdpi)
    ccall((:SDL_GetDisplayDPI, libsdl2), Cint, (Cint, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), displayIndex, ddpi, hdpi, vdpi)
end

function SDL_GetDisplayOrientation(displayIndex)
    ccall((:SDL_GetDisplayOrientation, libsdl2), SDL_DisplayOrientation, (Cint,), displayIndex)
end

function SDL_GetNumDisplayModes(displayIndex)
    ccall((:SDL_GetNumDisplayModes, libsdl2), Cint, (Cint,), displayIndex)
end

function SDL_GetDisplayMode(displayIndex, modeIndex, mode)
    ccall((:SDL_GetDisplayMode, libsdl2), Cint, (Cint, Cint, Ptr{SDL_DisplayMode}), displayIndex, modeIndex, mode)
end

function SDL_GetDesktopDisplayMode(displayIndex, mode)
    ccall((:SDL_GetDesktopDisplayMode, libsdl2), Cint, (Cint, Ptr{SDL_DisplayMode}), displayIndex, mode)
end

function SDL_GetCurrentDisplayMode(displayIndex, mode)
    ccall((:SDL_GetCurrentDisplayMode, libsdl2), Cint, (Cint, Ptr{SDL_DisplayMode}), displayIndex, mode)
end

function SDL_GetClosestDisplayMode(displayIndex, mode, closest)
    ccall((:SDL_GetClosestDisplayMode, libsdl2), Ptr{SDL_DisplayMode}, (Cint, Ptr{SDL_DisplayMode}, Ptr{SDL_DisplayMode}), displayIndex, mode, closest)
end

function SDL_GetPointDisplayIndex(point)
    ccall((:SDL_GetPointDisplayIndex, libsdl2), Cint, (Ptr{SDL_Point},), point)
end

function SDL_GetRectDisplayIndex(rect)
    ccall((:SDL_GetRectDisplayIndex, libsdl2), Cint, (Ptr{SDL_Rect},), rect)
end

function SDL_GetWindowDisplayIndex(window)
    ccall((:SDL_GetWindowDisplayIndex, libsdl2), Cint, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowDisplayMode(window, mode)
    ccall((:SDL_SetWindowDisplayMode, libsdl2), Cint, (Ptr{SDL_Window}, Ptr{SDL_DisplayMode}), window, mode)
end

function SDL_GetWindowDisplayMode(window, mode)
    ccall((:SDL_GetWindowDisplayMode, libsdl2), Cint, (Ptr{SDL_Window}, Ptr{SDL_DisplayMode}), window, mode)
end

function SDL_GetWindowICCProfile(window, size)
    ccall((:SDL_GetWindowICCProfile, libsdl2), Ptr{Cvoid}, (Ptr{SDL_Window}, Ptr{Csize_t}), window, size)
end

function SDL_GetWindowPixelFormat(window)
    ccall((:SDL_GetWindowPixelFormat, libsdl2), Uint32, (Ptr{SDL_Window},), window)
end

function SDL_CreateWindow(title, x, y, w, h, flags)
    ccall((:SDL_CreateWindow, libsdl2), Ptr{SDL_Window}, (Ptr{Cchar}, Cint, Cint, Cint, Cint, Uint32), title, x, y, w, h, flags)
end

function SDL_CreateWindowFrom(data)
    ccall((:SDL_CreateWindowFrom, libsdl2), Ptr{SDL_Window}, (Ptr{Cvoid},), data)
end

function SDL_GetWindowID(window)
    ccall((:SDL_GetWindowID, libsdl2), Uint32, (Ptr{SDL_Window},), window)
end

function SDL_GetWindowFromID(id)
    ccall((:SDL_GetWindowFromID, libsdl2), Ptr{SDL_Window}, (Uint32,), id)
end

function SDL_GetWindowFlags(window)
    ccall((:SDL_GetWindowFlags, libsdl2), Uint32, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowTitle(window, title)
    ccall((:SDL_SetWindowTitle, libsdl2), Cvoid, (Ptr{SDL_Window}, Ptr{Cchar}), window, title)
end

function SDL_GetWindowTitle(window)
    ccall((:SDL_GetWindowTitle, libsdl2), Ptr{Cchar}, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowIcon(window, icon)
    ccall((:SDL_SetWindowIcon, libsdl2), Cvoid, (Ptr{SDL_Window}, Ptr{SDL_Surface}), window, icon)
end

function SDL_SetWindowData(window, name, userdata)
    ccall((:SDL_SetWindowData, libsdl2), Ptr{Cvoid}, (Ptr{SDL_Window}, Ptr{Cchar}, Ptr{Cvoid}), window, name, userdata)
end

function SDL_GetWindowData(window, name)
    ccall((:SDL_GetWindowData, libsdl2), Ptr{Cvoid}, (Ptr{SDL_Window}, Ptr{Cchar}), window, name)
end

function SDL_SetWindowPosition(window, x, y)
    ccall((:SDL_SetWindowPosition, libsdl2), Cvoid, (Ptr{SDL_Window}, Cint, Cint), window, x, y)
end

function SDL_GetWindowPosition(window, x, y)
    ccall((:SDL_GetWindowPosition, libsdl2), Cvoid, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, x, y)
end

function SDL_SetWindowSize(window, w, h)
    ccall((:SDL_SetWindowSize, libsdl2), Cvoid, (Ptr{SDL_Window}, Cint, Cint), window, w, h)
end

function SDL_GetWindowSize(window, w, h)
    ccall((:SDL_GetWindowSize, libsdl2), Cvoid, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SDL_GetWindowBordersSize(window, top, left, bottom, right)
    ccall((:SDL_GetWindowBordersSize, libsdl2), Cint, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), window, top, left, bottom, right)
end

function SDL_SetWindowMinimumSize(window, min_w, min_h)
    ccall((:SDL_SetWindowMinimumSize, libsdl2), Cvoid, (Ptr{SDL_Window}, Cint, Cint), window, min_w, min_h)
end

function SDL_GetWindowMinimumSize(window, w, h)
    ccall((:SDL_GetWindowMinimumSize, libsdl2), Cvoid, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SDL_SetWindowMaximumSize(window, max_w, max_h)
    ccall((:SDL_SetWindowMaximumSize, libsdl2), Cvoid, (Ptr{SDL_Window}, Cint, Cint), window, max_w, max_h)
end

function SDL_GetWindowMaximumSize(window, w, h)
    ccall((:SDL_GetWindowMaximumSize, libsdl2), Cvoid, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SDL_SetWindowBordered(window, bordered)
    ccall((:SDL_SetWindowBordered, libsdl2), Cvoid, (Ptr{SDL_Window}, SDL_bool), window, bordered)
end

function SDL_SetWindowResizable(window, resizable)
    ccall((:SDL_SetWindowResizable, libsdl2), Cvoid, (Ptr{SDL_Window}, SDL_bool), window, resizable)
end

function SDL_SetWindowAlwaysOnTop(window, on_top)
    ccall((:SDL_SetWindowAlwaysOnTop, libsdl2), Cvoid, (Ptr{SDL_Window}, SDL_bool), window, on_top)
end

function SDL_ShowWindow(window)
    ccall((:SDL_ShowWindow, libsdl2), Cvoid, (Ptr{SDL_Window},), window)
end

function SDL_HideWindow(window)
    ccall((:SDL_HideWindow, libsdl2), Cvoid, (Ptr{SDL_Window},), window)
end

function SDL_RaiseWindow(window)
    ccall((:SDL_RaiseWindow, libsdl2), Cvoid, (Ptr{SDL_Window},), window)
end

function SDL_MaximizeWindow(window)
    ccall((:SDL_MaximizeWindow, libsdl2), Cvoid, (Ptr{SDL_Window},), window)
end

function SDL_MinimizeWindow(window)
    ccall((:SDL_MinimizeWindow, libsdl2), Cvoid, (Ptr{SDL_Window},), window)
end

function SDL_RestoreWindow(window)
    ccall((:SDL_RestoreWindow, libsdl2), Cvoid, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowFullscreen(window, flags)
    ccall((:SDL_SetWindowFullscreen, libsdl2), Cint, (Ptr{SDL_Window}, Uint32), window, flags)
end

function SDL_GetWindowSurface(window)
    ccall((:SDL_GetWindowSurface, libsdl2), Ptr{SDL_Surface}, (Ptr{SDL_Window},), window)
end

function SDL_UpdateWindowSurface(window)
    ccall((:SDL_UpdateWindowSurface, libsdl2), Cint, (Ptr{SDL_Window},), window)
end

function SDL_UpdateWindowSurfaceRects(window, rects, numrects)
    ccall((:SDL_UpdateWindowSurfaceRects, libsdl2), Cint, (Ptr{SDL_Window}, Ptr{SDL_Rect}, Cint), window, rects, numrects)
end

function SDL_SetWindowGrab(window, grabbed)
    ccall((:SDL_SetWindowGrab, libsdl2), Cvoid, (Ptr{SDL_Window}, SDL_bool), window, grabbed)
end

function SDL_SetWindowKeyboardGrab(window, grabbed)
    ccall((:SDL_SetWindowKeyboardGrab, libsdl2), Cvoid, (Ptr{SDL_Window}, SDL_bool), window, grabbed)
end

function SDL_SetWindowMouseGrab(window, grabbed)
    ccall((:SDL_SetWindowMouseGrab, libsdl2), Cvoid, (Ptr{SDL_Window}, SDL_bool), window, grabbed)
end

function SDL_GetWindowGrab(window)
    ccall((:SDL_GetWindowGrab, libsdl2), SDL_bool, (Ptr{SDL_Window},), window)
end

function SDL_GetWindowKeyboardGrab(window)
    ccall((:SDL_GetWindowKeyboardGrab, libsdl2), SDL_bool, (Ptr{SDL_Window},), window)
end

function SDL_GetWindowMouseGrab(window)
    ccall((:SDL_GetWindowMouseGrab, libsdl2), SDL_bool, (Ptr{SDL_Window},), window)
end

function SDL_GetGrabbedWindow()
    ccall((:SDL_GetGrabbedWindow, libsdl2), Ptr{SDL_Window}, ())
end

function SDL_SetWindowMouseRect(window, rect)
    ccall((:SDL_SetWindowMouseRect, libsdl2), Cint, (Ptr{SDL_Window}, Ptr{SDL_Rect}), window, rect)
end

function SDL_GetWindowMouseRect(window)
    ccall((:SDL_GetWindowMouseRect, libsdl2), Ptr{SDL_Rect}, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowBrightness(window, brightness)
    ccall((:SDL_SetWindowBrightness, libsdl2), Cint, (Ptr{SDL_Window}, Cfloat), window, brightness)
end

function SDL_GetWindowBrightness(window)
    ccall((:SDL_GetWindowBrightness, libsdl2), Cfloat, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowOpacity(window, opacity)
    ccall((:SDL_SetWindowOpacity, libsdl2), Cint, (Ptr{SDL_Window}, Cfloat), window, opacity)
end

function SDL_GetWindowOpacity(window, out_opacity)
    ccall((:SDL_GetWindowOpacity, libsdl2), Cint, (Ptr{SDL_Window}, Ptr{Cfloat}), window, out_opacity)
end

function SDL_SetWindowModalFor(modal_window, parent_window)
    ccall((:SDL_SetWindowModalFor, libsdl2), Cint, (Ptr{SDL_Window}, Ptr{SDL_Window}), modal_window, parent_window)
end

function SDL_SetWindowInputFocus(window)
    ccall((:SDL_SetWindowInputFocus, libsdl2), Cint, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowGammaRamp(window, red, green, blue)
    ccall((:SDL_SetWindowGammaRamp, libsdl2), Cint, (Ptr{SDL_Window}, Ptr{Uint16}, Ptr{Uint16}, Ptr{Uint16}), window, red, green, blue)
end

function SDL_GetWindowGammaRamp(window, red, green, blue)
    ccall((:SDL_GetWindowGammaRamp, libsdl2), Cint, (Ptr{SDL_Window}, Ptr{Uint16}, Ptr{Uint16}, Ptr{Uint16}), window, red, green, blue)
end

@cenum SDL_HitTestResult::UInt32 begin
    SDL_HITTEST_NORMAL = 0
    SDL_HITTEST_DRAGGABLE = 1
    SDL_HITTEST_RESIZE_TOPLEFT = 2
    SDL_HITTEST_RESIZE_TOP = 3
    SDL_HITTEST_RESIZE_TOPRIGHT = 4
    SDL_HITTEST_RESIZE_RIGHT = 5
    SDL_HITTEST_RESIZE_BOTTOMRIGHT = 6
    SDL_HITTEST_RESIZE_BOTTOM = 7
    SDL_HITTEST_RESIZE_BOTTOMLEFT = 8
    SDL_HITTEST_RESIZE_LEFT = 9
end

# typedef SDL_HitTestResult ( SDLCALL * SDL_HitTest ) ( SDL_Window * win , const SDL_Point * area , void * data )
const SDL_HitTest = Ptr{Cvoid}

function SDL_SetWindowHitTest(window, callback, callback_data)
    ccall((:SDL_SetWindowHitTest, libsdl2), Cint, (Ptr{SDL_Window}, SDL_HitTest, Ptr{Cvoid}), window, callback, callback_data)
end

function SDL_FlashWindow(window, operation)
    ccall((:SDL_FlashWindow, libsdl2), Cint, (Ptr{SDL_Window}, SDL_FlashOperation), window, operation)
end

function SDL_DestroyWindow(window)
    ccall((:SDL_DestroyWindow, libsdl2), Cvoid, (Ptr{SDL_Window},), window)
end

function SDL_IsScreenSaverEnabled()
    ccall((:SDL_IsScreenSaverEnabled, libsdl2), SDL_bool, ())
end

function SDL_EnableScreenSaver()
    ccall((:SDL_EnableScreenSaver, libsdl2), Cvoid, ())
end

function SDL_DisableScreenSaver()
    ccall((:SDL_DisableScreenSaver, libsdl2), Cvoid, ())
end

function SDL_GL_LoadLibrary(path)
    ccall((:SDL_GL_LoadLibrary, libsdl2), Cint, (Ptr{Cchar},), path)
end

function SDL_GL_GetProcAddress(proc)
    ccall((:SDL_GL_GetProcAddress, libsdl2), Ptr{Cvoid}, (Ptr{Cchar},), proc)
end

function SDL_GL_UnloadLibrary()
    ccall((:SDL_GL_UnloadLibrary, libsdl2), Cvoid, ())
end

function SDL_GL_ExtensionSupported(extension)
    ccall((:SDL_GL_ExtensionSupported, libsdl2), SDL_bool, (Ptr{Cchar},), extension)
end

function SDL_GL_ResetAttributes()
    ccall((:SDL_GL_ResetAttributes, libsdl2), Cvoid, ())
end

function SDL_GL_SetAttribute(attr, value)
    ccall((:SDL_GL_SetAttribute, libsdl2), Cint, (SDL_GLattr, Cint), attr, value)
end

function SDL_GL_GetAttribute(attr, value)
    ccall((:SDL_GL_GetAttribute, libsdl2), Cint, (SDL_GLattr, Ptr{Cint}), attr, value)
end

function SDL_GL_CreateContext(window)
    ccall((:SDL_GL_CreateContext, libsdl2), SDL_GLContext, (Ptr{SDL_Window},), window)
end

function SDL_GL_MakeCurrent(window, context)
    ccall((:SDL_GL_MakeCurrent, libsdl2), Cint, (Ptr{SDL_Window}, SDL_GLContext), window, context)
end

function SDL_GL_GetCurrentWindow()
    ccall((:SDL_GL_GetCurrentWindow, libsdl2), Ptr{SDL_Window}, ())
end

function SDL_GL_GetCurrentContext()
    ccall((:SDL_GL_GetCurrentContext, libsdl2), SDL_GLContext, ())
end

function SDL_GL_GetDrawableSize(window, w, h)
    ccall((:SDL_GL_GetDrawableSize, libsdl2), Cvoid, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SDL_GL_SetSwapInterval(interval)
    ccall((:SDL_GL_SetSwapInterval, libsdl2), Cint, (Cint,), interval)
end

function SDL_GL_GetSwapInterval()
    ccall((:SDL_GL_GetSwapInterval, libsdl2), Cint, ())
end

function SDL_GL_SwapWindow(window)
    ccall((:SDL_GL_SwapWindow, libsdl2), Cvoid, (Ptr{SDL_Window},), window)
end

function SDL_GL_DeleteContext(context)
    ccall((:SDL_GL_DeleteContext, libsdl2), Cvoid, (SDL_GLContext,), context)
end

@cenum SDL_Scancode::UInt32 begin
    SDL_SCANCODE_UNKNOWN = 0
    SDL_SCANCODE_A = 4
    SDL_SCANCODE_B = 5
    SDL_SCANCODE_C = 6
    SDL_SCANCODE_D = 7
    SDL_SCANCODE_E = 8
    SDL_SCANCODE_F = 9
    SDL_SCANCODE_G = 10
    SDL_SCANCODE_H = 11
    SDL_SCANCODE_I = 12
    SDL_SCANCODE_J = 13
    SDL_SCANCODE_K = 14
    SDL_SCANCODE_L = 15
    SDL_SCANCODE_M = 16
    SDL_SCANCODE_N = 17
    SDL_SCANCODE_O = 18
    SDL_SCANCODE_P = 19
    SDL_SCANCODE_Q = 20
    SDL_SCANCODE_R = 21
    SDL_SCANCODE_S = 22
    SDL_SCANCODE_T = 23
    SDL_SCANCODE_U = 24
    SDL_SCANCODE_V = 25
    SDL_SCANCODE_W = 26
    SDL_SCANCODE_X = 27
    SDL_SCANCODE_Y = 28
    SDL_SCANCODE_Z = 29
    SDL_SCANCODE_1 = 30
    SDL_SCANCODE_2 = 31
    SDL_SCANCODE_3 = 32
    SDL_SCANCODE_4 = 33
    SDL_SCANCODE_5 = 34
    SDL_SCANCODE_6 = 35
    SDL_SCANCODE_7 = 36
    SDL_SCANCODE_8 = 37
    SDL_SCANCODE_9 = 38
    SDL_SCANCODE_0 = 39
    SDL_SCANCODE_RETURN = 40
    SDL_SCANCODE_ESCAPE = 41
    SDL_SCANCODE_BACKSPACE = 42
    SDL_SCANCODE_TAB = 43
    SDL_SCANCODE_SPACE = 44
    SDL_SCANCODE_MINUS = 45
    SDL_SCANCODE_EQUALS = 46
    SDL_SCANCODE_LEFTBRACKET = 47
    SDL_SCANCODE_RIGHTBRACKET = 48
    SDL_SCANCODE_BACKSLASH = 49
    SDL_SCANCODE_NONUSHASH = 50
    SDL_SCANCODE_SEMICOLON = 51
    SDL_SCANCODE_APOSTROPHE = 52
    SDL_SCANCODE_GRAVE = 53
    SDL_SCANCODE_COMMA = 54
    SDL_SCANCODE_PERIOD = 55
    SDL_SCANCODE_SLASH = 56
    SDL_SCANCODE_CAPSLOCK = 57
    SDL_SCANCODE_F1 = 58
    SDL_SCANCODE_F2 = 59
    SDL_SCANCODE_F3 = 60
    SDL_SCANCODE_F4 = 61
    SDL_SCANCODE_F5 = 62
    SDL_SCANCODE_F6 = 63
    SDL_SCANCODE_F7 = 64
    SDL_SCANCODE_F8 = 65
    SDL_SCANCODE_F9 = 66
    SDL_SCANCODE_F10 = 67
    SDL_SCANCODE_F11 = 68
    SDL_SCANCODE_F12 = 69
    SDL_SCANCODE_PRINTSCREEN = 70
    SDL_SCANCODE_SCROLLLOCK = 71
    SDL_SCANCODE_PAUSE = 72
    SDL_SCANCODE_INSERT = 73
    SDL_SCANCODE_HOME = 74
    SDL_SCANCODE_PAGEUP = 75
    SDL_SCANCODE_DELETE = 76
    SDL_SCANCODE_END = 77
    SDL_SCANCODE_PAGEDOWN = 78
    SDL_SCANCODE_RIGHT = 79
    SDL_SCANCODE_LEFT = 80
    SDL_SCANCODE_DOWN = 81
    SDL_SCANCODE_UP = 82
    SDL_SCANCODE_NUMLOCKCLEAR = 83
    SDL_SCANCODE_KP_DIVIDE = 84
    SDL_SCANCODE_KP_MULTIPLY = 85
    SDL_SCANCODE_KP_MINUS = 86
    SDL_SCANCODE_KP_PLUS = 87
    SDL_SCANCODE_KP_ENTER = 88
    SDL_SCANCODE_KP_1 = 89
    SDL_SCANCODE_KP_2 = 90
    SDL_SCANCODE_KP_3 = 91
    SDL_SCANCODE_KP_4 = 92
    SDL_SCANCODE_KP_5 = 93
    SDL_SCANCODE_KP_6 = 94
    SDL_SCANCODE_KP_7 = 95
    SDL_SCANCODE_KP_8 = 96
    SDL_SCANCODE_KP_9 = 97
    SDL_SCANCODE_KP_0 = 98
    SDL_SCANCODE_KP_PERIOD = 99
    SDL_SCANCODE_NONUSBACKSLASH = 100
    SDL_SCANCODE_APPLICATION = 101
    SDL_SCANCODE_POWER = 102
    SDL_SCANCODE_KP_EQUALS = 103
    SDL_SCANCODE_F13 = 104
    SDL_SCANCODE_F14 = 105
    SDL_SCANCODE_F15 = 106
    SDL_SCANCODE_F16 = 107
    SDL_SCANCODE_F17 = 108
    SDL_SCANCODE_F18 = 109
    SDL_SCANCODE_F19 = 110
    SDL_SCANCODE_F20 = 111
    SDL_SCANCODE_F21 = 112
    SDL_SCANCODE_F22 = 113
    SDL_SCANCODE_F23 = 114
    SDL_SCANCODE_F24 = 115
    SDL_SCANCODE_EXECUTE = 116
    SDL_SCANCODE_HELP = 117
    SDL_SCANCODE_MENU = 118
    SDL_SCANCODE_SELECT = 119
    SDL_SCANCODE_STOP = 120
    SDL_SCANCODE_AGAIN = 121
    SDL_SCANCODE_UNDO = 122
    SDL_SCANCODE_CUT = 123
    SDL_SCANCODE_COPY = 124
    SDL_SCANCODE_PASTE = 125
    SDL_SCANCODE_FIND = 126
    SDL_SCANCODE_MUTE = 127
    SDL_SCANCODE_VOLUMEUP = 128
    SDL_SCANCODE_VOLUMEDOWN = 129
    SDL_SCANCODE_KP_COMMA = 133
    SDL_SCANCODE_KP_EQUALSAS400 = 134
    SDL_SCANCODE_INTERNATIONAL1 = 135
    SDL_SCANCODE_INTERNATIONAL2 = 136
    SDL_SCANCODE_INTERNATIONAL3 = 137
    SDL_SCANCODE_INTERNATIONAL4 = 138
    SDL_SCANCODE_INTERNATIONAL5 = 139
    SDL_SCANCODE_INTERNATIONAL6 = 140
    SDL_SCANCODE_INTERNATIONAL7 = 141
    SDL_SCANCODE_INTERNATIONAL8 = 142
    SDL_SCANCODE_INTERNATIONAL9 = 143
    SDL_SCANCODE_LANG1 = 144
    SDL_SCANCODE_LANG2 = 145
    SDL_SCANCODE_LANG3 = 146
    SDL_SCANCODE_LANG4 = 147
    SDL_SCANCODE_LANG5 = 148
    SDL_SCANCODE_LANG6 = 149
    SDL_SCANCODE_LANG7 = 150
    SDL_SCANCODE_LANG8 = 151
    SDL_SCANCODE_LANG9 = 152
    SDL_SCANCODE_ALTERASE = 153
    SDL_SCANCODE_SYSREQ = 154
    SDL_SCANCODE_CANCEL = 155
    SDL_SCANCODE_CLEAR = 156
    SDL_SCANCODE_PRIOR = 157
    SDL_SCANCODE_RETURN2 = 158
    SDL_SCANCODE_SEPARATOR = 159
    SDL_SCANCODE_OUT = 160
    SDL_SCANCODE_OPER = 161
    SDL_SCANCODE_CLEARAGAIN = 162
    SDL_SCANCODE_CRSEL = 163
    SDL_SCANCODE_EXSEL = 164
    SDL_SCANCODE_KP_00 = 176
    SDL_SCANCODE_KP_000 = 177
    SDL_SCANCODE_THOUSANDSSEPARATOR = 178
    SDL_SCANCODE_DECIMALSEPARATOR = 179
    SDL_SCANCODE_CURRENCYUNIT = 180
    SDL_SCANCODE_CURRENCYSUBUNIT = 181
    SDL_SCANCODE_KP_LEFTPAREN = 182
    SDL_SCANCODE_KP_RIGHTPAREN = 183
    SDL_SCANCODE_KP_LEFTBRACE = 184
    SDL_SCANCODE_KP_RIGHTBRACE = 185
    SDL_SCANCODE_KP_TAB = 186
    SDL_SCANCODE_KP_BACKSPACE = 187
    SDL_SCANCODE_KP_A = 188
    SDL_SCANCODE_KP_B = 189
    SDL_SCANCODE_KP_C = 190
    SDL_SCANCODE_KP_D = 191
    SDL_SCANCODE_KP_E = 192
    SDL_SCANCODE_KP_F = 193
    SDL_SCANCODE_KP_XOR = 194
    SDL_SCANCODE_KP_POWER = 195
    SDL_SCANCODE_KP_PERCENT = 196
    SDL_SCANCODE_KP_LESS = 197
    SDL_SCANCODE_KP_GREATER = 198
    SDL_SCANCODE_KP_AMPERSAND = 199
    SDL_SCANCODE_KP_DBLAMPERSAND = 200
    SDL_SCANCODE_KP_VERTICALBAR = 201
    SDL_SCANCODE_KP_DBLVERTICALBAR = 202
    SDL_SCANCODE_KP_COLON = 203
    SDL_SCANCODE_KP_HASH = 204
    SDL_SCANCODE_KP_SPACE = 205
    SDL_SCANCODE_KP_AT = 206
    SDL_SCANCODE_KP_EXCLAM = 207
    SDL_SCANCODE_KP_MEMSTORE = 208
    SDL_SCANCODE_KP_MEMRECALL = 209
    SDL_SCANCODE_KP_MEMCLEAR = 210
    SDL_SCANCODE_KP_MEMADD = 211
    SDL_SCANCODE_KP_MEMSUBTRACT = 212
    SDL_SCANCODE_KP_MEMMULTIPLY = 213
    SDL_SCANCODE_KP_MEMDIVIDE = 214
    SDL_SCANCODE_KP_PLUSMINUS = 215
    SDL_SCANCODE_KP_CLEAR = 216
    SDL_SCANCODE_KP_CLEARENTRY = 217
    SDL_SCANCODE_KP_BINARY = 218
    SDL_SCANCODE_KP_OCTAL = 219
    SDL_SCANCODE_KP_DECIMAL = 220
    SDL_SCANCODE_KP_HEXADECIMAL = 221
    SDL_SCANCODE_LCTRL = 224
    SDL_SCANCODE_LSHIFT = 225
    SDL_SCANCODE_LALT = 226
    SDL_SCANCODE_LGUI = 227
    SDL_SCANCODE_RCTRL = 228
    SDL_SCANCODE_RSHIFT = 229
    SDL_SCANCODE_RALT = 230
    SDL_SCANCODE_RGUI = 231
    SDL_SCANCODE_MODE = 257
    SDL_SCANCODE_AUDIONEXT = 258
    SDL_SCANCODE_AUDIOPREV = 259
    SDL_SCANCODE_AUDIOSTOP = 260
    SDL_SCANCODE_AUDIOPLAY = 261
    SDL_SCANCODE_AUDIOMUTE = 262
    SDL_SCANCODE_MEDIASELECT = 263
    SDL_SCANCODE_WWW = 264
    SDL_SCANCODE_MAIL = 265
    SDL_SCANCODE_CALCULATOR = 266
    SDL_SCANCODE_COMPUTER = 267
    SDL_SCANCODE_AC_SEARCH = 268
    SDL_SCANCODE_AC_HOME = 269
    SDL_SCANCODE_AC_BACK = 270
    SDL_SCANCODE_AC_FORWARD = 271
    SDL_SCANCODE_AC_STOP = 272
    SDL_SCANCODE_AC_REFRESH = 273
    SDL_SCANCODE_AC_BOOKMARKS = 274
    SDL_SCANCODE_BRIGHTNESSDOWN = 275
    SDL_SCANCODE_BRIGHTNESSUP = 276
    SDL_SCANCODE_DISPLAYSWITCH = 277
    SDL_SCANCODE_KBDILLUMTOGGLE = 278
    SDL_SCANCODE_KBDILLUMDOWN = 279
    SDL_SCANCODE_KBDILLUMUP = 280
    SDL_SCANCODE_EJECT = 281
    SDL_SCANCODE_SLEEP = 282
    SDL_SCANCODE_APP1 = 283
    SDL_SCANCODE_APP2 = 284
    SDL_SCANCODE_AUDIOREWIND = 285
    SDL_SCANCODE_AUDIOFASTFORWARD = 286
    SDL_SCANCODE_SOFTLEFT = 287
    SDL_SCANCODE_SOFTRIGHT = 288
    SDL_SCANCODE_CALL = 289
    SDL_SCANCODE_ENDCALL = 290
    SDL_NUM_SCANCODES = 512
end

const SDL_Keycode = Sint32

@cenum SDL_KeyCode::UInt32 begin
    SDLK_UNKNOWN = 0
    SDLK_RETURN = 13
    SDLK_ESCAPE = 27
    SDLK_BACKSPACE = 8
    SDLK_TAB = 9
    SDLK_SPACE = 32
    SDLK_EXCLAIM = 33
    SDLK_QUOTEDBL = 34
    SDLK_HASH = 35
    SDLK_PERCENT = 37
    SDLK_DOLLAR = 36
    SDLK_AMPERSAND = 38
    SDLK_QUOTE = 39
    SDLK_LEFTPAREN = 40
    SDLK_RIGHTPAREN = 41
    SDLK_ASTERISK = 42
    SDLK_PLUS = 43
    SDLK_COMMA = 44
    SDLK_MINUS = 45
    SDLK_PERIOD = 46
    SDLK_SLASH = 47
    SDLK_0 = 48
    SDLK_1 = 49
    SDLK_2 = 50
    SDLK_3 = 51
    SDLK_4 = 52
    SDLK_5 = 53
    SDLK_6 = 54
    SDLK_7 = 55
    SDLK_8 = 56
    SDLK_9 = 57
    SDLK_COLON = 58
    SDLK_SEMICOLON = 59
    SDLK_LESS = 60
    SDLK_EQUALS = 61
    SDLK_GREATER = 62
    SDLK_QUESTION = 63
    SDLK_AT = 64
    SDLK_LEFTBRACKET = 91
    SDLK_BACKSLASH = 92
    SDLK_RIGHTBRACKET = 93
    SDLK_CARET = 94
    SDLK_UNDERSCORE = 95
    SDLK_BACKQUOTE = 96
    SDLK_a = 97
    SDLK_b = 98
    SDLK_c = 99
    SDLK_d = 100
    SDLK_e = 101
    SDLK_f = 102
    SDLK_g = 103
    SDLK_h = 104
    SDLK_i = 105
    SDLK_j = 106
    SDLK_k = 107
    SDLK_l = 108
    SDLK_m = 109
    SDLK_n = 110
    SDLK_o = 111
    SDLK_p = 112
    SDLK_q = 113
    SDLK_r = 114
    SDLK_s = 115
    SDLK_t = 116
    SDLK_u = 117
    SDLK_v = 118
    SDLK_w = 119
    SDLK_x = 120
    SDLK_y = 121
    SDLK_z = 122
    SDLK_CAPSLOCK = 1073741881
    SDLK_F1 = 1073741882
    SDLK_F2 = 1073741883
    SDLK_F3 = 1073741884
    SDLK_F4 = 1073741885
    SDLK_F5 = 1073741886
    SDLK_F6 = 1073741887
    SDLK_F7 = 1073741888
    SDLK_F8 = 1073741889
    SDLK_F9 = 1073741890
    SDLK_F10 = 1073741891
    SDLK_F11 = 1073741892
    SDLK_F12 = 1073741893
    SDLK_PRINTSCREEN = 1073741894
    SDLK_SCROLLLOCK = 1073741895
    SDLK_PAUSE = 1073741896
    SDLK_INSERT = 1073741897
    SDLK_HOME = 1073741898
    SDLK_PAGEUP = 1073741899
    SDLK_DELETE = 127
    SDLK_END = 1073741901
    SDLK_PAGEDOWN = 1073741902
    SDLK_RIGHT = 1073741903
    SDLK_LEFT = 1073741904
    SDLK_DOWN = 1073741905
    SDLK_UP = 1073741906
    SDLK_NUMLOCKCLEAR = 1073741907
    SDLK_KP_DIVIDE = 1073741908
    SDLK_KP_MULTIPLY = 1073741909
    SDLK_KP_MINUS = 1073741910
    SDLK_KP_PLUS = 1073741911
    SDLK_KP_ENTER = 1073741912
    SDLK_KP_1 = 1073741913
    SDLK_KP_2 = 1073741914
    SDLK_KP_3 = 1073741915
    SDLK_KP_4 = 1073741916
    SDLK_KP_5 = 1073741917
    SDLK_KP_6 = 1073741918
    SDLK_KP_7 = 1073741919
    SDLK_KP_8 = 1073741920
    SDLK_KP_9 = 1073741921
    SDLK_KP_0 = 1073741922
    SDLK_KP_PERIOD = 1073741923
    SDLK_APPLICATION = 1073741925
    SDLK_POWER = 1073741926
    SDLK_KP_EQUALS = 1073741927
    SDLK_F13 = 1073741928
    SDLK_F14 = 1073741929
    SDLK_F15 = 1073741930
    SDLK_F16 = 1073741931
    SDLK_F17 = 1073741932
    SDLK_F18 = 1073741933
    SDLK_F19 = 1073741934
    SDLK_F20 = 1073741935
    SDLK_F21 = 1073741936
    SDLK_F22 = 1073741937
    SDLK_F23 = 1073741938
    SDLK_F24 = 1073741939
    SDLK_EXECUTE = 1073741940
    SDLK_HELP = 1073741941
    SDLK_MENU = 1073741942
    SDLK_SELECT = 1073741943
    SDLK_STOP = 1073741944
    SDLK_AGAIN = 1073741945
    SDLK_UNDO = 1073741946
    SDLK_CUT = 1073741947
    SDLK_COPY = 1073741948
    SDLK_PASTE = 1073741949
    SDLK_FIND = 1073741950
    SDLK_MUTE = 1073741951
    SDLK_VOLUMEUP = 1073741952
    SDLK_VOLUMEDOWN = 1073741953
    SDLK_KP_COMMA = 1073741957
    SDLK_KP_EQUALSAS400 = 1073741958
    SDLK_ALTERASE = 1073741977
    SDLK_SYSREQ = 1073741978
    SDLK_CANCEL = 1073741979
    SDLK_CLEAR = 1073741980
    SDLK_PRIOR = 1073741981
    SDLK_RETURN2 = 1073741982
    SDLK_SEPARATOR = 1073741983
    SDLK_OUT = 1073741984
    SDLK_OPER = 1073741985
    SDLK_CLEARAGAIN = 1073741986
    SDLK_CRSEL = 1073741987
    SDLK_EXSEL = 1073741988
    SDLK_KP_00 = 1073742000
    SDLK_KP_000 = 1073742001
    SDLK_THOUSANDSSEPARATOR = 1073742002
    SDLK_DECIMALSEPARATOR = 1073742003
    SDLK_CURRENCYUNIT = 1073742004
    SDLK_CURRENCYSUBUNIT = 1073742005
    SDLK_KP_LEFTPAREN = 1073742006
    SDLK_KP_RIGHTPAREN = 1073742007
    SDLK_KP_LEFTBRACE = 1073742008
    SDLK_KP_RIGHTBRACE = 1073742009
    SDLK_KP_TAB = 1073742010
    SDLK_KP_BACKSPACE = 1073742011
    SDLK_KP_A = 1073742012
    SDLK_KP_B = 1073742013
    SDLK_KP_C = 1073742014
    SDLK_KP_D = 1073742015
    SDLK_KP_E = 1073742016
    SDLK_KP_F = 1073742017
    SDLK_KP_XOR = 1073742018
    SDLK_KP_POWER = 1073742019
    SDLK_KP_PERCENT = 1073742020
    SDLK_KP_LESS = 1073742021
    SDLK_KP_GREATER = 1073742022
    SDLK_KP_AMPERSAND = 1073742023
    SDLK_KP_DBLAMPERSAND = 1073742024
    SDLK_KP_VERTICALBAR = 1073742025
    SDLK_KP_DBLVERTICALBAR = 1073742026
    SDLK_KP_COLON = 1073742027
    SDLK_KP_HASH = 1073742028
    SDLK_KP_SPACE = 1073742029
    SDLK_KP_AT = 1073742030
    SDLK_KP_EXCLAM = 1073742031
    SDLK_KP_MEMSTORE = 1073742032
    SDLK_KP_MEMRECALL = 1073742033
    SDLK_KP_MEMCLEAR = 1073742034
    SDLK_KP_MEMADD = 1073742035
    SDLK_KP_MEMSUBTRACT = 1073742036
    SDLK_KP_MEMMULTIPLY = 1073742037
    SDLK_KP_MEMDIVIDE = 1073742038
    SDLK_KP_PLUSMINUS = 1073742039
    SDLK_KP_CLEAR = 1073742040
    SDLK_KP_CLEARENTRY = 1073742041
    SDLK_KP_BINARY = 1073742042
    SDLK_KP_OCTAL = 1073742043
    SDLK_KP_DECIMAL = 1073742044
    SDLK_KP_HEXADECIMAL = 1073742045
    SDLK_LCTRL = 1073742048
    SDLK_LSHIFT = 1073742049
    SDLK_LALT = 1073742050
    SDLK_LGUI = 1073742051
    SDLK_RCTRL = 1073742052
    SDLK_RSHIFT = 1073742053
    SDLK_RALT = 1073742054
    SDLK_RGUI = 1073742055
    SDLK_MODE = 1073742081
    SDLK_AUDIONEXT = 1073742082
    SDLK_AUDIOPREV = 1073742083
    SDLK_AUDIOSTOP = 1073742084
    SDLK_AUDIOPLAY = 1073742085
    SDLK_AUDIOMUTE = 1073742086
    SDLK_MEDIASELECT = 1073742087
    SDLK_WWW = 1073742088
    SDLK_MAIL = 1073742089
    SDLK_CALCULATOR = 1073742090
    SDLK_COMPUTER = 1073742091
    SDLK_AC_SEARCH = 1073742092
    SDLK_AC_HOME = 1073742093
    SDLK_AC_BACK = 1073742094
    SDLK_AC_FORWARD = 1073742095
    SDLK_AC_STOP = 1073742096
    SDLK_AC_REFRESH = 1073742097
    SDLK_AC_BOOKMARKS = 1073742098
    SDLK_BRIGHTNESSDOWN = 1073742099
    SDLK_BRIGHTNESSUP = 1073742100
    SDLK_DISPLAYSWITCH = 1073742101
    SDLK_KBDILLUMTOGGLE = 1073742102
    SDLK_KBDILLUMDOWN = 1073742103
    SDLK_KBDILLUMUP = 1073742104
    SDLK_EJECT = 1073742105
    SDLK_SLEEP = 1073742106
    SDLK_APP1 = 1073742107
    SDLK_APP2 = 1073742108
    SDLK_AUDIOREWIND = 1073742109
    SDLK_AUDIOFASTFORWARD = 1073742110
    SDLK_SOFTLEFT = 1073742111
    SDLK_SOFTRIGHT = 1073742112
    SDLK_CALL = 1073742113
    SDLK_ENDCALL = 1073742114
end

@cenum SDL_Keymod::UInt32 begin
    KMOD_NONE = 0
    KMOD_LSHIFT = 1
    KMOD_RSHIFT = 2
    KMOD_LCTRL = 64
    KMOD_RCTRL = 128
    KMOD_LALT = 256
    KMOD_RALT = 512
    KMOD_LGUI = 1024
    KMOD_RGUI = 2048
    KMOD_NUM = 4096
    KMOD_CAPS = 8192
    KMOD_MODE = 16384
    KMOD_SCROLL = 32768
    KMOD_CTRL = 192
    KMOD_SHIFT = 3
    KMOD_ALT = 768
    KMOD_GUI = 3072
    KMOD_RESERVED = 32768
end

struct SDL_Keysym
    scancode::SDL_Scancode
    sym::SDL_Keycode
    mod::Uint16
    unused::Uint32
end

function SDL_GetKeyboardFocus()
    ccall((:SDL_GetKeyboardFocus, libsdl2), Ptr{SDL_Window}, ())
end

function SDL_GetKeyboardState(numkeys)
    ccall((:SDL_GetKeyboardState, libsdl2), Ptr{Uint8}, (Ptr{Cint},), numkeys)
end

function SDL_ResetKeyboard()
    ccall((:SDL_ResetKeyboard, libsdl2), Cvoid, ())
end

function SDL_GetModState()
    ccall((:SDL_GetModState, libsdl2), SDL_Keymod, ())
end

function SDL_SetModState(modstate)
    ccall((:SDL_SetModState, libsdl2), Cvoid, (SDL_Keymod,), modstate)
end

function SDL_GetKeyFromScancode(scancode)
    ccall((:SDL_GetKeyFromScancode, libsdl2), SDL_Keycode, (SDL_Scancode,), scancode)
end

function SDL_GetScancodeFromKey(key)
    ccall((:SDL_GetScancodeFromKey, libsdl2), SDL_Scancode, (SDL_Keycode,), key)
end

function SDL_GetScancodeName(scancode)
    ccall((:SDL_GetScancodeName, libsdl2), Ptr{Cchar}, (SDL_Scancode,), scancode)
end

function SDL_GetScancodeFromName(name)
    ccall((:SDL_GetScancodeFromName, libsdl2), SDL_Scancode, (Ptr{Cchar},), name)
end

function SDL_GetKeyName(key)
    ccall((:SDL_GetKeyName, libsdl2), Ptr{Cchar}, (SDL_Keycode,), key)
end

function SDL_GetKeyFromName(name)
    ccall((:SDL_GetKeyFromName, libsdl2), SDL_Keycode, (Ptr{Cchar},), name)
end

function SDL_StartTextInput()
    ccall((:SDL_StartTextInput, libsdl2), Cvoid, ())
end

function SDL_IsTextInputActive()
    ccall((:SDL_IsTextInputActive, libsdl2), SDL_bool, ())
end

function SDL_StopTextInput()
    ccall((:SDL_StopTextInput, libsdl2), Cvoid, ())
end

function SDL_ClearComposition()
    ccall((:SDL_ClearComposition, libsdl2), Cvoid, ())
end

function SDL_IsTextInputShown()
    ccall((:SDL_IsTextInputShown, libsdl2), SDL_bool, ())
end

function SDL_SetTextInputRect(rect)
    ccall((:SDL_SetTextInputRect, libsdl2), Cvoid, (Ptr{SDL_Rect},), rect)
end

function SDL_HasScreenKeyboardSupport()
    ccall((:SDL_HasScreenKeyboardSupport, libsdl2), SDL_bool, ())
end

function SDL_IsScreenKeyboardShown(window)
    ccall((:SDL_IsScreenKeyboardShown, libsdl2), SDL_bool, (Ptr{SDL_Window},), window)
end

mutable struct SDL_Cursor end

@cenum SDL_SystemCursor::UInt32 begin
    SDL_SYSTEM_CURSOR_ARROW = 0
    SDL_SYSTEM_CURSOR_IBEAM = 1
    SDL_SYSTEM_CURSOR_WAIT = 2
    SDL_SYSTEM_CURSOR_CROSSHAIR = 3
    SDL_SYSTEM_CURSOR_WAITARROW = 4
    SDL_SYSTEM_CURSOR_SIZENWSE = 5
    SDL_SYSTEM_CURSOR_SIZENESW = 6
    SDL_SYSTEM_CURSOR_SIZEWE = 7
    SDL_SYSTEM_CURSOR_SIZENS = 8
    SDL_SYSTEM_CURSOR_SIZEALL = 9
    SDL_SYSTEM_CURSOR_NO = 10
    SDL_SYSTEM_CURSOR_HAND = 11
    SDL_NUM_SYSTEM_CURSORS = 12
end

@cenum SDL_MouseWheelDirection::UInt32 begin
    SDL_MOUSEWHEEL_NORMAL = 0
    SDL_MOUSEWHEEL_FLIPPED = 1
end

function SDL_GetMouseFocus()
    ccall((:SDL_GetMouseFocus, libsdl2), Ptr{SDL_Window}, ())
end

function SDL_GetMouseState(x, y)
    ccall((:SDL_GetMouseState, libsdl2), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function SDL_GetGlobalMouseState(x, y)
    ccall((:SDL_GetGlobalMouseState, libsdl2), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function SDL_GetRelativeMouseState(x, y)
    ccall((:SDL_GetRelativeMouseState, libsdl2), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function SDL_WarpMouseInWindow(window, x, y)
    ccall((:SDL_WarpMouseInWindow, libsdl2), Cvoid, (Ptr{SDL_Window}, Cint, Cint), window, x, y)
end

function SDL_WarpMouseGlobal(x, y)
    ccall((:SDL_WarpMouseGlobal, libsdl2), Cint, (Cint, Cint), x, y)
end

function SDL_SetRelativeMouseMode(enabled)
    ccall((:SDL_SetRelativeMouseMode, libsdl2), Cint, (SDL_bool,), enabled)
end

function SDL_CaptureMouse(enabled)
    ccall((:SDL_CaptureMouse, libsdl2), Cint, (SDL_bool,), enabled)
end

function SDL_GetRelativeMouseMode()
    ccall((:SDL_GetRelativeMouseMode, libsdl2), SDL_bool, ())
end

function SDL_CreateCursor(data, mask, w, h, hot_x, hot_y)
    ccall((:SDL_CreateCursor, libsdl2), Ptr{SDL_Cursor}, (Ptr{Uint8}, Ptr{Uint8}, Cint, Cint, Cint, Cint), data, mask, w, h, hot_x, hot_y)
end

function SDL_CreateColorCursor(surface, hot_x, hot_y)
    ccall((:SDL_CreateColorCursor, libsdl2), Ptr{SDL_Cursor}, (Ptr{SDL_Surface}, Cint, Cint), surface, hot_x, hot_y)
end

function SDL_CreateSystemCursor(id)
    ccall((:SDL_CreateSystemCursor, libsdl2), Ptr{SDL_Cursor}, (SDL_SystemCursor,), id)
end

function SDL_SetCursor(cursor)
    ccall((:SDL_SetCursor, libsdl2), Cvoid, (Ptr{SDL_Cursor},), cursor)
end

function SDL_GetCursor()
    ccall((:SDL_GetCursor, libsdl2), Ptr{SDL_Cursor}, ())
end

function SDL_GetDefaultCursor()
    ccall((:SDL_GetDefaultCursor, libsdl2), Ptr{SDL_Cursor}, ())
end

function SDL_FreeCursor(cursor)
    ccall((:SDL_FreeCursor, libsdl2), Cvoid, (Ptr{SDL_Cursor},), cursor)
end

function SDL_ShowCursor(toggle)
    ccall((:SDL_ShowCursor, libsdl2), Cint, (Cint,), toggle)
end

struct SDL_GUID
    data::NTuple{16, Uint8}
end

function SDL_GUIDToString(guid, pszGUID, cbGUID)
    ccall((:SDL_GUIDToString, libsdl2), Cvoid, (SDL_GUID, Ptr{Cchar}, Cint), guid, pszGUID, cbGUID)
end

function SDL_GUIDFromString(pchGUID)
    ccall((:SDL_GUIDFromString, libsdl2), SDL_GUID, (Ptr{Cchar},), pchGUID)
end

mutable struct _SDL_Joystick end

const SDL_Joystick = _SDL_Joystick

const SDL_JoystickGUID = SDL_GUID

const SDL_JoystickID = Sint32

@cenum SDL_JoystickType::UInt32 begin
    SDL_JOYSTICK_TYPE_UNKNOWN = 0
    SDL_JOYSTICK_TYPE_GAMECONTROLLER = 1
    SDL_JOYSTICK_TYPE_WHEEL = 2
    SDL_JOYSTICK_TYPE_ARCADE_STICK = 3
    SDL_JOYSTICK_TYPE_FLIGHT_STICK = 4
    SDL_JOYSTICK_TYPE_DANCE_PAD = 5
    SDL_JOYSTICK_TYPE_GUITAR = 6
    SDL_JOYSTICK_TYPE_DRUM_KIT = 7
    SDL_JOYSTICK_TYPE_ARCADE_PAD = 8
    SDL_JOYSTICK_TYPE_THROTTLE = 9
end

@cenum SDL_JoystickPowerLevel::Int32 begin
    SDL_JOYSTICK_POWER_UNKNOWN = -1
    SDL_JOYSTICK_POWER_EMPTY = 0
    SDL_JOYSTICK_POWER_LOW = 1
    SDL_JOYSTICK_POWER_MEDIUM = 2
    SDL_JOYSTICK_POWER_FULL = 3
    SDL_JOYSTICK_POWER_WIRED = 4
    SDL_JOYSTICK_POWER_MAX = 5
end

function SDL_LockJoysticks()
    ccall((:SDL_LockJoysticks, libsdl2), Cvoid, ())
end

function SDL_UnlockJoysticks()
    ccall((:SDL_UnlockJoysticks, libsdl2), Cvoid, ())
end

function SDL_NumJoysticks()
    ccall((:SDL_NumJoysticks, libsdl2), Cint, ())
end

function SDL_JoystickNameForIndex(device_index)
    ccall((:SDL_JoystickNameForIndex, libsdl2), Ptr{Cchar}, (Cint,), device_index)
end

function SDL_JoystickPathForIndex(device_index)
    ccall((:SDL_JoystickPathForIndex, libsdl2), Ptr{Cchar}, (Cint,), device_index)
end

function SDL_JoystickGetDevicePlayerIndex(device_index)
    ccall((:SDL_JoystickGetDevicePlayerIndex, libsdl2), Cint, (Cint,), device_index)
end

function SDL_JoystickGetDeviceGUID(device_index)
    ccall((:SDL_JoystickGetDeviceGUID, libsdl2), SDL_JoystickGUID, (Cint,), device_index)
end

function SDL_JoystickGetDeviceVendor(device_index)
    ccall((:SDL_JoystickGetDeviceVendor, libsdl2), Uint16, (Cint,), device_index)
end

function SDL_JoystickGetDeviceProduct(device_index)
    ccall((:SDL_JoystickGetDeviceProduct, libsdl2), Uint16, (Cint,), device_index)
end

function SDL_JoystickGetDeviceProductVersion(device_index)
    ccall((:SDL_JoystickGetDeviceProductVersion, libsdl2), Uint16, (Cint,), device_index)
end

function SDL_JoystickGetDeviceType(device_index)
    ccall((:SDL_JoystickGetDeviceType, libsdl2), SDL_JoystickType, (Cint,), device_index)
end

function SDL_JoystickGetDeviceInstanceID(device_index)
    ccall((:SDL_JoystickGetDeviceInstanceID, libsdl2), SDL_JoystickID, (Cint,), device_index)
end

function SDL_JoystickOpen(device_index)
    ccall((:SDL_JoystickOpen, libsdl2), Ptr{SDL_Joystick}, (Cint,), device_index)
end

function SDL_JoystickFromInstanceID(instance_id)
    ccall((:SDL_JoystickFromInstanceID, libsdl2), Ptr{SDL_Joystick}, (SDL_JoystickID,), instance_id)
end

function SDL_JoystickFromPlayerIndex(player_index)
    ccall((:SDL_JoystickFromPlayerIndex, libsdl2), Ptr{SDL_Joystick}, (Cint,), player_index)
end

function SDL_JoystickAttachVirtual(type, naxes, nbuttons, nhats)
    ccall((:SDL_JoystickAttachVirtual, libsdl2), Cint, (SDL_JoystickType, Cint, Cint, Cint), type, naxes, nbuttons, nhats)
end

struct SDL_VirtualJoystickDesc
    version::Uint16
    type::Uint16
    naxes::Uint16
    nbuttons::Uint16
    nhats::Uint16
    vendor_id::Uint16
    product_id::Uint16
    padding::Uint16
    button_mask::Uint32
    axis_mask::Uint32
    name::Ptr{Cchar}
    userdata::Ptr{Cvoid}
    Update::Ptr{Cvoid}
    SetPlayerIndex::Ptr{Cvoid}
    Rumble::Ptr{Cvoid}
    RumbleTriggers::Ptr{Cvoid}
    SetLED::Ptr{Cvoid}
    SendEffect::Ptr{Cvoid}
end

function SDL_JoystickAttachVirtualEx(desc)
    ccall((:SDL_JoystickAttachVirtualEx, libsdl2), Cint, (Ptr{SDL_VirtualJoystickDesc},), desc)
end

function SDL_JoystickDetachVirtual(device_index)
    ccall((:SDL_JoystickDetachVirtual, libsdl2), Cint, (Cint,), device_index)
end

function SDL_JoystickIsVirtual(device_index)
    ccall((:SDL_JoystickIsVirtual, libsdl2), SDL_bool, (Cint,), device_index)
end

function SDL_JoystickSetVirtualAxis(joystick, axis, value)
    ccall((:SDL_JoystickSetVirtualAxis, libsdl2), Cint, (Ptr{SDL_Joystick}, Cint, Sint16), joystick, axis, value)
end

function SDL_JoystickSetVirtualButton(joystick, button, value)
    ccall((:SDL_JoystickSetVirtualButton, libsdl2), Cint, (Ptr{SDL_Joystick}, Cint, Uint8), joystick, button, value)
end

function SDL_JoystickSetVirtualHat(joystick, hat, value)
    ccall((:SDL_JoystickSetVirtualHat, libsdl2), Cint, (Ptr{SDL_Joystick}, Cint, Uint8), joystick, hat, value)
end

function SDL_JoystickName(joystick)
    ccall((:SDL_JoystickName, libsdl2), Ptr{Cchar}, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickPath(joystick)
    ccall((:SDL_JoystickPath, libsdl2), Ptr{Cchar}, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickGetPlayerIndex(joystick)
    ccall((:SDL_JoystickGetPlayerIndex, libsdl2), Cint, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickSetPlayerIndex(joystick, player_index)
    ccall((:SDL_JoystickSetPlayerIndex, libsdl2), Cvoid, (Ptr{SDL_Joystick}, Cint), joystick, player_index)
end

function SDL_JoystickGetGUID(joystick)
    ccall((:SDL_JoystickGetGUID, libsdl2), SDL_JoystickGUID, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickGetVendor(joystick)
    ccall((:SDL_JoystickGetVendor, libsdl2), Uint16, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickGetProduct(joystick)
    ccall((:SDL_JoystickGetProduct, libsdl2), Uint16, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickGetProductVersion(joystick)
    ccall((:SDL_JoystickGetProductVersion, libsdl2), Uint16, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickGetFirmwareVersion(joystick)
    ccall((:SDL_JoystickGetFirmwareVersion, libsdl2), Uint16, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickGetSerial(joystick)
    ccall((:SDL_JoystickGetSerial, libsdl2), Ptr{Cchar}, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickGetType(joystick)
    ccall((:SDL_JoystickGetType, libsdl2), SDL_JoystickType, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickGetGUIDString(guid, pszGUID, cbGUID)
    ccall((:SDL_JoystickGetGUIDString, libsdl2), Cvoid, (SDL_JoystickGUID, Ptr{Cchar}, Cint), guid, pszGUID, cbGUID)
end

function SDL_JoystickGetGUIDFromString(pchGUID)
    ccall((:SDL_JoystickGetGUIDFromString, libsdl2), SDL_JoystickGUID, (Ptr{Cchar},), pchGUID)
end

function SDL_JoystickGetAttached(joystick)
    ccall((:SDL_JoystickGetAttached, libsdl2), SDL_bool, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickInstanceID(joystick)
    ccall((:SDL_JoystickInstanceID, libsdl2), SDL_JoystickID, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickNumAxes(joystick)
    ccall((:SDL_JoystickNumAxes, libsdl2), Cint, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickNumBalls(joystick)
    ccall((:SDL_JoystickNumBalls, libsdl2), Cint, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickNumHats(joystick)
    ccall((:SDL_JoystickNumHats, libsdl2), Cint, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickNumButtons(joystick)
    ccall((:SDL_JoystickNumButtons, libsdl2), Cint, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickUpdate()
    ccall((:SDL_JoystickUpdate, libsdl2), Cvoid, ())
end

function SDL_JoystickEventState(state)
    ccall((:SDL_JoystickEventState, libsdl2), Cint, (Cint,), state)
end

function SDL_JoystickGetAxis(joystick, axis)
    ccall((:SDL_JoystickGetAxis, libsdl2), Sint16, (Ptr{SDL_Joystick}, Cint), joystick, axis)
end

function SDL_JoystickGetAxisInitialState(joystick, axis, state)
    ccall((:SDL_JoystickGetAxisInitialState, libsdl2), SDL_bool, (Ptr{SDL_Joystick}, Cint, Ptr{Sint16}), joystick, axis, state)
end

function SDL_JoystickGetHat(joystick, hat)
    ccall((:SDL_JoystickGetHat, libsdl2), Uint8, (Ptr{SDL_Joystick}, Cint), joystick, hat)
end

function SDL_JoystickGetBall(joystick, ball, dx, dy)
    ccall((:SDL_JoystickGetBall, libsdl2), Cint, (Ptr{SDL_Joystick}, Cint, Ptr{Cint}, Ptr{Cint}), joystick, ball, dx, dy)
end

function SDL_JoystickGetButton(joystick, button)
    ccall((:SDL_JoystickGetButton, libsdl2), Uint8, (Ptr{SDL_Joystick}, Cint), joystick, button)
end

function SDL_JoystickRumble(joystick, low_frequency_rumble, high_frequency_rumble, duration_ms)
    ccall((:SDL_JoystickRumble, libsdl2), Cint, (Ptr{SDL_Joystick}, Uint16, Uint16, Uint32), joystick, low_frequency_rumble, high_frequency_rumble, duration_ms)
end

function SDL_JoystickRumbleTriggers(joystick, left_rumble, right_rumble, duration_ms)
    ccall((:SDL_JoystickRumbleTriggers, libsdl2), Cint, (Ptr{SDL_Joystick}, Uint16, Uint16, Uint32), joystick, left_rumble, right_rumble, duration_ms)
end

function SDL_JoystickHasLED(joystick)
    ccall((:SDL_JoystickHasLED, libsdl2), SDL_bool, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickHasRumble(joystick)
    ccall((:SDL_JoystickHasRumble, libsdl2), SDL_bool, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickHasRumbleTriggers(joystick)
    ccall((:SDL_JoystickHasRumbleTriggers, libsdl2), SDL_bool, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickSetLED(joystick, red, green, blue)
    ccall((:SDL_JoystickSetLED, libsdl2), Cint, (Ptr{SDL_Joystick}, Uint8, Uint8, Uint8), joystick, red, green, blue)
end

function SDL_JoystickSendEffect(joystick, data, size)
    ccall((:SDL_JoystickSendEffect, libsdl2), Cint, (Ptr{SDL_Joystick}, Ptr{Cvoid}, Cint), joystick, data, size)
end

function SDL_JoystickClose(joystick)
    ccall((:SDL_JoystickClose, libsdl2), Cvoid, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickCurrentPowerLevel(joystick)
    ccall((:SDL_JoystickCurrentPowerLevel, libsdl2), SDL_JoystickPowerLevel, (Ptr{SDL_Joystick},), joystick)
end

mutable struct _SDL_Sensor end

const SDL_Sensor = _SDL_Sensor

const SDL_SensorID = Sint32

@cenum SDL_SensorType::Int32 begin
    SDL_SENSOR_INVALID = -1
    SDL_SENSOR_UNKNOWN = 0
    SDL_SENSOR_ACCEL = 1
    SDL_SENSOR_GYRO = 2
end

function SDL_LockSensors()
    ccall((:SDL_LockSensors, libsdl2), Cvoid, ())
end

function SDL_UnlockSensors()
    ccall((:SDL_UnlockSensors, libsdl2), Cvoid, ())
end

function SDL_NumSensors()
    ccall((:SDL_NumSensors, libsdl2), Cint, ())
end

function SDL_SensorGetDeviceName(device_index)
    ccall((:SDL_SensorGetDeviceName, libsdl2), Ptr{Cchar}, (Cint,), device_index)
end

function SDL_SensorGetDeviceType(device_index)
    ccall((:SDL_SensorGetDeviceType, libsdl2), SDL_SensorType, (Cint,), device_index)
end

function SDL_SensorGetDeviceNonPortableType(device_index)
    ccall((:SDL_SensorGetDeviceNonPortableType, libsdl2), Cint, (Cint,), device_index)
end

function SDL_SensorGetDeviceInstanceID(device_index)
    ccall((:SDL_SensorGetDeviceInstanceID, libsdl2), SDL_SensorID, (Cint,), device_index)
end

function SDL_SensorOpen(device_index)
    ccall((:SDL_SensorOpen, libsdl2), Ptr{SDL_Sensor}, (Cint,), device_index)
end

function SDL_SensorFromInstanceID(instance_id)
    ccall((:SDL_SensorFromInstanceID, libsdl2), Ptr{SDL_Sensor}, (SDL_SensorID,), instance_id)
end

function SDL_SensorGetName(sensor)
    ccall((:SDL_SensorGetName, libsdl2), Ptr{Cchar}, (Ptr{SDL_Sensor},), sensor)
end

function SDL_SensorGetType(sensor)
    ccall((:SDL_SensorGetType, libsdl2), SDL_SensorType, (Ptr{SDL_Sensor},), sensor)
end

function SDL_SensorGetNonPortableType(sensor)
    ccall((:SDL_SensorGetNonPortableType, libsdl2), Cint, (Ptr{SDL_Sensor},), sensor)
end

function SDL_SensorGetInstanceID(sensor)
    ccall((:SDL_SensorGetInstanceID, libsdl2), SDL_SensorID, (Ptr{SDL_Sensor},), sensor)
end

function SDL_SensorGetData(sensor, data, num_values)
    ccall((:SDL_SensorGetData, libsdl2), Cint, (Ptr{SDL_Sensor}, Ptr{Cfloat}, Cint), sensor, data, num_values)
end

function SDL_SensorClose(sensor)
    ccall((:SDL_SensorClose, libsdl2), Cvoid, (Ptr{SDL_Sensor},), sensor)
end

function SDL_SensorUpdate()
    ccall((:SDL_SensorUpdate, libsdl2), Cvoid, ())
end

mutable struct _SDL_GameController end

const SDL_GameController = _SDL_GameController

@cenum SDL_GameControllerType::UInt32 begin
    SDL_CONTROLLER_TYPE_UNKNOWN = 0
    SDL_CONTROLLER_TYPE_XBOX360 = 1
    SDL_CONTROLLER_TYPE_XBOXONE = 2
    SDL_CONTROLLER_TYPE_PS3 = 3
    SDL_CONTROLLER_TYPE_PS4 = 4
    SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_PRO = 5
    SDL_CONTROLLER_TYPE_VIRTUAL = 6
    SDL_CONTROLLER_TYPE_PS5 = 7
    SDL_CONTROLLER_TYPE_AMAZON_LUNA = 8
    SDL_CONTROLLER_TYPE_GOOGLE_STADIA = 9
    SDL_CONTROLLER_TYPE_NVIDIA_SHIELD = 10
    SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_LEFT = 11
    SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT = 12
    SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_PAIR = 13
end

@cenum SDL_GameControllerBindType::UInt32 begin
    SDL_CONTROLLER_BINDTYPE_NONE = 0
    SDL_CONTROLLER_BINDTYPE_BUTTON = 1
    SDL_CONTROLLER_BINDTYPE_AXIS = 2
    SDL_CONTROLLER_BINDTYPE_HAT = 3
end

struct __JL_Ctag_479
    data::NTuple{8, UInt8}
end

function Base.getproperty(x::Ptr{__JL_Ctag_479}, f::Symbol)
    f === :button && return Ptr{Cint}(x + 0)
    f === :axis && return Ptr{Cint}(x + 0)
    f === :hat && return Ptr{__JL_Ctag_480}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::__JL_Ctag_479, f::Symbol)
    r = Ref{__JL_Ctag_479}(x)
    ptr = Base.unsafe_convert(Ptr{__JL_Ctag_479}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{__JL_Ctag_479}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

struct SDL_GameControllerButtonBind
    data::NTuple{12, UInt8}
end

function Base.getproperty(x::Ptr{SDL_GameControllerButtonBind}, f::Symbol)
    f === :bindType && return Ptr{SDL_GameControllerBindType}(x + 0)
    f === :value && return Ptr{__JL_Ctag_479}(x + 4)
    return getfield(x, f)
end

function Base.getproperty(x::SDL_GameControllerButtonBind, f::Symbol)
    r = Ref{SDL_GameControllerButtonBind}(x)
    ptr = Base.unsafe_convert(Ptr{SDL_GameControllerButtonBind}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{SDL_GameControllerButtonBind}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

function SDL_GameControllerAddMapping(mappingString)
    ccall((:SDL_GameControllerAddMapping, libsdl2), Cint, (Ptr{Cchar},), mappingString)
end

function SDL_GameControllerNumMappings()
    ccall((:SDL_GameControllerNumMappings, libsdl2), Cint, ())
end

function SDL_GameControllerMappingForIndex(mapping_index)
    ccall((:SDL_GameControllerMappingForIndex, libsdl2), Ptr{Cchar}, (Cint,), mapping_index)
end

function SDL_GameControllerMappingForGUID(guid)
    ccall((:SDL_GameControllerMappingForGUID, libsdl2), Ptr{Cchar}, (SDL_JoystickGUID,), guid)
end

function SDL_GameControllerMapping(gamecontroller)
    ccall((:SDL_GameControllerMapping, libsdl2), Ptr{Cchar}, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_IsGameController(joystick_index)
    ccall((:SDL_IsGameController, libsdl2), SDL_bool, (Cint,), joystick_index)
end

function SDL_GameControllerNameForIndex(joystick_index)
    ccall((:SDL_GameControllerNameForIndex, libsdl2), Ptr{Cchar}, (Cint,), joystick_index)
end

function SDL_GameControllerPathForIndex(joystick_index)
    ccall((:SDL_GameControllerPathForIndex, libsdl2), Ptr{Cchar}, (Cint,), joystick_index)
end

function SDL_GameControllerTypeForIndex(joystick_index)
    ccall((:SDL_GameControllerTypeForIndex, libsdl2), SDL_GameControllerType, (Cint,), joystick_index)
end

function SDL_GameControllerMappingForDeviceIndex(joystick_index)
    ccall((:SDL_GameControllerMappingForDeviceIndex, libsdl2), Ptr{Cchar}, (Cint,), joystick_index)
end

function SDL_GameControllerOpen(joystick_index)
    ccall((:SDL_GameControllerOpen, libsdl2), Ptr{SDL_GameController}, (Cint,), joystick_index)
end

function SDL_GameControllerFromInstanceID(joyid)
    ccall((:SDL_GameControllerFromInstanceID, libsdl2), Ptr{SDL_GameController}, (SDL_JoystickID,), joyid)
end

function SDL_GameControllerFromPlayerIndex(player_index)
    ccall((:SDL_GameControllerFromPlayerIndex, libsdl2), Ptr{SDL_GameController}, (Cint,), player_index)
end

function SDL_GameControllerName(gamecontroller)
    ccall((:SDL_GameControllerName, libsdl2), Ptr{Cchar}, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerPath(gamecontroller)
    ccall((:SDL_GameControllerPath, libsdl2), Ptr{Cchar}, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetType(gamecontroller)
    ccall((:SDL_GameControllerGetType, libsdl2), SDL_GameControllerType, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetPlayerIndex(gamecontroller)
    ccall((:SDL_GameControllerGetPlayerIndex, libsdl2), Cint, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerSetPlayerIndex(gamecontroller, player_index)
    ccall((:SDL_GameControllerSetPlayerIndex, libsdl2), Cvoid, (Ptr{SDL_GameController}, Cint), gamecontroller, player_index)
end

function SDL_GameControllerGetVendor(gamecontroller)
    ccall((:SDL_GameControllerGetVendor, libsdl2), Uint16, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetProduct(gamecontroller)
    ccall((:SDL_GameControllerGetProduct, libsdl2), Uint16, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetProductVersion(gamecontroller)
    ccall((:SDL_GameControllerGetProductVersion, libsdl2), Uint16, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetFirmwareVersion(gamecontroller)
    ccall((:SDL_GameControllerGetFirmwareVersion, libsdl2), Uint16, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetSerial(gamecontroller)
    ccall((:SDL_GameControllerGetSerial, libsdl2), Ptr{Cchar}, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetAttached(gamecontroller)
    ccall((:SDL_GameControllerGetAttached, libsdl2), SDL_bool, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetJoystick(gamecontroller)
    ccall((:SDL_GameControllerGetJoystick, libsdl2), Ptr{SDL_Joystick}, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerEventState(state)
    ccall((:SDL_GameControllerEventState, libsdl2), Cint, (Cint,), state)
end

function SDL_GameControllerUpdate()
    ccall((:SDL_GameControllerUpdate, libsdl2), Cvoid, ())
end

@cenum SDL_GameControllerAxis::Int32 begin
    SDL_CONTROLLER_AXIS_INVALID = -1
    SDL_CONTROLLER_AXIS_LEFTX = 0
    SDL_CONTROLLER_AXIS_LEFTY = 1
    SDL_CONTROLLER_AXIS_RIGHTX = 2
    SDL_CONTROLLER_AXIS_RIGHTY = 3
    SDL_CONTROLLER_AXIS_TRIGGERLEFT = 4
    SDL_CONTROLLER_AXIS_TRIGGERRIGHT = 5
    SDL_CONTROLLER_AXIS_MAX = 6
end

function SDL_GameControllerGetAxisFromString(str)
    ccall((:SDL_GameControllerGetAxisFromString, libsdl2), SDL_GameControllerAxis, (Ptr{Cchar},), str)
end

function SDL_GameControllerGetStringForAxis(axis)
    ccall((:SDL_GameControllerGetStringForAxis, libsdl2), Ptr{Cchar}, (SDL_GameControllerAxis,), axis)
end

function SDL_GameControllerGetBindForAxis(gamecontroller, axis)
    ccall((:SDL_GameControllerGetBindForAxis, libsdl2), SDL_GameControllerButtonBind, (Ptr{SDL_GameController}, SDL_GameControllerAxis), gamecontroller, axis)
end

function SDL_GameControllerHasAxis(gamecontroller, axis)
    ccall((:SDL_GameControllerHasAxis, libsdl2), SDL_bool, (Ptr{SDL_GameController}, SDL_GameControllerAxis), gamecontroller, axis)
end

function SDL_GameControllerGetAxis(gamecontroller, axis)
    ccall((:SDL_GameControllerGetAxis, libsdl2), Sint16, (Ptr{SDL_GameController}, SDL_GameControllerAxis), gamecontroller, axis)
end

@cenum SDL_GameControllerButton::Int32 begin
    SDL_CONTROLLER_BUTTON_INVALID = -1
    SDL_CONTROLLER_BUTTON_A = 0
    SDL_CONTROLLER_BUTTON_B = 1
    SDL_CONTROLLER_BUTTON_X = 2
    SDL_CONTROLLER_BUTTON_Y = 3
    SDL_CONTROLLER_BUTTON_BACK = 4
    SDL_CONTROLLER_BUTTON_GUIDE = 5
    SDL_CONTROLLER_BUTTON_START = 6
    SDL_CONTROLLER_BUTTON_LEFTSTICK = 7
    SDL_CONTROLLER_BUTTON_RIGHTSTICK = 8
    SDL_CONTROLLER_BUTTON_LEFTSHOULDER = 9
    SDL_CONTROLLER_BUTTON_RIGHTSHOULDER = 10
    SDL_CONTROLLER_BUTTON_DPAD_UP = 11
    SDL_CONTROLLER_BUTTON_DPAD_DOWN = 12
    SDL_CONTROLLER_BUTTON_DPAD_LEFT = 13
    SDL_CONTROLLER_BUTTON_DPAD_RIGHT = 14
    SDL_CONTROLLER_BUTTON_MISC1 = 15
    SDL_CONTROLLER_BUTTON_PADDLE1 = 16
    SDL_CONTROLLER_BUTTON_PADDLE2 = 17
    SDL_CONTROLLER_BUTTON_PADDLE3 = 18
    SDL_CONTROLLER_BUTTON_PADDLE4 = 19
    SDL_CONTROLLER_BUTTON_TOUCHPAD = 20
    SDL_CONTROLLER_BUTTON_MAX = 21
end

function SDL_GameControllerGetButtonFromString(str)
    ccall((:SDL_GameControllerGetButtonFromString, libsdl2), SDL_GameControllerButton, (Ptr{Cchar},), str)
end

function SDL_GameControllerGetStringForButton(button)
    ccall((:SDL_GameControllerGetStringForButton, libsdl2), Ptr{Cchar}, (SDL_GameControllerButton,), button)
end

function SDL_GameControllerGetBindForButton(gamecontroller, button)
    ccall((:SDL_GameControllerGetBindForButton, libsdl2), SDL_GameControllerButtonBind, (Ptr{SDL_GameController}, SDL_GameControllerButton), gamecontroller, button)
end

function SDL_GameControllerHasButton(gamecontroller, button)
    ccall((:SDL_GameControllerHasButton, libsdl2), SDL_bool, (Ptr{SDL_GameController}, SDL_GameControllerButton), gamecontroller, button)
end

function SDL_GameControllerGetButton(gamecontroller, button)
    ccall((:SDL_GameControllerGetButton, libsdl2), Uint8, (Ptr{SDL_GameController}, SDL_GameControllerButton), gamecontroller, button)
end

function SDL_GameControllerGetNumTouchpads(gamecontroller)
    ccall((:SDL_GameControllerGetNumTouchpads, libsdl2), Cint, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetNumTouchpadFingers(gamecontroller, touchpad)
    ccall((:SDL_GameControllerGetNumTouchpadFingers, libsdl2), Cint, (Ptr{SDL_GameController}, Cint), gamecontroller, touchpad)
end

function SDL_GameControllerGetTouchpadFinger(gamecontroller, touchpad, finger, state, x, y, pressure)
    ccall((:SDL_GameControllerGetTouchpadFinger, libsdl2), Cint, (Ptr{SDL_GameController}, Cint, Cint, Ptr{Uint8}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), gamecontroller, touchpad, finger, state, x, y, pressure)
end

function SDL_GameControllerHasSensor(gamecontroller, type)
    ccall((:SDL_GameControllerHasSensor, libsdl2), SDL_bool, (Ptr{SDL_GameController}, SDL_SensorType), gamecontroller, type)
end

function SDL_GameControllerSetSensorEnabled(gamecontroller, type, enabled)
    ccall((:SDL_GameControllerSetSensorEnabled, libsdl2), Cint, (Ptr{SDL_GameController}, SDL_SensorType, SDL_bool), gamecontroller, type, enabled)
end

function SDL_GameControllerIsSensorEnabled(gamecontroller, type)
    ccall((:SDL_GameControllerIsSensorEnabled, libsdl2), SDL_bool, (Ptr{SDL_GameController}, SDL_SensorType), gamecontroller, type)
end

function SDL_GameControllerGetSensorDataRate(gamecontroller, type)
    ccall((:SDL_GameControllerGetSensorDataRate, libsdl2), Cfloat, (Ptr{SDL_GameController}, SDL_SensorType), gamecontroller, type)
end

function SDL_GameControllerGetSensorData(gamecontroller, type, data, num_values)
    ccall((:SDL_GameControllerGetSensorData, libsdl2), Cint, (Ptr{SDL_GameController}, SDL_SensorType, Ptr{Cfloat}, Cint), gamecontroller, type, data, num_values)
end

function SDL_GameControllerRumble(gamecontroller, low_frequency_rumble, high_frequency_rumble, duration_ms)
    ccall((:SDL_GameControllerRumble, libsdl2), Cint, (Ptr{SDL_GameController}, Uint16, Uint16, Uint32), gamecontroller, low_frequency_rumble, high_frequency_rumble, duration_ms)
end

function SDL_GameControllerRumbleTriggers(gamecontroller, left_rumble, right_rumble, duration_ms)
    ccall((:SDL_GameControllerRumbleTriggers, libsdl2), Cint, (Ptr{SDL_GameController}, Uint16, Uint16, Uint32), gamecontroller, left_rumble, right_rumble, duration_ms)
end

function SDL_GameControllerHasLED(gamecontroller)
    ccall((:SDL_GameControllerHasLED, libsdl2), SDL_bool, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerHasRumble(gamecontroller)
    ccall((:SDL_GameControllerHasRumble, libsdl2), SDL_bool, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerHasRumbleTriggers(gamecontroller)
    ccall((:SDL_GameControllerHasRumbleTriggers, libsdl2), SDL_bool, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerSetLED(gamecontroller, red, green, blue)
    ccall((:SDL_GameControllerSetLED, libsdl2), Cint, (Ptr{SDL_GameController}, Uint8, Uint8, Uint8), gamecontroller, red, green, blue)
end

function SDL_GameControllerSendEffect(gamecontroller, data, size)
    ccall((:SDL_GameControllerSendEffect, libsdl2), Cint, (Ptr{SDL_GameController}, Ptr{Cvoid}, Cint), gamecontroller, data, size)
end

function SDL_GameControllerClose(gamecontroller)
    ccall((:SDL_GameControllerClose, libsdl2), Cvoid, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetAppleSFSymbolsNameForButton(gamecontroller, button)
    ccall((:SDL_GameControllerGetAppleSFSymbolsNameForButton, libsdl2), Ptr{Cchar}, (Ptr{SDL_GameController}, SDL_GameControllerButton), gamecontroller, button)
end

function SDL_GameControllerGetAppleSFSymbolsNameForAxis(gamecontroller, axis)
    ccall((:SDL_GameControllerGetAppleSFSymbolsNameForAxis, libsdl2), Ptr{Cchar}, (Ptr{SDL_GameController}, SDL_GameControllerAxis), gamecontroller, axis)
end

const SDL_TouchID = Sint64

const SDL_FingerID = Sint64

@cenum SDL_TouchDeviceType::Int32 begin
    SDL_TOUCH_DEVICE_INVALID = -1
    SDL_TOUCH_DEVICE_DIRECT = 0
    SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE = 1
    SDL_TOUCH_DEVICE_INDIRECT_RELATIVE = 2
end

struct SDL_Finger
    id::SDL_FingerID
    x::Cfloat
    y::Cfloat
    pressure::Cfloat
end

function SDL_GetNumTouchDevices()
    ccall((:SDL_GetNumTouchDevices, libsdl2), Cint, ())
end

function SDL_GetTouchDevice(index)
    ccall((:SDL_GetTouchDevice, libsdl2), SDL_TouchID, (Cint,), index)
end

function SDL_GetTouchName(index)
    ccall((:SDL_GetTouchName, libsdl2), Ptr{Cchar}, (Cint,), index)
end

function SDL_GetTouchDeviceType(touchID)
    ccall((:SDL_GetTouchDeviceType, libsdl2), SDL_TouchDeviceType, (SDL_TouchID,), touchID)
end

function SDL_GetNumTouchFingers(touchID)
    ccall((:SDL_GetNumTouchFingers, libsdl2), Cint, (SDL_TouchID,), touchID)
end

function SDL_GetTouchFinger(touchID, index)
    ccall((:SDL_GetTouchFinger, libsdl2), Ptr{SDL_Finger}, (SDL_TouchID, Cint), touchID, index)
end

const SDL_GestureID = Sint64

function SDL_RecordGesture(touchId)
    ccall((:SDL_RecordGesture, libsdl2), Cint, (SDL_TouchID,), touchId)
end

function SDL_SaveAllDollarTemplates(dst)
    ccall((:SDL_SaveAllDollarTemplates, libsdl2), Cint, (Ptr{SDL_RWops},), dst)
end

function SDL_SaveDollarTemplate(gestureId, dst)
    ccall((:SDL_SaveDollarTemplate, libsdl2), Cint, (SDL_GestureID, Ptr{SDL_RWops}), gestureId, dst)
end

function SDL_LoadDollarTemplates(touchId, src)
    ccall((:SDL_LoadDollarTemplates, libsdl2), Cint, (SDL_TouchID, Ptr{SDL_RWops}), touchId, src)
end

@cenum SDL_EventType::UInt32 begin
    SDL_FIRSTEVENT = 0
    SDL_QUIT = 256
    SDL_APP_TERMINATING = 257
    SDL_APP_LOWMEMORY = 258
    SDL_APP_WILLENTERBACKGROUND = 259
    SDL_APP_DIDENTERBACKGROUND = 260
    SDL_APP_WILLENTERFOREGROUND = 261
    SDL_APP_DIDENTERFOREGROUND = 262
    SDL_LOCALECHANGED = 263
    SDL_DISPLAYEVENT = 336
    SDL_WINDOWEVENT = 512
    SDL_SYSWMEVENT = 513
    SDL_KEYDOWN = 768
    SDL_KEYUP = 769
    SDL_TEXTEDITING = 770
    SDL_TEXTINPUT = 771
    SDL_KEYMAPCHANGED = 772
    SDL_TEXTEDITING_EXT = 773
    SDL_MOUSEMOTION = 1024
    SDL_MOUSEBUTTONDOWN = 1025
    SDL_MOUSEBUTTONUP = 1026
    SDL_MOUSEWHEEL = 1027
    SDL_JOYAXISMOTION = 1536
    SDL_JOYBALLMOTION = 1537
    SDL_JOYHATMOTION = 1538
    SDL_JOYBUTTONDOWN = 1539
    SDL_JOYBUTTONUP = 1540
    SDL_JOYDEVICEADDED = 1541
    SDL_JOYDEVICEREMOVED = 1542
    SDL_JOYBATTERYUPDATED = 1543
    SDL_CONTROLLERAXISMOTION = 1616
    SDL_CONTROLLERBUTTONDOWN = 1617
    SDL_CONTROLLERBUTTONUP = 1618
    SDL_CONTROLLERDEVICEADDED = 1619
    SDL_CONTROLLERDEVICEREMOVED = 1620
    SDL_CONTROLLERDEVICEREMAPPED = 1621
    SDL_CONTROLLERTOUCHPADDOWN = 1622
    SDL_CONTROLLERTOUCHPADMOTION = 1623
    SDL_CONTROLLERTOUCHPADUP = 1624
    SDL_CONTROLLERSENSORUPDATE = 1625
    SDL_FINGERDOWN = 1792
    SDL_FINGERUP = 1793
    SDL_FINGERMOTION = 1794
    SDL_DOLLARGESTURE = 2048
    SDL_DOLLARRECORD = 2049
    SDL_MULTIGESTURE = 2050
    SDL_CLIPBOARDUPDATE = 2304
    SDL_DROPFILE = 4096
    SDL_DROPTEXT = 4097
    SDL_DROPBEGIN = 4098
    SDL_DROPCOMPLETE = 4099
    SDL_AUDIODEVICEADDED = 4352
    SDL_AUDIODEVICEREMOVED = 4353
    SDL_SENSORUPDATE = 4608
    SDL_RENDER_TARGETS_RESET = 8192
    SDL_RENDER_DEVICE_RESET = 8193
    SDL_POLLSENTINEL = 32512
    SDL_USEREVENT = 32768
    SDL_LASTEVENT = 65535
end

struct SDL_CommonEvent
    type::Uint32
    timestamp::Uint32
end

struct SDL_DisplayEvent
    type::Uint32
    timestamp::Uint32
    display::Uint32
    event::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    data1::Sint32
end

struct SDL_WindowEvent
    type::Uint32
    timestamp::Uint32
    windowID::Uint32
    event::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    data1::Sint32
    data2::Sint32
end

struct SDL_KeyboardEvent
    type::Uint32
    timestamp::Uint32
    windowID::Uint32
    state::Uint8
    repeat::Uint8
    padding2::Uint8
    padding3::Uint8
    keysym::SDL_Keysym
end

struct SDL_TextEditingEvent
    type::Uint32
    timestamp::Uint32
    windowID::Uint32
    text::NTuple{32, Cchar}
    start::Sint32
    length::Sint32
end

struct SDL_TextEditingExtEvent
    type::Uint32
    timestamp::Uint32
    windowID::Uint32
    text::Ptr{Cchar}
    start::Sint32
    length::Sint32
end

struct SDL_TextInputEvent
    type::Uint32
    timestamp::Uint32
    windowID::Uint32
    text::NTuple{32, Cchar}
end

struct SDL_MouseMotionEvent
    type::Uint32
    timestamp::Uint32
    windowID::Uint32
    which::Uint32
    state::Uint32
    x::Sint32
    y::Sint32
    xrel::Sint32
    yrel::Sint32
end

struct SDL_MouseButtonEvent
    type::Uint32
    timestamp::Uint32
    windowID::Uint32
    which::Uint32
    button::Uint8
    state::Uint8
    clicks::Uint8
    padding1::Uint8
    x::Sint32
    y::Sint32
end

struct SDL_MouseWheelEvent
    type::Uint32
    timestamp::Uint32
    windowID::Uint32
    which::Uint32
    x::Sint32
    y::Sint32
    direction::Uint32
    preciseX::Cfloat
    preciseY::Cfloat
end

struct SDL_JoyAxisEvent
    type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    axis::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    value::Sint16
    padding4::Uint16
end

struct SDL_JoyBallEvent
    type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    ball::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    xrel::Sint16
    yrel::Sint16
end

struct SDL_JoyHatEvent
    type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    hat::Uint8
    value::Uint8
    padding1::Uint8
    padding2::Uint8
end

struct SDL_JoyButtonEvent
    type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    button::Uint8
    state::Uint8
    padding1::Uint8
    padding2::Uint8
end

struct SDL_JoyDeviceEvent
    type::Uint32
    timestamp::Uint32
    which::Sint32
end

struct SDL_JoyBatteryEvent
    type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    level::SDL_JoystickPowerLevel
end

struct SDL_ControllerAxisEvent
    type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    axis::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    value::Sint16
    padding4::Uint16
end

struct SDL_ControllerButtonEvent
    type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    button::Uint8
    state::Uint8
    padding1::Uint8
    padding2::Uint8
end

struct SDL_ControllerDeviceEvent
    type::Uint32
    timestamp::Uint32
    which::Sint32
end

struct SDL_ControllerTouchpadEvent
    type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    touchpad::Sint32
    finger::Sint32
    x::Cfloat
    y::Cfloat
    pressure::Cfloat
end

struct SDL_ControllerSensorEvent
    type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    sensor::Sint32
    data::NTuple{3, Cfloat}
end

struct SDL_AudioDeviceEvent
    type::Uint32
    timestamp::Uint32
    which::Uint32
    iscapture::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
end

struct SDL_TouchFingerEvent
    type::Uint32
    timestamp::Uint32
    touchId::SDL_TouchID
    fingerId::SDL_FingerID
    x::Cfloat
    y::Cfloat
    dx::Cfloat
    dy::Cfloat
    pressure::Cfloat
    windowID::Uint32
end

struct SDL_MultiGestureEvent
    type::Uint32
    timestamp::Uint32
    touchId::SDL_TouchID
    dTheta::Cfloat
    dDist::Cfloat
    x::Cfloat
    y::Cfloat
    numFingers::Uint16
    padding::Uint16
end

struct SDL_DollarGestureEvent
    type::Uint32
    timestamp::Uint32
    touchId::SDL_TouchID
    gestureId::SDL_GestureID
    numFingers::Uint32
    error::Cfloat
    x::Cfloat
    y::Cfloat
end

struct SDL_DropEvent
    type::Uint32
    timestamp::Uint32
    file::Ptr{Cchar}
    windowID::Uint32
end

struct SDL_SensorEvent
    type::Uint32
    timestamp::Uint32
    which::Sint32
    data::NTuple{6, Cfloat}
end

struct SDL_QuitEvent
    type::Uint32
    timestamp::Uint32
end

struct SDL_OSEvent
    type::Uint32
    timestamp::Uint32
end

struct SDL_UserEvent
    type::Uint32
    timestamp::Uint32
    windowID::Uint32
    code::Sint32
    data1::Ptr{Cvoid}
    data2::Ptr{Cvoid}
end

mutable struct SDL_SysWMmsg end

struct SDL_SysWMEvent
    type::Uint32
    timestamp::Uint32
    msg::Ptr{SDL_SysWMmsg}
end

function SDL_HasEvent(type)
    ccall((:SDL_HasEvent, libsdl2), SDL_bool, (Uint32,), type)
end

function SDL_HasEvents(minType, maxType)
    ccall((:SDL_HasEvents, libsdl2), SDL_bool, (Uint32, Uint32), minType, maxType)
end

function SDL_FlushEvent(type)
    ccall((:SDL_FlushEvent, libsdl2), Cvoid, (Uint32,), type)
end

function SDL_FlushEvents(minType, maxType)
    ccall((:SDL_FlushEvents, libsdl2), Cvoid, (Uint32, Uint32), minType, maxType)
end

function SDL_PollEvent(event)
    ccall((:SDL_PollEvent, libsdl2), Cint, (Ptr{SDL_Event},), event)
end

function SDL_WaitEvent(event)
    ccall((:SDL_WaitEvent, libsdl2), Cint, (Ptr{SDL_Event},), event)
end

function SDL_WaitEventTimeout(event, timeout)
    ccall((:SDL_WaitEventTimeout, libsdl2), Cint, (Ptr{SDL_Event}, Cint), event, timeout)
end

function SDL_PushEvent(event)
    ccall((:SDL_PushEvent, libsdl2), Cint, (Ptr{SDL_Event},), event)
end

# typedef int ( SDLCALL * SDL_EventFilter ) ( void * userdata , SDL_Event * event )
const SDL_EventFilter = Ptr{Cvoid}

function SDL_SetEventFilter(filter, userdata)
    ccall((:SDL_SetEventFilter, libsdl2), Cvoid, (SDL_EventFilter, Ptr{Cvoid}), filter, userdata)
end

function SDL_GetEventFilter(filter, userdata)
    ccall((:SDL_GetEventFilter, libsdl2), SDL_bool, (Ptr{SDL_EventFilter}, Ptr{Ptr{Cvoid}}), filter, userdata)
end

function SDL_AddEventWatch(filter, userdata)
    ccall((:SDL_AddEventWatch, libsdl2), Cvoid, (SDL_EventFilter, Ptr{Cvoid}), filter, userdata)
end

function SDL_DelEventWatch(filter, userdata)
    ccall((:SDL_DelEventWatch, libsdl2), Cvoid, (SDL_EventFilter, Ptr{Cvoid}), filter, userdata)
end

function SDL_FilterEvents(filter, userdata)
    ccall((:SDL_FilterEvents, libsdl2), Cvoid, (SDL_EventFilter, Ptr{Cvoid}), filter, userdata)
end

function SDL_RegisterEvents(numevents)
    ccall((:SDL_RegisterEvents, libsdl2), Uint32, (Cint,), numevents)
end

function SDL_GetBasePath()
    ccall((:SDL_GetBasePath, libsdl2), Ptr{Cchar}, ())
end

function SDL_GetPrefPath(org, app)
    ccall((:SDL_GetPrefPath, libsdl2), Ptr{Cchar}, (Ptr{Cchar}, Ptr{Cchar}), org, app)
end

mutable struct _SDL_Haptic end

const SDL_Haptic = _SDL_Haptic

struct SDL_HapticDirection
    type::Uint8
    dir::NTuple{3, Sint32}
end

struct SDL_HapticConstant
    type::Uint16
    direction::SDL_HapticDirection
    length::Uint32
    delay::Uint16
    button::Uint16
    interval::Uint16
    level::Sint16
    attack_length::Uint16
    attack_level::Uint16
    fade_length::Uint16
    fade_level::Uint16
end

struct SDL_HapticPeriodic
    type::Uint16
    direction::SDL_HapticDirection
    length::Uint32
    delay::Uint16
    button::Uint16
    interval::Uint16
    period::Uint16
    magnitude::Sint16
    offset::Sint16
    phase::Uint16
    attack_length::Uint16
    attack_level::Uint16
    fade_length::Uint16
    fade_level::Uint16
end

struct SDL_HapticCondition
    type::Uint16
    direction::SDL_HapticDirection
    length::Uint32
    delay::Uint16
    button::Uint16
    interval::Uint16
    right_sat::NTuple{3, Uint16}
    left_sat::NTuple{3, Uint16}
    right_coeff::NTuple{3, Sint16}
    left_coeff::NTuple{3, Sint16}
    deadband::NTuple{3, Uint16}
    center::NTuple{3, Sint16}
end

struct SDL_HapticRamp
    type::Uint16
    direction::SDL_HapticDirection
    length::Uint32
    delay::Uint16
    button::Uint16
    interval::Uint16
    start::Sint16
    _end::Sint16
    attack_length::Uint16
    attack_level::Uint16
    fade_length::Uint16
    fade_level::Uint16
end

struct SDL_HapticLeftRight
    type::Uint16
    length::Uint32
    large_magnitude::Uint16
    small_magnitude::Uint16
end

struct SDL_HapticCustom
    type::Uint16
    direction::SDL_HapticDirection
    length::Uint32
    delay::Uint16
    button::Uint16
    interval::Uint16
    channels::Uint8
    period::Uint16
    samples::Uint16
    data::Ptr{Uint16}
    attack_length::Uint16
    attack_level::Uint16
    fade_length::Uint16
    fade_level::Uint16
end

struct SDL_HapticEffect
    data::NTuple{72, UInt8}
end

function Base.getproperty(x::Ptr{SDL_HapticEffect}, f::Symbol)
    f === :type && return Ptr{Uint16}(x + 0)
    f === :constant && return Ptr{SDL_HapticConstant}(x + 0)
    f === :periodic && return Ptr{SDL_HapticPeriodic}(x + 0)
    f === :condition && return Ptr{SDL_HapticCondition}(x + 0)
    f === :ramp && return Ptr{SDL_HapticRamp}(x + 0)
    f === :leftright && return Ptr{SDL_HapticLeftRight}(x + 0)
    f === :custom && return Ptr{SDL_HapticCustom}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::SDL_HapticEffect, f::Symbol)
    r = Ref{SDL_HapticEffect}(x)
    ptr = Base.unsafe_convert(Ptr{SDL_HapticEffect}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{SDL_HapticEffect}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

function SDL_NumHaptics()
    ccall((:SDL_NumHaptics, libsdl2), Cint, ())
end

function SDL_HapticName(device_index)
    ccall((:SDL_HapticName, libsdl2), Ptr{Cchar}, (Cint,), device_index)
end

function SDL_HapticOpen(device_index)
    ccall((:SDL_HapticOpen, libsdl2), Ptr{SDL_Haptic}, (Cint,), device_index)
end

function SDL_HapticOpened(device_index)
    ccall((:SDL_HapticOpened, libsdl2), Cint, (Cint,), device_index)
end

function SDL_HapticIndex(haptic)
    ccall((:SDL_HapticIndex, libsdl2), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_MouseIsHaptic()
    ccall((:SDL_MouseIsHaptic, libsdl2), Cint, ())
end

function SDL_HapticOpenFromMouse()
    ccall((:SDL_HapticOpenFromMouse, libsdl2), Ptr{SDL_Haptic}, ())
end

function SDL_JoystickIsHaptic(joystick)
    ccall((:SDL_JoystickIsHaptic, libsdl2), Cint, (Ptr{SDL_Joystick},), joystick)
end

function SDL_HapticOpenFromJoystick(joystick)
    ccall((:SDL_HapticOpenFromJoystick, libsdl2), Ptr{SDL_Haptic}, (Ptr{SDL_Joystick},), joystick)
end

function SDL_HapticClose(haptic)
    ccall((:SDL_HapticClose, libsdl2), Cvoid, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticNumEffects(haptic)
    ccall((:SDL_HapticNumEffects, libsdl2), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticNumEffectsPlaying(haptic)
    ccall((:SDL_HapticNumEffectsPlaying, libsdl2), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticQuery(haptic)
    ccall((:SDL_HapticQuery, libsdl2), Cuint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticNumAxes(haptic)
    ccall((:SDL_HapticNumAxes, libsdl2), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticEffectSupported(haptic, effect)
    ccall((:SDL_HapticEffectSupported, libsdl2), Cint, (Ptr{SDL_Haptic}, Ptr{SDL_HapticEffect}), haptic, effect)
end

function SDL_HapticNewEffect(haptic, effect)
    ccall((:SDL_HapticNewEffect, libsdl2), Cint, (Ptr{SDL_Haptic}, Ptr{SDL_HapticEffect}), haptic, effect)
end

function SDL_HapticUpdateEffect(haptic, effect, data)
    ccall((:SDL_HapticUpdateEffect, libsdl2), Cint, (Ptr{SDL_Haptic}, Cint, Ptr{SDL_HapticEffect}), haptic, effect, data)
end

function SDL_HapticRunEffect(haptic, effect, iterations)
    ccall((:SDL_HapticRunEffect, libsdl2), Cint, (Ptr{SDL_Haptic}, Cint, Uint32), haptic, effect, iterations)
end

function SDL_HapticStopEffect(haptic, effect)
    ccall((:SDL_HapticStopEffect, libsdl2), Cint, (Ptr{SDL_Haptic}, Cint), haptic, effect)
end

function SDL_HapticDestroyEffect(haptic, effect)
    ccall((:SDL_HapticDestroyEffect, libsdl2), Cvoid, (Ptr{SDL_Haptic}, Cint), haptic, effect)
end

function SDL_HapticGetEffectStatus(haptic, effect)
    ccall((:SDL_HapticGetEffectStatus, libsdl2), Cint, (Ptr{SDL_Haptic}, Cint), haptic, effect)
end

function SDL_HapticSetGain(haptic, gain)
    ccall((:SDL_HapticSetGain, libsdl2), Cint, (Ptr{SDL_Haptic}, Cint), haptic, gain)
end

function SDL_HapticSetAutocenter(haptic, autocenter)
    ccall((:SDL_HapticSetAutocenter, libsdl2), Cint, (Ptr{SDL_Haptic}, Cint), haptic, autocenter)
end

function SDL_HapticPause(haptic)
    ccall((:SDL_HapticPause, libsdl2), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticUnpause(haptic)
    ccall((:SDL_HapticUnpause, libsdl2), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticStopAll(haptic)
    ccall((:SDL_HapticStopAll, libsdl2), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticRumbleSupported(haptic)
    ccall((:SDL_HapticRumbleSupported, libsdl2), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticRumbleInit(haptic)
    ccall((:SDL_HapticRumbleInit, libsdl2), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticRumblePlay(haptic, strength, length)
    ccall((:SDL_HapticRumblePlay, libsdl2), Cint, (Ptr{SDL_Haptic}, Cfloat, Uint32), haptic, strength, length)
end

function SDL_HapticRumbleStop(haptic)
    ccall((:SDL_HapticRumbleStop, libsdl2), Cint, (Ptr{SDL_Haptic},), haptic)
end

mutable struct SDL_hid_device_ end

const SDL_hid_device = SDL_hid_device_

struct SDL_hid_device_info
    path::Ptr{Cchar}
    vendor_id::Cushort
    product_id::Cushort
    serial_number::Ptr{Cvoid} # serial_number::Ptr{Cwchar_t}
    release_number::Cushort
    manufacturer_string::Ptr{Cvoid} # manufacturer_string::Ptr{Cwchar_t}
    product_string::Ptr{Cvoid} # product_string::Ptr{Cwchar_t}
    usage_page::Cushort
    usage::Cushort
    interface_number::Cint
    interface_class::Cint
    interface_subclass::Cint
    interface_protocol::Cint
    next::Ptr{SDL_hid_device_info}
end

function Base.getproperty(x::SDL_hid_device_info, f::Symbol)
    f === :serial_number && return Ptr{Cwchar_t}(getfield(x, f))
    f === :manufacturer_string && return Ptr{Cwchar_t}(getfield(x, f))
    f === :product_string && return Ptr{Cwchar_t}(getfield(x, f))
    return getfield(x, f)
end

function SDL_hid_init()
    ccall((:SDL_hid_init, libsdl2), Cint, ())
end

function SDL_hid_exit()
    ccall((:SDL_hid_exit, libsdl2), Cint, ())
end

function SDL_hid_device_change_count()
    ccall((:SDL_hid_device_change_count, libsdl2), Uint32, ())
end

function SDL_hid_enumerate(vendor_id, product_id)
    ccall((:SDL_hid_enumerate, libsdl2), Ptr{SDL_hid_device_info}, (Cushort, Cushort), vendor_id, product_id)
end

function SDL_hid_free_enumeration(devs)
    ccall((:SDL_hid_free_enumeration, libsdl2), Cvoid, (Ptr{SDL_hid_device_info},), devs)
end

function SDL_hid_open(vendor_id, product_id, serial_number)
    ccall((:SDL_hid_open, libsdl2), Ptr{SDL_hid_device}, (Cushort, Cushort, Ptr{Cwchar_t}), vendor_id, product_id, serial_number)
end

function SDL_hid_open_path(path, bExclusive)
    ccall((:SDL_hid_open_path, libsdl2), Ptr{SDL_hid_device}, (Ptr{Cchar}, Cint), path, bExclusive)
end

function SDL_hid_write(dev, data, length)
    ccall((:SDL_hid_write, libsdl2), Cint, (Ptr{SDL_hid_device}, Ptr{Cuchar}, Csize_t), dev, data, length)
end

function SDL_hid_read_timeout(dev, data, length, milliseconds)
    ccall((:SDL_hid_read_timeout, libsdl2), Cint, (Ptr{SDL_hid_device}, Ptr{Cuchar}, Csize_t, Cint), dev, data, length, milliseconds)
end

function SDL_hid_read(dev, data, length)
    ccall((:SDL_hid_read, libsdl2), Cint, (Ptr{SDL_hid_device}, Ptr{Cuchar}, Csize_t), dev, data, length)
end

function SDL_hid_set_nonblocking(dev, nonblock)
    ccall((:SDL_hid_set_nonblocking, libsdl2), Cint, (Ptr{SDL_hid_device}, Cint), dev, nonblock)
end

function SDL_hid_send_feature_report(dev, data, length)
    ccall((:SDL_hid_send_feature_report, libsdl2), Cint, (Ptr{SDL_hid_device}, Ptr{Cuchar}, Csize_t), dev, data, length)
end

function SDL_hid_get_feature_report(dev, data, length)
    ccall((:SDL_hid_get_feature_report, libsdl2), Cint, (Ptr{SDL_hid_device}, Ptr{Cuchar}, Csize_t), dev, data, length)
end

function SDL_hid_close(dev)
    ccall((:SDL_hid_close, libsdl2), Cvoid, (Ptr{SDL_hid_device},), dev)
end

function SDL_hid_get_manufacturer_string(dev, string, maxlen)
    ccall((:SDL_hid_get_manufacturer_string, libsdl2), Cint, (Ptr{SDL_hid_device}, Ptr{Cwchar_t}, Csize_t), dev, string, maxlen)
end

function SDL_hid_get_product_string(dev, string, maxlen)
    ccall((:SDL_hid_get_product_string, libsdl2), Cint, (Ptr{SDL_hid_device}, Ptr{Cwchar_t}, Csize_t), dev, string, maxlen)
end

function SDL_hid_get_serial_number_string(dev, string, maxlen)
    ccall((:SDL_hid_get_serial_number_string, libsdl2), Cint, (Ptr{SDL_hid_device}, Ptr{Cwchar_t}, Csize_t), dev, string, maxlen)
end

function SDL_hid_get_indexed_string(dev, string_index, string, maxlen)
    ccall((:SDL_hid_get_indexed_string, libsdl2), Cint, (Ptr{SDL_hid_device}, Cint, Ptr{Cwchar_t}, Csize_t), dev, string_index, string, maxlen)
end

function SDL_hid_ble_scan(active)
    ccall((:SDL_hid_ble_scan, libsdl2), Cvoid, (SDL_bool,), active)
end

@cenum SDL_HintPriority::UInt32 begin
    SDL_HINT_DEFAULT = 0
    SDL_HINT_NORMAL = 1
    SDL_HINT_OVERRIDE = 2
end

function SDL_SetHintWithPriority(name, value, priority)
    ccall((:SDL_SetHintWithPriority, libsdl2), SDL_bool, (Ptr{Cchar}, Ptr{Cchar}, SDL_HintPriority), name, value, priority)
end

function SDL_SetHint(name, value)
    ccall((:SDL_SetHint, libsdl2), SDL_bool, (Ptr{Cchar}, Ptr{Cchar}), name, value)
end

function SDL_ResetHint(name)
    ccall((:SDL_ResetHint, libsdl2), SDL_bool, (Ptr{Cchar},), name)
end

function SDL_GetHint(name)
    ccall((:SDL_GetHint, libsdl2), Ptr{Cchar}, (Ptr{Cchar},), name)
end

function SDL_GetHintBoolean(name, default_value)
    ccall((:SDL_GetHintBoolean, libsdl2), SDL_bool, (Ptr{Cchar}, SDL_bool), name, default_value)
end

# typedef void ( SDLCALL * SDL_HintCallback ) ( void * userdata , const char * name , const char * oldValue , const char * newValue )
const SDL_HintCallback = Ptr{Cvoid}

function SDL_AddHintCallback(name, callback, userdata)
    ccall((:SDL_AddHintCallback, libsdl2), Cvoid, (Ptr{Cchar}, SDL_HintCallback, Ptr{Cvoid}), name, callback, userdata)
end

function SDL_DelHintCallback(name, callback, userdata)
    ccall((:SDL_DelHintCallback, libsdl2), Cvoid, (Ptr{Cchar}, SDL_HintCallback, Ptr{Cvoid}), name, callback, userdata)
end

function SDL_ClearHints()
    ccall((:SDL_ClearHints, libsdl2), Cvoid, ())
end

function SDL_LoadObject(sofile)
    ccall((:SDL_LoadObject, libsdl2), Ptr{Cvoid}, (Ptr{Cchar},), sofile)
end

function SDL_LoadFunction(handle, name)
    ccall((:SDL_LoadFunction, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cchar}), handle, name)
end

function SDL_UnloadObject(handle)
    ccall((:SDL_UnloadObject, libsdl2), Cvoid, (Ptr{Cvoid},), handle)
end

@cenum SDL_LogCategory::UInt32 begin
    SDL_LOG_CATEGORY_APPLICATION = 0
    SDL_LOG_CATEGORY_ERROR = 1
    SDL_LOG_CATEGORY_ASSERT = 2
    SDL_LOG_CATEGORY_SYSTEM = 3
    SDL_LOG_CATEGORY_AUDIO = 4
    SDL_LOG_CATEGORY_VIDEO = 5
    SDL_LOG_CATEGORY_RENDER = 6
    SDL_LOG_CATEGORY_INPUT = 7
    SDL_LOG_CATEGORY_TEST = 8
    SDL_LOG_CATEGORY_RESERVED1 = 9
    SDL_LOG_CATEGORY_RESERVED2 = 10
    SDL_LOG_CATEGORY_RESERVED3 = 11
    SDL_LOG_CATEGORY_RESERVED4 = 12
    SDL_LOG_CATEGORY_RESERVED5 = 13
    SDL_LOG_CATEGORY_RESERVED6 = 14
    SDL_LOG_CATEGORY_RESERVED7 = 15
    SDL_LOG_CATEGORY_RESERVED8 = 16
    SDL_LOG_CATEGORY_RESERVED9 = 17
    SDL_LOG_CATEGORY_RESERVED10 = 18
    SDL_LOG_CATEGORY_CUSTOM = 19
end

@cenum SDL_LogPriority::UInt32 begin
    SDL_LOG_PRIORITY_VERBOSE = 1
    SDL_LOG_PRIORITY_DEBUG = 2
    SDL_LOG_PRIORITY_INFO = 3
    SDL_LOG_PRIORITY_WARN = 4
    SDL_LOG_PRIORITY_ERROR = 5
    SDL_LOG_PRIORITY_CRITICAL = 6
    SDL_NUM_LOG_PRIORITIES = 7
end

function SDL_LogSetAllPriority(priority)
    ccall((:SDL_LogSetAllPriority, libsdl2), Cvoid, (SDL_LogPriority,), priority)
end

function SDL_LogSetPriority(category, priority)
    ccall((:SDL_LogSetPriority, libsdl2), Cvoid, (Cint, SDL_LogPriority), category, priority)
end

function SDL_LogGetPriority(category)
    ccall((:SDL_LogGetPriority, libsdl2), SDL_LogPriority, (Cint,), category)
end

function SDL_LogResetPriorities()
    ccall((:SDL_LogResetPriorities, libsdl2), Cvoid, ())
end

# typedef void ( SDLCALL * SDL_LogOutputFunction ) ( void * userdata , int category , SDL_LogPriority priority , const char * message )
const SDL_LogOutputFunction = Ptr{Cvoid}

function SDL_LogGetOutputFunction(callback, userdata)
    ccall((:SDL_LogGetOutputFunction, libsdl2), Cvoid, (Ptr{SDL_LogOutputFunction}, Ptr{Ptr{Cvoid}}), callback, userdata)
end

function SDL_LogSetOutputFunction(callback, userdata)
    ccall((:SDL_LogSetOutputFunction, libsdl2), Cvoid, (SDL_LogOutputFunction, Ptr{Cvoid}), callback, userdata)
end

@cenum SDL_MessageBoxFlags::UInt32 begin
    SDL_MESSAGEBOX_ERROR = 16
    SDL_MESSAGEBOX_WARNING = 32
    SDL_MESSAGEBOX_INFORMATION = 64
    SDL_MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT = 128
    SDL_MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT = 256
end

@cenum SDL_MessageBoxButtonFlags::UInt32 begin
    SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 1
    SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 2
end

struct SDL_MessageBoxButtonData
    flags::Uint32
    buttonid::Cint
    text::Ptr{Cchar}
end

struct SDL_MessageBoxColor
    r::Uint8
    g::Uint8
    b::Uint8
end

@cenum SDL_MessageBoxColorType::UInt32 begin
    SDL_MESSAGEBOX_COLOR_BACKGROUND = 0
    SDL_MESSAGEBOX_COLOR_TEXT = 1
    SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = 2
    SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3
    SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = 4
    SDL_MESSAGEBOX_COLOR_MAX = 5
end

struct SDL_MessageBoxColorScheme
    colors::NTuple{5, SDL_MessageBoxColor}
end

struct SDL_MessageBoxData
    flags::Uint32
    window::Ptr{SDL_Window}
    title::Ptr{Cchar}
    message::Ptr{Cchar}
    numbuttons::Cint
    buttons::Ptr{SDL_MessageBoxButtonData}
    colorScheme::Ptr{SDL_MessageBoxColorScheme}
end

function SDL_ShowMessageBox(messageboxdata, buttonid)
    ccall((:SDL_ShowMessageBox, libsdl2), Cint, (Ptr{SDL_MessageBoxData}, Ptr{Cint}), messageboxdata, buttonid)
end

function SDL_ShowSimpleMessageBox(flags, title, message, window)
    ccall((:SDL_ShowSimpleMessageBox, libsdl2), Cint, (Uint32, Ptr{Cchar}, Ptr{Cchar}, Ptr{SDL_Window}), flags, title, message, window)
end

const SDL_MetalView = Ptr{Cvoid}

function SDL_Metal_CreateView(window)
    ccall((:SDL_Metal_CreateView, libsdl2), SDL_MetalView, (Ptr{SDL_Window},), window)
end

function SDL_Metal_DestroyView(view)
    ccall((:SDL_Metal_DestroyView, libsdl2), Cvoid, (SDL_MetalView,), view)
end

function SDL_Metal_GetLayer(view)
    ccall((:SDL_Metal_GetLayer, libsdl2), Ptr{Cvoid}, (SDL_MetalView,), view)
end

function SDL_Metal_GetDrawableSize(window, w, h)
    ccall((:SDL_Metal_GetDrawableSize, libsdl2), Cvoid, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

@cenum SDL_PowerState::UInt32 begin
    SDL_POWERSTATE_UNKNOWN = 0
    SDL_POWERSTATE_ON_BATTERY = 1
    SDL_POWERSTATE_NO_BATTERY = 2
    SDL_POWERSTATE_CHARGING = 3
    SDL_POWERSTATE_CHARGED = 4
end

function SDL_GetPowerInfo(secs, pct)
    ccall((:SDL_GetPowerInfo, libsdl2), SDL_PowerState, (Ptr{Cint}, Ptr{Cint}), secs, pct)
end

@cenum SDL_RendererFlags::UInt32 begin
    SDL_RENDERER_SOFTWARE = 1
    SDL_RENDERER_ACCELERATED = 2
    SDL_RENDERER_PRESENTVSYNC = 4
    SDL_RENDERER_TARGETTEXTURE = 8
end

struct SDL_RendererInfo
    name::Ptr{Cchar}
    flags::Uint32
    num_texture_formats::Uint32
    texture_formats::NTuple{16, Uint32}
    max_texture_width::Cint
    max_texture_height::Cint
end

struct SDL_Vertex
    position::SDL_FPoint
    color::SDL_Color
    tex_coord::SDL_FPoint
end

@cenum SDL_ScaleMode::UInt32 begin
    SDL_ScaleModeNearest = 0
    SDL_ScaleModeLinear = 1
    SDL_ScaleModeBest = 2
end

@cenum SDL_TextureAccess::UInt32 begin
    SDL_TEXTUREACCESS_STATIC = 0
    SDL_TEXTUREACCESS_STREAMING = 1
    SDL_TEXTUREACCESS_TARGET = 2
end

@cenum SDL_TextureModulate::UInt32 begin
    SDL_TEXTUREMODULATE_NONE = 0
    SDL_TEXTUREMODULATE_COLOR = 1
    SDL_TEXTUREMODULATE_ALPHA = 2
end

@cenum SDL_RendererFlip::UInt32 begin
    SDL_FLIP_NONE = 0
    SDL_FLIP_HORIZONTAL = 1
    SDL_FLIP_VERTICAL = 2
end

mutable struct SDL_Renderer end

mutable struct SDL_Texture end

function SDL_GetNumRenderDrivers()
    ccall((:SDL_GetNumRenderDrivers, libsdl2), Cint, ())
end

function SDL_GetRenderDriverInfo(index, info)
    ccall((:SDL_GetRenderDriverInfo, libsdl2), Cint, (Cint, Ptr{SDL_RendererInfo}), index, info)
end

function SDL_CreateWindowAndRenderer(width, height, window_flags, window, renderer)
    ccall((:SDL_CreateWindowAndRenderer, libsdl2), Cint, (Cint, Cint, Uint32, Ptr{Ptr{SDL_Window}}, Ptr{Ptr{SDL_Renderer}}), width, height, window_flags, window, renderer)
end

function SDL_CreateRenderer(window, index, flags)
    ccall((:SDL_CreateRenderer, libsdl2), Ptr{SDL_Renderer}, (Ptr{SDL_Window}, Cint, Uint32), window, index, flags)
end

function SDL_CreateSoftwareRenderer(surface)
    ccall((:SDL_CreateSoftwareRenderer, libsdl2), Ptr{SDL_Renderer}, (Ptr{SDL_Surface},), surface)
end

function SDL_GetRenderer(window)
    ccall((:SDL_GetRenderer, libsdl2), Ptr{SDL_Renderer}, (Ptr{SDL_Window},), window)
end

function SDL_RenderGetWindow(renderer)
    ccall((:SDL_RenderGetWindow, libsdl2), Ptr{SDL_Window}, (Ptr{SDL_Renderer},), renderer)
end

function SDL_GetRendererInfo(renderer, info)
    ccall((:SDL_GetRendererInfo, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_RendererInfo}), renderer, info)
end

function SDL_GetRendererOutputSize(renderer, w, h)
    ccall((:SDL_GetRendererOutputSize, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{Cint}, Ptr{Cint}), renderer, w, h)
end

function SDL_CreateTexture(renderer, format, access, w, h)
    ccall((:SDL_CreateTexture, libsdl2), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Uint32, Cint, Cint, Cint), renderer, format, access, w, h)
end

function SDL_CreateTextureFromSurface(renderer, surface)
    ccall((:SDL_CreateTextureFromSurface, libsdl2), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Ptr{SDL_Surface}), renderer, surface)
end

function SDL_QueryTexture(texture, format, access, w, h)
    ccall((:SDL_QueryTexture, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{Uint32}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), texture, format, access, w, h)
end

function SDL_SetTextureColorMod(texture, r, g, b)
    ccall((:SDL_SetTextureColorMod, libsdl2), Cint, (Ptr{SDL_Texture}, Uint8, Uint8, Uint8), texture, r, g, b)
end

function SDL_GetTextureColorMod(texture, r, g, b)
    ccall((:SDL_GetTextureColorMod, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), texture, r, g, b)
end

function SDL_SetTextureAlphaMod(texture, alpha)
    ccall((:SDL_SetTextureAlphaMod, libsdl2), Cint, (Ptr{SDL_Texture}, Uint8), texture, alpha)
end

function SDL_GetTextureAlphaMod(texture, alpha)
    ccall((:SDL_GetTextureAlphaMod, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{Uint8}), texture, alpha)
end

function SDL_SetTextureBlendMode(texture, blendMode)
    ccall((:SDL_SetTextureBlendMode, libsdl2), Cint, (Ptr{SDL_Texture}, SDL_BlendMode), texture, blendMode)
end

function SDL_GetTextureBlendMode(texture, blendMode)
    ccall((:SDL_GetTextureBlendMode, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{SDL_BlendMode}), texture, blendMode)
end

function SDL_SetTextureScaleMode(texture, scaleMode)
    ccall((:SDL_SetTextureScaleMode, libsdl2), Cint, (Ptr{SDL_Texture}, SDL_ScaleMode), texture, scaleMode)
end

function SDL_GetTextureScaleMode(texture, scaleMode)
    ccall((:SDL_GetTextureScaleMode, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{SDL_ScaleMode}), texture, scaleMode)
end

function SDL_SetTextureUserData(texture, userdata)
    ccall((:SDL_SetTextureUserData, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{Cvoid}), texture, userdata)
end

function SDL_GetTextureUserData(texture)
    ccall((:SDL_GetTextureUserData, libsdl2), Ptr{Cvoid}, (Ptr{SDL_Texture},), texture)
end

function SDL_UpdateTexture(texture, rect, pixels, pitch)
    ccall((:SDL_UpdateTexture, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{Cvoid}, Cint), texture, rect, pixels, pitch)
end

function SDL_UpdateYUVTexture(texture, rect, Yplane, Ypitch, Uplane, Upitch, Vplane, Vpitch)
    ccall((:SDL_UpdateYUVTexture, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{Uint8}, Cint, Ptr{Uint8}, Cint, Ptr{Uint8}, Cint), texture, rect, Yplane, Ypitch, Uplane, Upitch, Vplane, Vpitch)
end

function SDL_UpdateNVTexture(texture, rect, Yplane, Ypitch, UVplane, UVpitch)
    ccall((:SDL_UpdateNVTexture, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{Uint8}, Cint, Ptr{Uint8}, Cint), texture, rect, Yplane, Ypitch, UVplane, UVpitch)
end

function SDL_LockTexture(texture, rect, pixels, pitch)
    ccall((:SDL_LockTexture, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{Ptr{Cvoid}}, Ptr{Cint}), texture, rect, pixels, pitch)
end

function SDL_LockTextureToSurface(texture, rect, surface)
    ccall((:SDL_LockTextureToSurface, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{Ptr{SDL_Surface}}), texture, rect, surface)
end

function SDL_UnlockTexture(texture)
    ccall((:SDL_UnlockTexture, libsdl2), Cvoid, (Ptr{SDL_Texture},), texture)
end

function SDL_RenderTargetSupported(renderer)
    ccall((:SDL_RenderTargetSupported, libsdl2), SDL_bool, (Ptr{SDL_Renderer},), renderer)
end

function SDL_SetRenderTarget(renderer, texture)
    ccall((:SDL_SetRenderTarget, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}), renderer, texture)
end

function SDL_GetRenderTarget(renderer)
    ccall((:SDL_GetRenderTarget, libsdl2), Ptr{SDL_Texture}, (Ptr{SDL_Renderer},), renderer)
end

function SDL_RenderSetLogicalSize(renderer, w, h)
    ccall((:SDL_RenderSetLogicalSize, libsdl2), Cint, (Ptr{SDL_Renderer}, Cint, Cint), renderer, w, h)
end

function SDL_RenderGetLogicalSize(renderer, w, h)
    ccall((:SDL_RenderGetLogicalSize, libsdl2), Cvoid, (Ptr{SDL_Renderer}, Ptr{Cint}, Ptr{Cint}), renderer, w, h)
end

function SDL_RenderSetIntegerScale(renderer, enable)
    ccall((:SDL_RenderSetIntegerScale, libsdl2), Cint, (Ptr{SDL_Renderer}, SDL_bool), renderer, enable)
end

function SDL_RenderGetIntegerScale(renderer)
    ccall((:SDL_RenderGetIntegerScale, libsdl2), SDL_bool, (Ptr{SDL_Renderer},), renderer)
end

function SDL_RenderSetViewport(renderer, rect)
    ccall((:SDL_RenderSetViewport, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderGetViewport(renderer, rect)
    ccall((:SDL_RenderGetViewport, libsdl2), Cvoid, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderSetClipRect(renderer, rect)
    ccall((:SDL_RenderSetClipRect, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderGetClipRect(renderer, rect)
    ccall((:SDL_RenderGetClipRect, libsdl2), Cvoid, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderIsClipEnabled(renderer)
    ccall((:SDL_RenderIsClipEnabled, libsdl2), SDL_bool, (Ptr{SDL_Renderer},), renderer)
end

function SDL_RenderSetScale(renderer, scaleX, scaleY)
    ccall((:SDL_RenderSetScale, libsdl2), Cint, (Ptr{SDL_Renderer}, Cfloat, Cfloat), renderer, scaleX, scaleY)
end

function SDL_RenderGetScale(renderer, scaleX, scaleY)
    ccall((:SDL_RenderGetScale, libsdl2), Cvoid, (Ptr{SDL_Renderer}, Ptr{Cfloat}, Ptr{Cfloat}), renderer, scaleX, scaleY)
end

function SDL_RenderWindowToLogical(renderer, windowX, windowY, logicalX, logicalY)
    ccall((:SDL_RenderWindowToLogical, libsdl2), Cvoid, (Ptr{SDL_Renderer}, Cint, Cint, Ptr{Cfloat}, Ptr{Cfloat}), renderer, windowX, windowY, logicalX, logicalY)
end

function SDL_RenderLogicalToWindow(renderer, logicalX, logicalY, windowX, windowY)
    ccall((:SDL_RenderLogicalToWindow, libsdl2), Cvoid, (Ptr{SDL_Renderer}, Cfloat, Cfloat, Ptr{Cint}, Ptr{Cint}), renderer, logicalX, logicalY, windowX, windowY)
end

function SDL_SetRenderDrawColor(renderer, r, g, b, a)
    ccall((:SDL_SetRenderDrawColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Uint8, Uint8, Uint8, Uint8), renderer, r, g, b, a)
end

function SDL_GetRenderDrawColor(renderer, r, g, b, a)
    ccall((:SDL_GetRenderDrawColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), renderer, r, g, b, a)
end

function SDL_SetRenderDrawBlendMode(renderer, blendMode)
    ccall((:SDL_SetRenderDrawBlendMode, libsdl2), Cint, (Ptr{SDL_Renderer}, SDL_BlendMode), renderer, blendMode)
end

function SDL_GetRenderDrawBlendMode(renderer, blendMode)
    ccall((:SDL_GetRenderDrawBlendMode, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_BlendMode}), renderer, blendMode)
end

function SDL_RenderClear(renderer)
    ccall((:SDL_RenderClear, libsdl2), Cint, (Ptr{SDL_Renderer},), renderer)
end

function SDL_RenderDrawPoint(renderer, x, y)
    ccall((:SDL_RenderDrawPoint, libsdl2), Cint, (Ptr{SDL_Renderer}, Cint, Cint), renderer, x, y)
end

function SDL_RenderDrawPoints(renderer, points, count)
    ccall((:SDL_RenderDrawPoints, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Point}, Cint), renderer, points, count)
end

function SDL_RenderDrawLine(renderer, x1, y1, x2, y2)
    ccall((:SDL_RenderDrawLine, libsdl2), Cint, (Ptr{SDL_Renderer}, Cint, Cint, Cint, Cint), renderer, x1, y1, x2, y2)
end

function SDL_RenderDrawLines(renderer, points, count)
    ccall((:SDL_RenderDrawLines, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Point}, Cint), renderer, points, count)
end

function SDL_RenderDrawRect(renderer, rect)
    ccall((:SDL_RenderDrawRect, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderDrawRects(renderer, rects, count)
    ccall((:SDL_RenderDrawRects, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}, Cint), renderer, rects, count)
end

function SDL_RenderFillRect(renderer, rect)
    ccall((:SDL_RenderFillRect, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderFillRects(renderer, rects, count)
    ccall((:SDL_RenderFillRects, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}, Cint), renderer, rects, count)
end

function SDL_RenderCopy(renderer, texture, srcrect, dstrect)
    ccall((:SDL_RenderCopy, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{SDL_Rect}), renderer, texture, srcrect, dstrect)
end

function SDL_RenderCopyEx(renderer, texture, srcrect, dstrect, angle, center, flip)
    ccall((:SDL_RenderCopyEx, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{SDL_Rect}, Cdouble, Ptr{SDL_Point}, SDL_RendererFlip), renderer, texture, srcrect, dstrect, angle, center, flip)
end

function SDL_RenderDrawPointF(renderer, x, y)
    ccall((:SDL_RenderDrawPointF, libsdl2), Cint, (Ptr{SDL_Renderer}, Cfloat, Cfloat), renderer, x, y)
end

function SDL_RenderDrawPointsF(renderer, points, count)
    ccall((:SDL_RenderDrawPointsF, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_FPoint}, Cint), renderer, points, count)
end

function SDL_RenderDrawLineF(renderer, x1, y1, x2, y2)
    ccall((:SDL_RenderDrawLineF, libsdl2), Cint, (Ptr{SDL_Renderer}, Cfloat, Cfloat, Cfloat, Cfloat), renderer, x1, y1, x2, y2)
end

function SDL_RenderDrawLinesF(renderer, points, count)
    ccall((:SDL_RenderDrawLinesF, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_FPoint}, Cint), renderer, points, count)
end

function SDL_RenderDrawRectF(renderer, rect)
    ccall((:SDL_RenderDrawRectF, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_FRect}), renderer, rect)
end

function SDL_RenderDrawRectsF(renderer, rects, count)
    ccall((:SDL_RenderDrawRectsF, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_FRect}, Cint), renderer, rects, count)
end

function SDL_RenderFillRectF(renderer, rect)
    ccall((:SDL_RenderFillRectF, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_FRect}), renderer, rect)
end

function SDL_RenderFillRectsF(renderer, rects, count)
    ccall((:SDL_RenderFillRectsF, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_FRect}, Cint), renderer, rects, count)
end

function SDL_RenderCopyF(renderer, texture, srcrect, dstrect)
    ccall((:SDL_RenderCopyF, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{SDL_FRect}), renderer, texture, srcrect, dstrect)
end

function SDL_RenderCopyExF(renderer, texture, srcrect, dstrect, angle, center, flip)
    ccall((:SDL_RenderCopyExF, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{SDL_FRect}, Cdouble, Ptr{SDL_FPoint}, SDL_RendererFlip), renderer, texture, srcrect, dstrect, angle, center, flip)
end

function SDL_RenderGeometry(renderer, texture, vertices, num_vertices, indices, num_indices)
    ccall((:SDL_RenderGeometry, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}, Ptr{SDL_Vertex}, Cint, Ptr{Cint}, Cint), renderer, texture, vertices, num_vertices, indices, num_indices)
end

function SDL_RenderGeometryRaw(renderer, texture, xy, xy_stride, color, color_stride, uv, uv_stride, num_vertices, indices, num_indices, size_indices)
    ccall((:SDL_RenderGeometryRaw, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}, Ptr{Cfloat}, Cint, Ptr{SDL_Color}, Cint, Ptr{Cfloat}, Cint, Cint, Ptr{Cvoid}, Cint, Cint), renderer, texture, xy, xy_stride, color, color_stride, uv, uv_stride, num_vertices, indices, num_indices, size_indices)
end

function SDL_RenderReadPixels(renderer, rect, format, pixels, pitch)
    ccall((:SDL_RenderReadPixels, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}, Uint32, Ptr{Cvoid}, Cint), renderer, rect, format, pixels, pitch)
end

function SDL_RenderPresent(renderer)
    ccall((:SDL_RenderPresent, libsdl2), Cvoid, (Ptr{SDL_Renderer},), renderer)
end

function SDL_DestroyTexture(texture)
    ccall((:SDL_DestroyTexture, libsdl2), Cvoid, (Ptr{SDL_Texture},), texture)
end

function SDL_DestroyRenderer(renderer)
    ccall((:SDL_DestroyRenderer, libsdl2), Cvoid, (Ptr{SDL_Renderer},), renderer)
end

function SDL_RenderFlush(renderer)
    ccall((:SDL_RenderFlush, libsdl2), Cint, (Ptr{SDL_Renderer},), renderer)
end

function SDL_GL_BindTexture(texture, texw, texh)
    ccall((:SDL_GL_BindTexture, libsdl2), Cint, (Ptr{SDL_Texture}, Ptr{Cfloat}, Ptr{Cfloat}), texture, texw, texh)
end

function SDL_GL_UnbindTexture(texture)
    ccall((:SDL_GL_UnbindTexture, libsdl2), Cint, (Ptr{SDL_Texture},), texture)
end

function SDL_RenderGetMetalLayer(renderer)
    ccall((:SDL_RenderGetMetalLayer, libsdl2), Ptr{Cvoid}, (Ptr{SDL_Renderer},), renderer)
end

function SDL_RenderGetMetalCommandEncoder(renderer)
    ccall((:SDL_RenderGetMetalCommandEncoder, libsdl2), Ptr{Cvoid}, (Ptr{SDL_Renderer},), renderer)
end

function SDL_RenderSetVSync(renderer, vsync)
    ccall((:SDL_RenderSetVSync, libsdl2), Cint, (Ptr{SDL_Renderer}, Cint), renderer, vsync)
end

function SDL_CreateShapedWindow(title, x, y, w, h, flags)
    ccall((:SDL_CreateShapedWindow, libsdl2), Ptr{SDL_Window}, (Ptr{Cchar}, Cuint, Cuint, Cuint, Cuint, Uint32), title, x, y, w, h, flags)
end

function SDL_IsShapedWindow(window)
    ccall((:SDL_IsShapedWindow, libsdl2), SDL_bool, (Ptr{SDL_Window},), window)
end

@cenum WindowShapeMode::UInt32 begin
    ShapeModeDefault = 0
    ShapeModeBinarizeAlpha = 1
    ShapeModeReverseBinarizeAlpha = 2
    ShapeModeColorKey = 3
end

struct SDL_WindowShapeParams
    data::NTuple{4, UInt8}
end

function Base.getproperty(x::Ptr{SDL_WindowShapeParams}, f::Symbol)
    f === :binarizationCutoff && return Ptr{Uint8}(x + 0)
    f === :colorKey && return Ptr{SDL_Color}(x + 0)
    return getfield(x, f)
end

function Base.getproperty(x::SDL_WindowShapeParams, f::Symbol)
    r = Ref{SDL_WindowShapeParams}(x)
    ptr = Base.unsafe_convert(Ptr{SDL_WindowShapeParams}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{SDL_WindowShapeParams}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end

struct SDL_WindowShapeMode
    mode::WindowShapeMode
    parameters::SDL_WindowShapeParams
end

function SDL_SetWindowShape(window, shape, shape_mode)
    ccall((:SDL_SetWindowShape, libsdl2), Cint, (Ptr{SDL_Window}, Ptr{SDL_Surface}, Ptr{SDL_WindowShapeMode}), window, shape, shape_mode)
end

function SDL_GetShapedWindowMode(window, shape_mode)
    ccall((:SDL_GetShapedWindowMode, libsdl2), Cint, (Ptr{SDL_Window}, Ptr{SDL_WindowShapeMode}), window, shape_mode)
end

function SDL_IsTablet()
    ccall((:SDL_IsTablet, libsdl2), SDL_bool, ())
end

function SDL_OnApplicationWillTerminate()
    ccall((:SDL_OnApplicationWillTerminate, libsdl2), Cvoid, ())
end

function SDL_OnApplicationDidReceiveMemoryWarning()
    ccall((:SDL_OnApplicationDidReceiveMemoryWarning, libsdl2), Cvoid, ())
end

function SDL_OnApplicationWillResignActive()
    ccall((:SDL_OnApplicationWillResignActive, libsdl2), Cvoid, ())
end

function SDL_OnApplicationDidEnterBackground()
    ccall((:SDL_OnApplicationDidEnterBackground, libsdl2), Cvoid, ())
end

function SDL_OnApplicationWillEnterForeground()
    ccall((:SDL_OnApplicationWillEnterForeground, libsdl2), Cvoid, ())
end

function SDL_OnApplicationDidBecomeActive()
    ccall((:SDL_OnApplicationDidBecomeActive, libsdl2), Cvoid, ())
end

function SDL_GetTicks()
    ccall((:SDL_GetTicks, libsdl2), Uint32, ())
end

function SDL_GetTicks64()
    ccall((:SDL_GetTicks64, libsdl2), Uint64, ())
end

function SDL_GetPerformanceCounter()
    ccall((:SDL_GetPerformanceCounter, libsdl2), Uint64, ())
end

function SDL_GetPerformanceFrequency()
    ccall((:SDL_GetPerformanceFrequency, libsdl2), Uint64, ())
end

function SDL_Delay(ms)
    ccall((:SDL_Delay, libsdl2), Cvoid, (Uint32,), ms)
end

# typedef Uint32 ( SDLCALL * SDL_TimerCallback ) ( Uint32 interval , void * param )
const SDL_TimerCallback = Ptr{Cvoid}

const SDL_TimerID = Cint

function SDL_AddTimer(interval, callback, param)
    ccall((:SDL_AddTimer, libsdl2), SDL_TimerID, (Uint32, SDL_TimerCallback, Ptr{Cvoid}), interval, callback, param)
end

function SDL_RemoveTimer(id)
    ccall((:SDL_RemoveTimer, libsdl2), SDL_bool, (SDL_TimerID,), id)
end

struct SDL_version
    major::Uint8
    minor::Uint8
    patch::Uint8
end

function SDL_GetVersion(ver)
    ccall((:SDL_GetVersion, libsdl2), Cvoid, (Ptr{SDL_version},), ver)
end

function SDL_GetRevision()
    ccall((:SDL_GetRevision, libsdl2), Ptr{Cchar}, ())
end

function SDL_GetRevisionNumber()
    ccall((:SDL_GetRevisionNumber, libsdl2), Cint, ())
end

struct SDL_Locale
    language::Ptr{Cchar}
    country::Ptr{Cchar}
end

function SDL_GetPreferredLocales()
    ccall((:SDL_GetPreferredLocales, libsdl2), Ptr{SDL_Locale}, ())
end

function SDL_OpenURL(url)
    ccall((:SDL_OpenURL, libsdl2), Cint, (Ptr{Cchar},), url)
end

function SDL_Init(flags)
    ccall((:SDL_Init, libsdl2), Cint, (Uint32,), flags)
end

function SDL_InitSubSystem(flags)
    ccall((:SDL_InitSubSystem, libsdl2), Cint, (Uint32,), flags)
end

function SDL_QuitSubSystem(flags)
    ccall((:SDL_QuitSubSystem, libsdl2), Cvoid, (Uint32,), flags)
end

function SDL_WasInit(flags)
    ccall((:SDL_WasInit, libsdl2), Uint32, (Uint32,), flags)
end

function SDL_Quit()
    ccall((:SDL_Quit, libsdl2), Cvoid, ())
end

function Mix_Linked_Version()
    ccall((:Mix_Linked_Version, libsdl2_mixer), Ptr{SDL_version}, ())
end

@cenum MIX_InitFlags::UInt32 begin
    MIX_INIT_FLAC = 1
    MIX_INIT_MOD = 2
    MIX_INIT_MP3 = 8
    MIX_INIT_OGG = 16
    MIX_INIT_MID = 32
    MIX_INIT_OPUS = 64
end

function Mix_Init(flags)
    ccall((:Mix_Init, libsdl2_mixer), Cint, (Cint,), flags)
end

function Mix_Quit()
    ccall((:Mix_Quit, libsdl2_mixer), Cvoid, ())
end

struct Mix_Chunk
    allocated::Cint
    abuf::Ptr{Uint8}
    alen::Uint32
    volume::Uint8
end

@cenum Mix_Fading::UInt32 begin
    MIX_NO_FADING = 0
    MIX_FADING_OUT = 1
    MIX_FADING_IN = 2
end

@cenum Mix_MusicType::UInt32 begin
    MUS_NONE = 0
    MUS_CMD = 1
    MUS_WAV = 2
    MUS_MOD = 3
    MUS_MID = 4
    MUS_OGG = 5
    MUS_MP3 = 6
    MUS_MP3_MAD_UNUSED = 7
    MUS_FLAC = 8
    MUS_MODPLUG_UNUSED = 9
    MUS_OPUS = 10
end

mutable struct _Mix_Music end

const Mix_Music = _Mix_Music

function Mix_OpenAudio(frequency, format, channels, chunksize)
    ccall((:Mix_OpenAudio, libsdl2_mixer), Cint, (Cint, Uint16, Cint, Cint), frequency, format, channels, chunksize)
end

function Mix_OpenAudioDevice(frequency, format, channels, chunksize, device, allowed_changes)
    ccall((:Mix_OpenAudioDevice, libsdl2_mixer), Cint, (Cint, Uint16, Cint, Cint, Ptr{Cchar}, Cint), frequency, format, channels, chunksize, device, allowed_changes)
end

function Mix_QuerySpec(frequency, format, channels)
    ccall((:Mix_QuerySpec, libsdl2_mixer), Cint, (Ptr{Cint}, Ptr{Uint16}, Ptr{Cint}), frequency, format, channels)
end

function Mix_AllocateChannels(numchans)
    ccall((:Mix_AllocateChannels, libsdl2_mixer), Cint, (Cint,), numchans)
end

function Mix_LoadWAV_RW(src, freesrc)
    ccall((:Mix_LoadWAV_RW, libsdl2_mixer), Ptr{Mix_Chunk}, (Ptr{SDL_RWops}, Cint), src, freesrc)
end

function Mix_LoadWAV(file)
    ccall((:Mix_LoadWAV, libsdl2_mixer), Ptr{Mix_Chunk}, (Ptr{Cchar},), file)
end

function Mix_LoadMUS(file)
    ccall((:Mix_LoadMUS, libsdl2_mixer), Ptr{Mix_Music}, (Ptr{Cchar},), file)
end

function Mix_LoadMUS_RW(src, freesrc)
    ccall((:Mix_LoadMUS_RW, libsdl2_mixer), Ptr{Mix_Music}, (Ptr{SDL_RWops}, Cint), src, freesrc)
end

function Mix_LoadMUSType_RW(src, type, freesrc)
    ccall((:Mix_LoadMUSType_RW, libsdl2_mixer), Ptr{Mix_Music}, (Ptr{SDL_RWops}, Mix_MusicType, Cint), src, type, freesrc)
end

function Mix_QuickLoad_WAV(mem)
    ccall((:Mix_QuickLoad_WAV, libsdl2_mixer), Ptr{Mix_Chunk}, (Ptr{Uint8},), mem)
end

function Mix_QuickLoad_RAW(mem, len)
    ccall((:Mix_QuickLoad_RAW, libsdl2_mixer), Ptr{Mix_Chunk}, (Ptr{Uint8}, Uint32), mem, len)
end

function Mix_FreeChunk(chunk)
    ccall((:Mix_FreeChunk, libsdl2_mixer), Cvoid, (Ptr{Mix_Chunk},), chunk)
end

function Mix_FreeMusic(music)
    ccall((:Mix_FreeMusic, libsdl2_mixer), Cvoid, (Ptr{Mix_Music},), music)
end

function Mix_GetNumChunkDecoders()
    ccall((:Mix_GetNumChunkDecoders, libsdl2_mixer), Cint, ())
end

function Mix_GetChunkDecoder(index)
    ccall((:Mix_GetChunkDecoder, libsdl2_mixer), Ptr{Cchar}, (Cint,), index)
end

function Mix_HasChunkDecoder(name)
    ccall((:Mix_HasChunkDecoder, libsdl2_mixer), SDL_bool, (Ptr{Cchar},), name)
end

function Mix_GetNumMusicDecoders()
    ccall((:Mix_GetNumMusicDecoders, libsdl2_mixer), Cint, ())
end

function Mix_GetMusicDecoder(index)
    ccall((:Mix_GetMusicDecoder, libsdl2_mixer), Ptr{Cchar}, (Cint,), index)
end

function Mix_HasMusicDecoder(name)
    ccall((:Mix_HasMusicDecoder, libsdl2_mixer), SDL_bool, (Ptr{Cchar},), name)
end

function Mix_GetMusicType(music)
    ccall((:Mix_GetMusicType, libsdl2_mixer), Mix_MusicType, (Ptr{Mix_Music},), music)
end

function Mix_GetMusicTitle(music)
    ccall((:Mix_GetMusicTitle, libsdl2_mixer), Ptr{Cchar}, (Ptr{Mix_Music},), music)
end

function Mix_GetMusicTitleTag(music)
    ccall((:Mix_GetMusicTitleTag, libsdl2_mixer), Ptr{Cchar}, (Ptr{Mix_Music},), music)
end

function Mix_GetMusicArtistTag(music)
    ccall((:Mix_GetMusicArtistTag, libsdl2_mixer), Ptr{Cchar}, (Ptr{Mix_Music},), music)
end

function Mix_GetMusicAlbumTag(music)
    ccall((:Mix_GetMusicAlbumTag, libsdl2_mixer), Ptr{Cchar}, (Ptr{Mix_Music},), music)
end

function Mix_GetMusicCopyrightTag(music)
    ccall((:Mix_GetMusicCopyrightTag, libsdl2_mixer), Ptr{Cchar}, (Ptr{Mix_Music},), music)
end

function Mix_SetPostMix(mix_func, arg)
    ccall((:Mix_SetPostMix, libsdl2_mixer), Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}), mix_func, arg)
end

function Mix_HookMusic(mix_func, arg)
    ccall((:Mix_HookMusic, libsdl2_mixer), Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}), mix_func, arg)
end

function Mix_HookMusicFinished(music_finished)
    ccall((:Mix_HookMusicFinished, libsdl2_mixer), Cvoid, (Ptr{Cvoid},), music_finished)
end

function Mix_GetMusicHookData()
    ccall((:Mix_GetMusicHookData, libsdl2_mixer), Ptr{Cvoid}, ())
end

function Mix_ChannelFinished(channel_finished)
    ccall((:Mix_ChannelFinished, libsdl2_mixer), Cvoid, (Ptr{Cvoid},), channel_finished)
end

# typedef void ( SDLCALL * Mix_EffectFunc_t ) ( int chan , void * stream , int len , void * udata )
const Mix_EffectFunc_t = Ptr{Cvoid}

# typedef void ( SDLCALL * Mix_EffectDone_t ) ( int chan , void * udata )
const Mix_EffectDone_t = Ptr{Cvoid}

function Mix_RegisterEffect(chan, f, d, arg)
    ccall((:Mix_RegisterEffect, libsdl2_mixer), Cint, (Cint, Mix_EffectFunc_t, Mix_EffectDone_t, Ptr{Cvoid}), chan, f, d, arg)
end

function Mix_UnregisterEffect(channel, f)
    ccall((:Mix_UnregisterEffect, libsdl2_mixer), Cint, (Cint, Mix_EffectFunc_t), channel, f)
end

function Mix_UnregisterAllEffects(channel)
    ccall((:Mix_UnregisterAllEffects, libsdl2_mixer), Cint, (Cint,), channel)
end

function Mix_SetPanning(channel, left, right)
    ccall((:Mix_SetPanning, libsdl2_mixer), Cint, (Cint, Uint8, Uint8), channel, left, right)
end

function Mix_SetPosition(channel, angle, distance)
    ccall((:Mix_SetPosition, libsdl2_mixer), Cint, (Cint, Sint16, Uint8), channel, angle, distance)
end

function Mix_SetDistance(channel, distance)
    ccall((:Mix_SetDistance, libsdl2_mixer), Cint, (Cint, Uint8), channel, distance)
end

function Mix_SetReverseStereo(channel, flip)
    ccall((:Mix_SetReverseStereo, libsdl2_mixer), Cint, (Cint, Cint), channel, flip)
end

function Mix_ReserveChannels(num)
    ccall((:Mix_ReserveChannels, libsdl2_mixer), Cint, (Cint,), num)
end

function Mix_GroupChannel(which, tag)
    ccall((:Mix_GroupChannel, libsdl2_mixer), Cint, (Cint, Cint), which, tag)
end

function Mix_GroupChannels(from, to, tag)
    ccall((:Mix_GroupChannels, libsdl2_mixer), Cint, (Cint, Cint, Cint), from, to, tag)
end

function Mix_GroupAvailable(tag)
    ccall((:Mix_GroupAvailable, libsdl2_mixer), Cint, (Cint,), tag)
end

function Mix_GroupCount(tag)
    ccall((:Mix_GroupCount, libsdl2_mixer), Cint, (Cint,), tag)
end

function Mix_GroupOldest(tag)
    ccall((:Mix_GroupOldest, libsdl2_mixer), Cint, (Cint,), tag)
end

function Mix_GroupNewer(tag)
    ccall((:Mix_GroupNewer, libsdl2_mixer), Cint, (Cint,), tag)
end

function Mix_PlayChannel(channel, chunk, loops)
    ccall((:Mix_PlayChannel, libsdl2_mixer), Cint, (Cint, Ptr{Mix_Chunk}, Cint), channel, chunk, loops)
end

function Mix_PlayChannelTimed(channel, chunk, loops, ticks)
    ccall((:Mix_PlayChannelTimed, libsdl2_mixer), Cint, (Cint, Ptr{Mix_Chunk}, Cint, Cint), channel, chunk, loops, ticks)
end

function Mix_PlayMusic(music, loops)
    ccall((:Mix_PlayMusic, libsdl2_mixer), Cint, (Ptr{Mix_Music}, Cint), music, loops)
end

function Mix_FadeInMusic(music, loops, ms)
    ccall((:Mix_FadeInMusic, libsdl2_mixer), Cint, (Ptr{Mix_Music}, Cint, Cint), music, loops, ms)
end

function Mix_FadeInMusicPos(music, loops, ms, position)
    ccall((:Mix_FadeInMusicPos, libsdl2_mixer), Cint, (Ptr{Mix_Music}, Cint, Cint, Cdouble), music, loops, ms, position)
end

function Mix_FadeInChannel(channel, chunk, loops, ms)
    ccall((:Mix_FadeInChannel, libsdl2_mixer), Cint, (Cint, Ptr{Mix_Chunk}, Cint, Cint), channel, chunk, loops, ms)
end

function Mix_FadeInChannelTimed(channel, chunk, loops, ms, ticks)
    ccall((:Mix_FadeInChannelTimed, libsdl2_mixer), Cint, (Cint, Ptr{Mix_Chunk}, Cint, Cint, Cint), channel, chunk, loops, ms, ticks)
end

function Mix_Volume(channel, volume)
    ccall((:Mix_Volume, libsdl2_mixer), Cint, (Cint, Cint), channel, volume)
end

function Mix_VolumeChunk(chunk, volume)
    ccall((:Mix_VolumeChunk, libsdl2_mixer), Cint, (Ptr{Mix_Chunk}, Cint), chunk, volume)
end

function Mix_VolumeMusic(volume)
    ccall((:Mix_VolumeMusic, libsdl2_mixer), Cint, (Cint,), volume)
end

function Mix_GetMusicVolume(music)
    ccall((:Mix_GetMusicVolume, libsdl2_mixer), Cint, (Ptr{Mix_Music},), music)
end

function Mix_MasterVolume(volume)
    ccall((:Mix_MasterVolume, libsdl2_mixer), Cint, (Cint,), volume)
end

function Mix_HaltChannel(channel)
    ccall((:Mix_HaltChannel, libsdl2_mixer), Cint, (Cint,), channel)
end

function Mix_HaltGroup(tag)
    ccall((:Mix_HaltGroup, libsdl2_mixer), Cint, (Cint,), tag)
end

function Mix_HaltMusic()
    ccall((:Mix_HaltMusic, libsdl2_mixer), Cint, ())
end

function Mix_ExpireChannel(channel, ticks)
    ccall((:Mix_ExpireChannel, libsdl2_mixer), Cint, (Cint, Cint), channel, ticks)
end

function Mix_FadeOutChannel(which, ms)
    ccall((:Mix_FadeOutChannel, libsdl2_mixer), Cint, (Cint, Cint), which, ms)
end

function Mix_FadeOutGroup(tag, ms)
    ccall((:Mix_FadeOutGroup, libsdl2_mixer), Cint, (Cint, Cint), tag, ms)
end

function Mix_FadeOutMusic(ms)
    ccall((:Mix_FadeOutMusic, libsdl2_mixer), Cint, (Cint,), ms)
end

function Mix_FadingMusic()
    ccall((:Mix_FadingMusic, libsdl2_mixer), Mix_Fading, ())
end

function Mix_FadingChannel(which)
    ccall((:Mix_FadingChannel, libsdl2_mixer), Mix_Fading, (Cint,), which)
end

function Mix_Pause(channel)
    ccall((:Mix_Pause, libsdl2_mixer), Cvoid, (Cint,), channel)
end

function Mix_Resume(channel)
    ccall((:Mix_Resume, libsdl2_mixer), Cvoid, (Cint,), channel)
end

function Mix_Paused(channel)
    ccall((:Mix_Paused, libsdl2_mixer), Cint, (Cint,), channel)
end

function Mix_PauseMusic()
    ccall((:Mix_PauseMusic, libsdl2_mixer), Cvoid, ())
end

function Mix_ResumeMusic()
    ccall((:Mix_ResumeMusic, libsdl2_mixer), Cvoid, ())
end

function Mix_RewindMusic()
    ccall((:Mix_RewindMusic, libsdl2_mixer), Cvoid, ())
end

function Mix_PausedMusic()
    ccall((:Mix_PausedMusic, libsdl2_mixer), Cint, ())
end

function Mix_ModMusicJumpToOrder(order)
    ccall((:Mix_ModMusicJumpToOrder, libsdl2_mixer), Cint, (Cint,), order)
end

function Mix_SetMusicPosition(position)
    ccall((:Mix_SetMusicPosition, libsdl2_mixer), Cint, (Cdouble,), position)
end

function Mix_GetMusicPosition(music)
    ccall((:Mix_GetMusicPosition, libsdl2_mixer), Cdouble, (Ptr{Mix_Music},), music)
end

function Mix_MusicDuration(music)
    ccall((:Mix_MusicDuration, libsdl2_mixer), Cdouble, (Ptr{Mix_Music},), music)
end

function Mix_GetMusicLoopStartTime(music)
    ccall((:Mix_GetMusicLoopStartTime, libsdl2_mixer), Cdouble, (Ptr{Mix_Music},), music)
end

function Mix_GetMusicLoopEndTime(music)
    ccall((:Mix_GetMusicLoopEndTime, libsdl2_mixer), Cdouble, (Ptr{Mix_Music},), music)
end

function Mix_GetMusicLoopLengthTime(music)
    ccall((:Mix_GetMusicLoopLengthTime, libsdl2_mixer), Cdouble, (Ptr{Mix_Music},), music)
end

function Mix_Playing(channel)
    ccall((:Mix_Playing, libsdl2_mixer), Cint, (Cint,), channel)
end

function Mix_PlayingMusic()
    ccall((:Mix_PlayingMusic, libsdl2_mixer), Cint, ())
end

function Mix_SetMusicCMD(command)
    ccall((:Mix_SetMusicCMD, libsdl2_mixer), Cint, (Ptr{Cchar},), command)
end

function Mix_SetSynchroValue(value)
    ccall((:Mix_SetSynchroValue, libsdl2_mixer), Cint, (Cint,), value)
end

function Mix_GetSynchroValue()
    ccall((:Mix_GetSynchroValue, libsdl2_mixer), Cint, ())
end

function Mix_SetSoundFonts(paths)
    ccall((:Mix_SetSoundFonts, libsdl2_mixer), Cint, (Ptr{Cchar},), paths)
end

function Mix_GetSoundFonts()
    ccall((:Mix_GetSoundFonts, libsdl2_mixer), Ptr{Cchar}, ())
end

function Mix_EachSoundFont(_function, data)
    ccall((:Mix_EachSoundFont, libsdl2_mixer), Cint, (Ptr{Cvoid}, Ptr{Cvoid}), _function, data)
end

function Mix_SetTimidityCfg(path)
    ccall((:Mix_SetTimidityCfg, libsdl2_mixer), Cint, (Ptr{Cchar},), path)
end

function Mix_GetTimidityCfg()
    ccall((:Mix_GetTimidityCfg, libsdl2_mixer), Ptr{Cchar}, ())
end

function Mix_GetChunk(channel)
    ccall((:Mix_GetChunk, libsdl2_mixer), Ptr{Mix_Chunk}, (Cint,), channel)
end

function Mix_CloseAudio()
    ccall((:Mix_CloseAudio, libsdl2_mixer), Cvoid, ())
end

function IMG_Linked_Version()
    ccall((:IMG_Linked_Version, libsdl2_image), Ptr{SDL_version}, ())
end

@cenum IMG_InitFlags::UInt32 begin
    IMG_INIT_JPG = 1
    IMG_INIT_PNG = 2
    IMG_INIT_TIF = 4
    IMG_INIT_WEBP = 8
    IMG_INIT_JXL = 16
    IMG_INIT_AVIF = 32
end

function IMG_Init(flags)
    ccall((:IMG_Init, libsdl2_image), Cint, (Cint,), flags)
end

function IMG_Quit()
    ccall((:IMG_Quit, libsdl2_image), Cvoid, ())
end

function IMG_LoadTyped_RW(src, freesrc, type)
    ccall((:IMG_LoadTyped_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops}, Cint, Ptr{Cchar}), src, freesrc, type)
end

function IMG_Load(file)
    ccall((:IMG_Load, libsdl2_image), Ptr{SDL_Surface}, (Ptr{Cchar},), file)
end

function IMG_Load_RW(src, freesrc)
    ccall((:IMG_Load_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops}, Cint), src, freesrc)
end

function IMG_LoadTexture(renderer, file)
    ccall((:IMG_LoadTexture, libsdl2_image), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Ptr{Cchar}), renderer, file)
end

function IMG_LoadTexture_RW(renderer, src, freesrc)
    ccall((:IMG_LoadTexture_RW, libsdl2_image), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Ptr{SDL_RWops}, Cint), renderer, src, freesrc)
end

function IMG_LoadTextureTyped_RW(renderer, src, freesrc, type)
    ccall((:IMG_LoadTextureTyped_RW, libsdl2_image), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Ptr{SDL_RWops}, Cint, Ptr{Cchar}), renderer, src, freesrc, type)
end

function IMG_isAVIF(src)
    ccall((:IMG_isAVIF, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isICO(src)
    ccall((:IMG_isICO, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isCUR(src)
    ccall((:IMG_isCUR, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isBMP(src)
    ccall((:IMG_isBMP, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isGIF(src)
    ccall((:IMG_isGIF, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isJPG(src)
    ccall((:IMG_isJPG, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isJXL(src)
    ccall((:IMG_isJXL, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isLBM(src)
    ccall((:IMG_isLBM, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isPCX(src)
    ccall((:IMG_isPCX, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isPNG(src)
    ccall((:IMG_isPNG, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isPNM(src)
    ccall((:IMG_isPNM, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isSVG(src)
    ccall((:IMG_isSVG, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isQOI(src)
    ccall((:IMG_isQOI, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isTIF(src)
    ccall((:IMG_isTIF, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isXCF(src)
    ccall((:IMG_isXCF, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isXPM(src)
    ccall((:IMG_isXPM, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isXV(src)
    ccall((:IMG_isXV, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isWEBP(src)
    ccall((:IMG_isWEBP, libsdl2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_LoadAVIF_RW(src)
    ccall((:IMG_LoadAVIF_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadICO_RW(src)
    ccall((:IMG_LoadICO_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadCUR_RW(src)
    ccall((:IMG_LoadCUR_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadBMP_RW(src)
    ccall((:IMG_LoadBMP_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadGIF_RW(src)
    ccall((:IMG_LoadGIF_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadJPG_RW(src)
    ccall((:IMG_LoadJPG_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadJXL_RW(src)
    ccall((:IMG_LoadJXL_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadLBM_RW(src)
    ccall((:IMG_LoadLBM_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadPCX_RW(src)
    ccall((:IMG_LoadPCX_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadPNG_RW(src)
    ccall((:IMG_LoadPNG_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadPNM_RW(src)
    ccall((:IMG_LoadPNM_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadSVG_RW(src)
    ccall((:IMG_LoadSVG_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadQOI_RW(src)
    ccall((:IMG_LoadQOI_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadTGA_RW(src)
    ccall((:IMG_LoadTGA_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadTIF_RW(src)
    ccall((:IMG_LoadTIF_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadXCF_RW(src)
    ccall((:IMG_LoadXCF_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadXPM_RW(src)
    ccall((:IMG_LoadXPM_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadXV_RW(src)
    ccall((:IMG_LoadXV_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadWEBP_RW(src)
    ccall((:IMG_LoadWEBP_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadSizedSVG_RW(src, width, height)
    ccall((:IMG_LoadSizedSVG_RW, libsdl2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops}, Cint, Cint), src, width, height)
end

function IMG_ReadXPMFromArray(xpm)
    ccall((:IMG_ReadXPMFromArray, libsdl2_image), Ptr{SDL_Surface}, (Ptr{Ptr{Cchar}},), xpm)
end

function IMG_ReadXPMFromArrayToRGB888(xpm)
    ccall((:IMG_ReadXPMFromArrayToRGB888, libsdl2_image), Ptr{SDL_Surface}, (Ptr{Ptr{Cchar}},), xpm)
end

function IMG_SavePNG(surface, file)
    ccall((:IMG_SavePNG, libsdl2_image), Cint, (Ptr{SDL_Surface}, Ptr{Cchar}), surface, file)
end

function IMG_SavePNG_RW(surface, dst, freedst)
    ccall((:IMG_SavePNG_RW, libsdl2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_RWops}, Cint), surface, dst, freedst)
end

function IMG_SaveJPG(surface, file, quality)
    ccall((:IMG_SaveJPG, libsdl2_image), Cint, (Ptr{SDL_Surface}, Ptr{Cchar}, Cint), surface, file, quality)
end

function IMG_SaveJPG_RW(surface, dst, freedst, quality)
    ccall((:IMG_SaveJPG_RW, libsdl2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_RWops}, Cint, Cint), surface, dst, freedst, quality)
end

struct IMG_Animation
    w::Cint
    h::Cint
    count::Cint
    frames::Ptr{Ptr{SDL_Surface}}
    delays::Ptr{Cint}
end

function IMG_LoadAnimation(file)
    ccall((:IMG_LoadAnimation, libsdl2_image), Ptr{IMG_Animation}, (Ptr{Cchar},), file)
end

function IMG_LoadAnimation_RW(src, freesrc)
    ccall((:IMG_LoadAnimation_RW, libsdl2_image), Ptr{IMG_Animation}, (Ptr{SDL_RWops}, Cint), src, freesrc)
end

function IMG_LoadAnimationTyped_RW(src, freesrc, type)
    ccall((:IMG_LoadAnimationTyped_RW, libsdl2_image), Ptr{IMG_Animation}, (Ptr{SDL_RWops}, Cint, Ptr{Cchar}), src, freesrc, type)
end

function IMG_FreeAnimation(anim)
    ccall((:IMG_FreeAnimation, libsdl2_image), Cvoid, (Ptr{IMG_Animation},), anim)
end

function IMG_LoadGIFAnimation_RW(src)
    ccall((:IMG_LoadGIFAnimation_RW, libsdl2_image), Ptr{IMG_Animation}, (Ptr{SDL_RWops},), src)
end

mutable struct _TTF_Font end

const TTF_Font = _TTF_Font

function TTF_RenderText_Shaded(font, text, fg, bg)
    ccall((:TTF_RenderText_Shaded, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Cchar}, SDL_Color, SDL_Color), font, text, fg, bg)
end

function TTF_RenderUTF8_Shaded(font, text, fg, bg)
    ccall((:TTF_RenderUTF8_Shaded, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Cchar}, SDL_Color, SDL_Color), font, text, fg, bg)
end

function TTF_RenderUNICODE_Shaded(font, text, fg, bg)
    ccall((:TTF_RenderUNICODE_Shaded, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, SDL_Color, SDL_Color), font, text, fg, bg)
end

function TTF_Linked_Version()
    ccall((:TTF_Linked_Version, libsdl2_ttf), Ptr{SDL_version}, ())
end

function TTF_ByteSwappedUNICODE(swapped)
    ccall((:TTF_ByteSwappedUNICODE, libsdl2_ttf), Cvoid, (Cint,), swapped)
end

function TTF_Init()
    ccall((:TTF_Init, libsdl2_ttf), Cint, ())
end

function TTF_OpenFont(file, ptsize)
    ccall((:TTF_OpenFont, libsdl2_ttf), Ptr{TTF_Font}, (Ptr{Cchar}, Cint), file, ptsize)
end

function TTF_OpenFontIndex(file, ptsize, index)
    ccall((:TTF_OpenFontIndex, libsdl2_ttf), Ptr{TTF_Font}, (Ptr{Cchar}, Cint, Clong), file, ptsize, index)
end

function TTF_OpenFontRW(src, freesrc, ptsize)
    ccall((:TTF_OpenFontRW, libsdl2_ttf), Ptr{TTF_Font}, (Ptr{SDL_RWops}, Cint, Cint), src, freesrc, ptsize)
end

function TTF_OpenFontIndexRW(src, freesrc, ptsize, index)
    ccall((:TTF_OpenFontIndexRW, libsdl2_ttf), Ptr{TTF_Font}, (Ptr{SDL_RWops}, Cint, Cint, Clong), src, freesrc, ptsize, index)
end

function TTF_GetFontStyle(font)
    ccall((:TTF_GetFontStyle, libsdl2_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontStyle(font, style)
    ccall((:TTF_SetFontStyle, libsdl2_ttf), Cvoid, (Ptr{TTF_Font}, Cint), font, style)
end

function TTF_GetFontOutline(font)
    ccall((:TTF_GetFontOutline, libsdl2_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontOutline(font, outline)
    ccall((:TTF_SetFontOutline, libsdl2_ttf), Cvoid, (Ptr{TTF_Font}, Cint), font, outline)
end

function TTF_GetFontHinting(font)
    ccall((:TTF_GetFontHinting, libsdl2_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontHinting(font, hinting)
    ccall((:TTF_SetFontHinting, libsdl2_ttf), Cvoid, (Ptr{TTF_Font}, Cint), font, hinting)
end

function TTF_FontHeight(font)
    ccall((:TTF_FontHeight, libsdl2_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontAscent(font)
    ccall((:TTF_FontAscent, libsdl2_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontDescent(font)
    ccall((:TTF_FontDescent, libsdl2_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontLineSkip(font)
    ccall((:TTF_FontLineSkip, libsdl2_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_GetFontKerning(font)
    ccall((:TTF_GetFontKerning, libsdl2_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontKerning(font, allowed)
    ccall((:TTF_SetFontKerning, libsdl2_ttf), Cvoid, (Ptr{TTF_Font}, Cint), font, allowed)
end

function TTF_FontFaces(font)
    ccall((:TTF_FontFaces, libsdl2_ttf), Clong, (Ptr{TTF_Font},), font)
end

function TTF_FontFaceIsFixedWidth(font)
    ccall((:TTF_FontFaceIsFixedWidth, libsdl2_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontFaceFamilyName(font)
    ccall((:TTF_FontFaceFamilyName, libsdl2_ttf), Ptr{Cchar}, (Ptr{TTF_Font},), font)
end

function TTF_FontFaceStyleName(font)
    ccall((:TTF_FontFaceStyleName, libsdl2_ttf), Ptr{Cchar}, (Ptr{TTF_Font},), font)
end

function TTF_GlyphIsProvided(font, ch)
    ccall((:TTF_GlyphIsProvided, libsdl2_ttf), Cint, (Ptr{TTF_Font}, Uint16), font, ch)
end

function TTF_GlyphMetrics(font, ch, minx, maxx, miny, maxy, advance)
    ccall((:TTF_GlyphMetrics, libsdl2_ttf), Cint, (Ptr{TTF_Font}, Uint16, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), font, ch, minx, maxx, miny, maxy, advance)
end

function TTF_SizeText(font, text, w, h)
    ccall((:TTF_SizeText, libsdl2_ttf), Cint, (Ptr{TTF_Font}, Ptr{Cchar}, Ptr{Cint}, Ptr{Cint}), font, text, w, h)
end

function TTF_SizeUTF8(font, text, w, h)
    ccall((:TTF_SizeUTF8, libsdl2_ttf), Cint, (Ptr{TTF_Font}, Ptr{Cchar}, Ptr{Cint}, Ptr{Cint}), font, text, w, h)
end

function TTF_SizeUNICODE(font, text, w, h)
    ccall((:TTF_SizeUNICODE, libsdl2_ttf), Cint, (Ptr{TTF_Font}, Ptr{Uint16}, Ptr{Cint}, Ptr{Cint}), font, text, w, h)
end

function TTF_RenderText_Solid(font, text, fg)
    ccall((:TTF_RenderText_Solid, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Cchar}, SDL_Color), font, text, fg)
end

function TTF_RenderUTF8_Solid(font, text, fg)
    ccall((:TTF_RenderUTF8_Solid, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Cchar}, SDL_Color), font, text, fg)
end

function TTF_RenderUNICODE_Solid(font, text, fg)
    ccall((:TTF_RenderUNICODE_Solid, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, SDL_Color), font, text, fg)
end

function TTF_RenderGlyph_Solid(font, ch, fg)
    ccall((:TTF_RenderGlyph_Solid, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Uint16, SDL_Color), font, ch, fg)
end

function TTF_RenderGlyph_Shaded(font, ch, fg, bg)
    ccall((:TTF_RenderGlyph_Shaded, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Uint16, SDL_Color, SDL_Color), font, ch, fg, bg)
end

function TTF_RenderText_Blended(font, text, fg)
    ccall((:TTF_RenderText_Blended, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Cchar}, SDL_Color), font, text, fg)
end

function TTF_RenderUTF8_Blended(font, text, fg)
    ccall((:TTF_RenderUTF8_Blended, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Cchar}, SDL_Color), font, text, fg)
end

function TTF_RenderUNICODE_Blended(font, text, fg)
    ccall((:TTF_RenderUNICODE_Blended, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, SDL_Color), font, text, fg)
end

function TTF_RenderText_Blended_Wrapped(font, text, fg, wrapLength)
    ccall((:TTF_RenderText_Blended_Wrapped, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Cchar}, SDL_Color, Uint32), font, text, fg, wrapLength)
end

function TTF_RenderUTF8_Blended_Wrapped(font, text, fg, wrapLength)
    ccall((:TTF_RenderUTF8_Blended_Wrapped, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Cchar}, SDL_Color, Uint32), font, text, fg, wrapLength)
end

function TTF_RenderUNICODE_Blended_Wrapped(font, text, fg, wrapLength)
    ccall((:TTF_RenderUNICODE_Blended_Wrapped, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, SDL_Color, Uint32), font, text, fg, wrapLength)
end

function TTF_RenderGlyph_Blended(font, ch, fg)
    ccall((:TTF_RenderGlyph_Blended, libsdl2_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Uint16, SDL_Color), font, ch, fg)
end

function TTF_CloseFont(font)
    ccall((:TTF_CloseFont, libsdl2_ttf), Cvoid, (Ptr{TTF_Font},), font)
end

function TTF_Quit()
    ccall((:TTF_Quit, libsdl2_ttf), Cvoid, ())
end

function TTF_WasInit()
    ccall((:TTF_WasInit, libsdl2_ttf), Cint, ())
end

function TTF_GetFontKerningSize(font, prev_index, index)
    ccall((:TTF_GetFontKerningSize, libsdl2_ttf), Cint, (Ptr{TTF_Font}, Cint, Cint), font, prev_index, index)
end

function TTF_GetFontKerningSizeGlyphs(font, previous_ch, ch)
    ccall((:TTF_GetFontKerningSizeGlyphs, libsdl2_ttf), Cint, (Ptr{TTF_Font}, Uint16, Uint16), font, previous_ch, ch)
end

struct FPSmanager
    framecount::Uint32
    rateticks::Cfloat
    baseticks::Uint32
    lastticks::Uint32
    rate::Uint32
end

function SDL_initFramerate(manager)
    ccall((:SDL_initFramerate, libsdl2), Cvoid, (Ptr{FPSmanager},), manager)
end

function SDL_setFramerate(manager, rate)
    ccall((:SDL_setFramerate, libsdl2), Cint, (Ptr{FPSmanager}, Uint32), manager, rate)
end

function SDL_getFramerate(manager)
    ccall((:SDL_getFramerate, libsdl2), Cint, (Ptr{FPSmanager},), manager)
end

function SDL_getFramecount(manager)
    ccall((:SDL_getFramecount, libsdl2), Cint, (Ptr{FPSmanager},), manager)
end

function SDL_framerateDelay(manager)
    ccall((:SDL_framerateDelay, libsdl2), Uint32, (Ptr{FPSmanager},), manager)
end

function pixelColor(renderer, x, y, color)
    ccall((:pixelColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Uint32), renderer, x, y, color)
end

function pixelRGBA(renderer, x, y, r, g, b, a)
    ccall((:pixelRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x, y, r, g, b, a)
end

function hlineColor(renderer, x1, x2, y, color)
    ccall((:hlineColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Uint32), renderer, x1, x2, y, color)
end

function hlineRGBA(renderer, x1, x2, y, r, g, b, a)
    ccall((:hlineRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x1, x2, y, r, g, b, a)
end

function vlineColor(renderer, x, y1, y2, color)
    ccall((:vlineColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Uint32), renderer, x, y1, y2, color)
end

function vlineRGBA(renderer, x, y1, y2, r, g, b, a)
    ccall((:vlineRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x, y1, y2, r, g, b, a)
end

function rectangleColor(renderer, x1, y1, x2, y2, color)
    ccall((:rectangleColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x1, y1, x2, y2, color)
end

function rectangleRGBA(renderer, x1, y1, x2, y2, r, g, b, a)
    ccall((:rectangleRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x1, y1, x2, y2, r, g, b, a)
end

function roundedRectangleColor(renderer, x1, y1, x2, y2, rad, color)
    ccall((:roundedRectangleColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x1, y1, x2, y2, rad, color)
end

function roundedRectangleRGBA(renderer, x1, y1, x2, y2, rad, r, g, b, a)
    ccall((:roundedRectangleRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x1, y1, x2, y2, rad, r, g, b, a)
end

function boxColor(renderer, x1, y1, x2, y2, color)
    ccall((:boxColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x1, y1, x2, y2, color)
end

function boxRGBA(renderer, x1, y1, x2, y2, r, g, b, a)
    ccall((:boxRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x1, y1, x2, y2, r, g, b, a)
end

function roundedBoxColor(renderer, x1, y1, x2, y2, rad, color)
    ccall((:roundedBoxColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x1, y1, x2, y2, rad, color)
end

function roundedBoxRGBA(renderer, x1, y1, x2, y2, rad, r, g, b, a)
    ccall((:roundedBoxRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x1, y1, x2, y2, rad, r, g, b, a)
end

function lineColor(renderer, x1, y1, x2, y2, color)
    ccall((:lineColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x1, y1, x2, y2, color)
end

function lineRGBA(renderer, x1, y1, x2, y2, r, g, b, a)
    ccall((:lineRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x1, y1, x2, y2, r, g, b, a)
end

function aalineColor(renderer, x1, y1, x2, y2, color)
    ccall((:aalineColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x1, y1, x2, y2, color)
end

function aalineRGBA(renderer, x1, y1, x2, y2, r, g, b, a)
    ccall((:aalineRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x1, y1, x2, y2, r, g, b, a)
end

function thickLineColor(renderer, x1, y1, x2, y2, width, color)
    ccall((:thickLineColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint8, Uint32), renderer, x1, y1, x2, y2, width, color)
end

function thickLineRGBA(renderer, x1, y1, x2, y2, width, r, g, b, a)
    ccall((:thickLineRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8, Uint8), renderer, x1, y1, x2, y2, width, r, g, b, a)
end

function circleColor(renderer, x, y, rad, color)
    ccall((:circleColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Uint32), renderer, x, y, rad, color)
end

function circleRGBA(renderer, x, y, rad, r, g, b, a)
    ccall((:circleRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x, y, rad, r, g, b, a)
end

function arcColor(renderer, x, y, rad, start, _end, color)
    ccall((:arcColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x, y, rad, start, _end, color)
end

function arcRGBA(renderer, x, y, rad, start, _end, r, g, b, a)
    ccall((:arcRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x, y, rad, start, _end, r, g, b, a)
end

function aacircleColor(renderer, x, y, rad, color)
    ccall((:aacircleColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Uint32), renderer, x, y, rad, color)
end

function aacircleRGBA(renderer, x, y, rad, r, g, b, a)
    ccall((:aacircleRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x, y, rad, r, g, b, a)
end

function filledCircleColor(renderer, x, y, r, color)
    ccall((:filledCircleColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Uint32), renderer, x, y, r, color)
end

function filledCircleRGBA(renderer, x, y, rad, r, g, b, a)
    ccall((:filledCircleRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x, y, rad, r, g, b, a)
end

function ellipseColor(renderer, x, y, rx, ry, color)
    ccall((:ellipseColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x, y, rx, ry, color)
end

function ellipseRGBA(renderer, x, y, rx, ry, r, g, b, a)
    ccall((:ellipseRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x, y, rx, ry, r, g, b, a)
end

function aaellipseColor(renderer, x, y, rx, ry, color)
    ccall((:aaellipseColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x, y, rx, ry, color)
end

function aaellipseRGBA(renderer, x, y, rx, ry, r, g, b, a)
    ccall((:aaellipseRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x, y, rx, ry, r, g, b, a)
end

function filledEllipseColor(renderer, x, y, rx, ry, color)
    ccall((:filledEllipseColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x, y, rx, ry, color)
end

function filledEllipseRGBA(renderer, x, y, rx, ry, r, g, b, a)
    ccall((:filledEllipseRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x, y, rx, ry, r, g, b, a)
end

function pieColor(renderer, x, y, rad, start, _end, color)
    ccall((:pieColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x, y, rad, start, _end, color)
end

function pieRGBA(renderer, x, y, rad, start, _end, r, g, b, a)
    ccall((:pieRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x, y, rad, start, _end, r, g, b, a)
end

function filledPieColor(renderer, x, y, rad, start, _end, color)
    ccall((:filledPieColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x, y, rad, start, _end, color)
end

function filledPieRGBA(renderer, x, y, rad, start, _end, r, g, b, a)
    ccall((:filledPieRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x, y, rad, start, _end, r, g, b, a)
end

function trigonColor(renderer, x1, y1, x2, y2, x3, y3, color)
    ccall((:trigonColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x1, y1, x2, y2, x3, y3, color)
end

function trigonRGBA(renderer, x1, y1, x2, y2, x3, y3, r, g, b, a)
    ccall((:trigonRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x1, y1, x2, y2, x3, y3, r, g, b, a)
end

function aatrigonColor(renderer, x1, y1, x2, y2, x3, y3, color)
    ccall((:aatrigonColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x1, y1, x2, y2, x3, y3, color)
end

function aatrigonRGBA(renderer, x1, y1, x2, y2, x3, y3, r, g, b, a)
    ccall((:aatrigonRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x1, y1, x2, y2, x3, y3, r, g, b, a)
end

function filledTrigonColor(renderer, x1, y1, x2, y2, x3, y3, color)
    ccall((:filledTrigonColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Sint16, Uint32), renderer, x1, y1, x2, y2, x3, y3, color)
end

function filledTrigonRGBA(renderer, x1, y1, x2, y2, x3, y3, r, g, b, a)
    ccall((:filledTrigonRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Sint16, Sint16, Sint16, Sint16, Uint8, Uint8, Uint8, Uint8), renderer, x1, y1, x2, y2, x3, y3, r, g, b, a)
end

function polygonColor(renderer, vx, vy, n, color)
    ccall((:polygonColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{Sint16}, Ptr{Sint16}, Cint, Uint32), renderer, vx, vy, n, color)
end

function polygonRGBA(renderer, vx, vy, n, r, g, b, a)
    ccall((:polygonRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{Sint16}, Ptr{Sint16}, Cint, Uint8, Uint8, Uint8, Uint8), renderer, vx, vy, n, r, g, b, a)
end

function aapolygonColor(renderer, vx, vy, n, color)
    ccall((:aapolygonColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{Sint16}, Ptr{Sint16}, Cint, Uint32), renderer, vx, vy, n, color)
end

function aapolygonRGBA(renderer, vx, vy, n, r, g, b, a)
    ccall((:aapolygonRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{Sint16}, Ptr{Sint16}, Cint, Uint8, Uint8, Uint8, Uint8), renderer, vx, vy, n, r, g, b, a)
end

function filledPolygonColor(renderer, vx, vy, n, color)
    ccall((:filledPolygonColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{Sint16}, Ptr{Sint16}, Cint, Uint32), renderer, vx, vy, n, color)
end

function filledPolygonRGBA(renderer, vx, vy, n, r, g, b, a)
    ccall((:filledPolygonRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{Sint16}, Ptr{Sint16}, Cint, Uint8, Uint8, Uint8, Uint8), renderer, vx, vy, n, r, g, b, a)
end

function texturedPolygon(renderer, vx, vy, n, texture, texture_dx, texture_dy)
    ccall((:texturedPolygon, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{Sint16}, Ptr{Sint16}, Cint, Ptr{SDL_Surface}, Cint, Cint), renderer, vx, vy, n, texture, texture_dx, texture_dy)
end

function bezierColor(renderer, vx, vy, n, s, color)
    ccall((:bezierColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{Sint16}, Ptr{Sint16}, Cint, Cint, Uint32), renderer, vx, vy, n, s, color)
end

function bezierRGBA(renderer, vx, vy, n, s, r, g, b, a)
    ccall((:bezierRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Ptr{Sint16}, Ptr{Sint16}, Cint, Cint, Uint8, Uint8, Uint8, Uint8), renderer, vx, vy, n, s, r, g, b, a)
end

function gfxPrimitivesSetFont(fontdata, cw, ch)
    ccall((:gfxPrimitivesSetFont, libsdl2), Cvoid, (Ptr{Cvoid}, Uint32, Uint32), fontdata, cw, ch)
end

function gfxPrimitivesSetFontRotation(rotation)
    ccall((:gfxPrimitivesSetFontRotation, libsdl2), Cvoid, (Uint32,), rotation)
end

function characterColor(renderer, x, y, c, color)
    ccall((:characterColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Cchar, Uint32), renderer, x, y, c, color)
end

function characterRGBA(renderer, x, y, c, r, g, b, a)
    ccall((:characterRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Cchar, Uint8, Uint8, Uint8, Uint8), renderer, x, y, c, r, g, b, a)
end

function stringColor(renderer, x, y, s, color)
    ccall((:stringColor, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Ptr{Cchar}, Uint32), renderer, x, y, s, color)
end

function stringRGBA(renderer, x, y, s, r, g, b, a)
    ccall((:stringRGBA, libsdl2), Cint, (Ptr{SDL_Renderer}, Sint16, Sint16, Ptr{Cchar}, Uint8, Uint8, Uint8, Uint8), renderer, x, y, s, r, g, b, a)
end

function SDL_imageFilterMMXdetect()
    ccall((:SDL_imageFilterMMXdetect, libsdl2), Cint, ())
end

function SDL_imageFilterMMXoff()
    ccall((:SDL_imageFilterMMXoff, libsdl2), Cvoid, ())
end

function SDL_imageFilterMMXon()
    ccall((:SDL_imageFilterMMXon, libsdl2), Cvoid, ())
end

function SDL_imageFilterAdd(Src1, Src2, Dest, length)
    ccall((:SDL_imageFilterAdd, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Src2, Dest, length)
end

function SDL_imageFilterMean(Src1, Src2, Dest, length)
    ccall((:SDL_imageFilterMean, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Src2, Dest, length)
end

function SDL_imageFilterSub(Src1, Src2, Dest, length)
    ccall((:SDL_imageFilterSub, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Src2, Dest, length)
end

function SDL_imageFilterAbsDiff(Src1, Src2, Dest, length)
    ccall((:SDL_imageFilterAbsDiff, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Src2, Dest, length)
end

function SDL_imageFilterMult(Src1, Src2, Dest, length)
    ccall((:SDL_imageFilterMult, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Src2, Dest, length)
end

function SDL_imageFilterMultNor(Src1, Src2, Dest, length)
    ccall((:SDL_imageFilterMultNor, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Src2, Dest, length)
end

function SDL_imageFilterMultDivby2(Src1, Src2, Dest, length)
    ccall((:SDL_imageFilterMultDivby2, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Src2, Dest, length)
end

function SDL_imageFilterMultDivby4(Src1, Src2, Dest, length)
    ccall((:SDL_imageFilterMultDivby4, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Src2, Dest, length)
end

function SDL_imageFilterBitAnd(Src1, Src2, Dest, length)
    ccall((:SDL_imageFilterBitAnd, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Src2, Dest, length)
end

function SDL_imageFilterBitOr(Src1, Src2, Dest, length)
    ccall((:SDL_imageFilterBitOr, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Src2, Dest, length)
end

function SDL_imageFilterDiv(Src1, Src2, Dest, length)
    ccall((:SDL_imageFilterDiv, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Src2, Dest, length)
end

function SDL_imageFilterBitNegation(Src1, Dest, length)
    ccall((:SDL_imageFilterBitNegation, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint), Src1, Dest, length)
end

function SDL_imageFilterAddByte(Src1, Dest, length, C)
    ccall((:SDL_imageFilterAddByte, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar), Src1, Dest, length, C)
end

function SDL_imageFilterAddUint(Src1, Dest, length, C)
    ccall((:SDL_imageFilterAddUint, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuint), Src1, Dest, length, C)
end

function SDL_imageFilterAddByteToHalf(Src1, Dest, length, C)
    ccall((:SDL_imageFilterAddByteToHalf, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar), Src1, Dest, length, C)
end

function SDL_imageFilterSubByte(Src1, Dest, length, C)
    ccall((:SDL_imageFilterSubByte, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar), Src1, Dest, length, C)
end

function SDL_imageFilterSubUint(Src1, Dest, length, C)
    ccall((:SDL_imageFilterSubUint, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuint), Src1, Dest, length, C)
end

function SDL_imageFilterShiftRight(Src1, Dest, length, N)
    ccall((:SDL_imageFilterShiftRight, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar), Src1, Dest, length, N)
end

function SDL_imageFilterShiftRightUint(Src1, Dest, length, N)
    ccall((:SDL_imageFilterShiftRightUint, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar), Src1, Dest, length, N)
end

function SDL_imageFilterMultByByte(Src1, Dest, length, C)
    ccall((:SDL_imageFilterMultByByte, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar), Src1, Dest, length, C)
end

function SDL_imageFilterShiftRightAndMultByByte(Src1, Dest, length, N, C)
    ccall((:SDL_imageFilterShiftRightAndMultByByte, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar, Cuchar), Src1, Dest, length, N, C)
end

function SDL_imageFilterShiftLeftByte(Src1, Dest, length, N)
    ccall((:SDL_imageFilterShiftLeftByte, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar), Src1, Dest, length, N)
end

function SDL_imageFilterShiftLeftUint(Src1, Dest, length, N)
    ccall((:SDL_imageFilterShiftLeftUint, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar), Src1, Dest, length, N)
end

function SDL_imageFilterShiftLeft(Src1, Dest, length, N)
    ccall((:SDL_imageFilterShiftLeft, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar), Src1, Dest, length, N)
end

function SDL_imageFilterBinarizeUsingThreshold(Src1, Dest, length, T)
    ccall((:SDL_imageFilterBinarizeUsingThreshold, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar), Src1, Dest, length, T)
end

function SDL_imageFilterClipToRange(Src1, Dest, length, Tmin, Tmax)
    ccall((:SDL_imageFilterClipToRange, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cuchar, Cuchar), Src1, Dest, length, Tmin, Tmax)
end

function SDL_imageFilterNormalizeLinear(Src, Dest, length, Cmin, Cmax, Nmin, Nmax)
    ccall((:SDL_imageFilterNormalizeLinear, libsdl2), Cint, (Ptr{Cuchar}, Ptr{Cuchar}, Cuint, Cint, Cint, Cint, Cint), Src, Dest, length, Cmin, Cmax, Nmin, Nmax)
end

function rotozoomSurface(src, angle, zoom, smooth)
    ccall((:rotozoomSurface, libsdl2), Ptr{SDL_Surface}, (Ptr{SDL_Surface}, Cdouble, Cdouble, Cint), src, angle, zoom, smooth)
end

function rotozoomSurfaceXY(src, angle, zoomx, zoomy, smooth)
    ccall((:rotozoomSurfaceXY, libsdl2), Ptr{SDL_Surface}, (Ptr{SDL_Surface}, Cdouble, Cdouble, Cdouble, Cint), src, angle, zoomx, zoomy, smooth)
end

function rotozoomSurfaceSize(width, height, angle, zoom, dstwidth, dstheight)
    ccall((:rotozoomSurfaceSize, libsdl2), Cvoid, (Cint, Cint, Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), width, height, angle, zoom, dstwidth, dstheight)
end

function rotozoomSurfaceSizeXY(width, height, angle, zoomx, zoomy, dstwidth, dstheight)
    ccall((:rotozoomSurfaceSizeXY, libsdl2), Cvoid, (Cint, Cint, Cdouble, Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), width, height, angle, zoomx, zoomy, dstwidth, dstheight)
end

function zoomSurface(src, zoomx, zoomy, smooth)
    ccall((:zoomSurface, libsdl2), Ptr{SDL_Surface}, (Ptr{SDL_Surface}, Cdouble, Cdouble, Cint), src, zoomx, zoomy, smooth)
end

function zoomSurfaceSize(width, height, zoomx, zoomy, dstwidth, dstheight)
    ccall((:zoomSurfaceSize, libsdl2), Cvoid, (Cint, Cint, Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), width, height, zoomx, zoomy, dstwidth, dstheight)
end

function shrinkSurface(src, factorx, factory)
    ccall((:shrinkSurface, libsdl2), Ptr{SDL_Surface}, (Ptr{SDL_Surface}, Cint, Cint), src, factorx, factory)
end

function rotateSurface90Degrees(src, numClockwiseTurns)
    ccall((:rotateSurface90Degrees, libsdl2), Ptr{SDL_Surface}, (Ptr{SDL_Surface}, Cint), src, numClockwiseTurns)
end

struct __JL_Ctag_476
    autoclose::SDL_bool
    fp::Ptr{Libc.FILE}
end
function Base.getproperty(x::Ptr{__JL_Ctag_476}, f::Symbol)
    f === :autoclose && return Ptr{SDL_bool}(x + 0)
    f === :fp && return Ptr{Ptr{Libc.FILE}}(x + 8)
    return getfield(x, f)
end

function Base.getproperty(x::__JL_Ctag_476, f::Symbol)
    r = Ref{__JL_Ctag_476}(x)
    ptr = Base.unsafe_convert(Ptr{__JL_Ctag_476}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{__JL_Ctag_476}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end


struct __JL_Ctag_477
    base::Ptr{Uint8}
    here::Ptr{Uint8}
    stop::Ptr{Uint8}
end
function Base.getproperty(x::Ptr{__JL_Ctag_477}, f::Symbol)
    f === :base && return Ptr{Ptr{Uint8}}(x + 0)
    f === :here && return Ptr{Ptr{Uint8}}(x + 8)
    f === :stop && return Ptr{Ptr{Uint8}}(x + 16)
    return getfield(x, f)
end

function Base.getproperty(x::__JL_Ctag_477, f::Symbol)
    r = Ref{__JL_Ctag_477}(x)
    ptr = Base.unsafe_convert(Ptr{__JL_Ctag_477}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{__JL_Ctag_477}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end


struct __JL_Ctag_478
    data1::Ptr{Cvoid}
    data2::Ptr{Cvoid}
end
function Base.getproperty(x::Ptr{__JL_Ctag_478}, f::Symbol)
    f === :data1 && return Ptr{Ptr{Cvoid}}(x + 0)
    f === :data2 && return Ptr{Ptr{Cvoid}}(x + 8)
    return getfield(x, f)
end

function Base.getproperty(x::__JL_Ctag_478, f::Symbol)
    r = Ref{__JL_Ctag_478}(x)
    ptr = Base.unsafe_convert(Ptr{__JL_Ctag_478}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{__JL_Ctag_478}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end


struct __JL_Ctag_480
    hat::Cint
    hat_mask::Cint
end
function Base.getproperty(x::Ptr{__JL_Ctag_480}, f::Symbol)
    f === :hat && return Ptr{Cint}(x + 0)
    f === :hat_mask && return Ptr{Cint}(x + 4)
    return getfield(x, f)
end

function Base.getproperty(x::__JL_Ctag_480, f::Symbol)
    r = Ref{__JL_Ctag_480}(x)
    ptr = Base.unsafe_convert(Ptr{__JL_Ctag_480}, r)
    fptr = getproperty(ptr, f)
    GC.@preserve r unsafe_load(fptr)
end

function Base.setproperty!(x::Ptr{__JL_Ctag_480}, f::Symbol, v)
    unsafe_store!(getproperty(x, f), v)
end


const TARGET_OS_MACCATALYST = 0

const __MACOSX__ = 1

# Skipping MacroDefinition: SDL_DEPRECATED __attribute__ ( ( deprecated ) )

# Skipping MacroDefinition: SDL_UNUSED __attribute__ ( ( unused ) )

# Skipping MacroDefinition: DECLSPEC __attribute__ ( ( visibility ( "default" ) ) )

# Skipping MacroDefinition: SDL_INLINE __inline__

# Skipping MacroDefinition: SDL_FORCE_INLINE __attribute__ ( ( always_inline ) ) static __inline__

# Skipping MacroDefinition: SDL_NORETURN __attribute__ ( ( noreturn ) )

# Skipping MacroDefinition: SDL_FALLTHROUGH __attribute__ ( ( __fallthrough__ ) )

const SIZEOF_VOIDP = 8

const HAVE_GCC_ATOMICS = 1

const HAVE_LIBC = 1

const STDC_HEADERS = 1

const HAVE_DLOPEN = 1

const HAVE_MALLOC = 1

const HAVE_CALLOC = 1

const HAVE_REALLOC = 1

const HAVE_FREE = 1

const HAVE_ALLOCA = 1

const HAVE_GETENV = 1

const HAVE_SETENV = 1

const HAVE_PUTENV = 1

const HAVE_UNSETENV = 1

const HAVE_QSORT = 1

const HAVE_BSEARCH = 1

const HAVE_ABS = 1

const HAVE_BCOPY = 1

const HAVE_MEMSET = 1

const HAVE_MEMCPY = 1

const HAVE_MEMMOVE = 1

const HAVE_MEMCMP = 1

const HAVE_WCSLEN = 1

const HAVE_WCSLCPY = 1

const HAVE_WCSLCAT = 1

const HAVE_WCSDUP = 1

const HAVE_WCSSTR = 1

const HAVE_WCSCMP = 1

const HAVE_WCSNCMP = 1

const HAVE_WCSCASECMP = 1

const HAVE_WCSNCASECMP = 1

const HAVE_STRLEN = 1

const HAVE_STRLCPY = 1

const HAVE_STRLCAT = 1

const HAVE_INDEX = 1

const HAVE_RINDEX = 1

const HAVE_STRCHR = 1

const HAVE_STRRCHR = 1

const HAVE_STRSTR = 1

const HAVE_STRTOK_R = 1

const HAVE_STRTOL = 1

const HAVE_STRTOUL = 1

const HAVE_STRTOLL = 1

const HAVE_STRTOULL = 1

const HAVE_STRTOD = 1

const HAVE_ATOI = 1

const HAVE_ATOF = 1

const HAVE_STRCMP = 1

const HAVE_STRNCMP = 1

const HAVE_STRCASECMP = 1

const HAVE_STRNCASECMP = 1

const HAVE_VSSCANF = 1

const HAVE_VSNPRINTF = 1

const HAVE_ACOS = 1

const HAVE_ACOSF = 1

const HAVE_ASIN = 1

const HAVE_ASINF = 1

const HAVE_ATAN = 1

const HAVE_ATANF = 1

const HAVE_ATAN2 = 1

const HAVE_ATAN2F = 1

const HAVE_CEIL = 1

const HAVE_CEILF = 1

const HAVE_COPYSIGN = 1

const HAVE_COPYSIGNF = 1

const HAVE_COS = 1

const HAVE_COSF = 1

const HAVE_EXP = 1

const HAVE_EXPF = 1

const HAVE_FABS = 1

const HAVE_FABSF = 1

const HAVE_FLOOR = 1

const HAVE_FLOORF = 1

const HAVE_FMOD = 1

const HAVE_FMODF = 1

const HAVE_LOG = 1

const HAVE_LOGF = 1

const HAVE_LOG10 = 1

const HAVE_LOG10F = 1

const HAVE_LROUND = 1

const HAVE_LROUNDF = 1

const HAVE_POW = 1

const HAVE_POWF = 1

const HAVE_ROUND = 1

const HAVE_ROUNDF = 1

const HAVE_SCALBN = 1

const HAVE_SCALBNF = 1

const HAVE_SIN = 1

const HAVE_SINF = 1

const HAVE_SQRT = 1

const HAVE_SQRTF = 1

const HAVE_TAN = 1

const HAVE_TANF = 1

const HAVE_TRUNC = 1

const HAVE_TRUNCF = 1

const HAVE_FSEEKO = 1

const HAVE_SIGACTION = 1

const HAVE_SA_SIGACTION = 1

const HAVE_SETJMP = 1

const HAVE_NANOSLEEP = 1

const HAVE_SYSCONF = 1

const HAVE_SYSCTLBYNAME = 1

const HAVE_MPROTECT = 1

const HAVE_ICONV = 1

const HAVE_PTHREAD_SETNAME_NP = 1

const HAVE_POLL = 1

const HAVE__EXIT = 1

const HAVE_O_CLOEXEC = 1

const SDL_AUDIO_DRIVER_COREAUDIO = 1

const SDL_AUDIO_DRIVER_DISK = 1

const SDL_AUDIO_DRIVER_DUMMY = 1

const SDL_JOYSTICK_IOKIT = 1

const SDL_JOYSTICK_HIDAPI = 1

const SDL_JOYSTICK_VIRTUAL = 1

const SDL_HAPTIC_IOKIT = 1

const SDL_SENSOR_DUMMY = 1

const SDL_LOADSO_DLOPEN = 1

const SDL_THREAD_PTHREAD = 1

const SDL_THREAD_PTHREAD_RECURSIVE_MUTEX = 1

const SDL_TIMER_UNIX = 1

const SDL_VIDEO_DRIVER_COCOA = 1

const SDL_VIDEO_DRIVER_DUMMY = 1

const SDL_VIDEO_RENDER_OGL = 1

const SDL_VIDEO_RENDER_OGL_ES2 = 1

const SDL_VIDEO_RENDER_METAL = 1

const SDL_VIDEO_OPENGL = 1

const SDL_VIDEO_OPENGL_ES2 = 1

const SDL_VIDEO_OPENGL_CGL = 1

const SDL_VIDEO_OPENGL_EGL = 1

const SDL_VIDEO_VULKAN = 1

const SDL_VIDEO_METAL = 1

const SDL_POWER_MACOSX = 1

const DYNAPI_NEEDS_DLOPEN = 1

const _DARWIN_C_SOURCE = 1

const SDL_MAX_SINT8 = Sint8(0x7f)

const SDL_MAX_UINT8 = Uint8(0xff)

const SDL_MIN_UINT8 = Uint8(0x00)

const SDL_MAX_SINT16 = Sint16(0x7fff)

const SDL_MAX_UINT16 = Uint16(0xffff)

const SDL_MIN_UINT16 = Uint16(0x0000)

const SDL_MAX_SINT32 = Sint32(0x7fffffff)

const SDL_MAX_UINT32 = Uint32(Cuint(0xffffffff))

const SDL_MIN_UINT32 = Uint32(0x00000000)

const SDL_MAX_SINT64 = Sint64(Clonglong(0x7fffffffffffffff))

const SDL_MAX_UINT64 = Uint64(Culonglong(0xffffffffffffffff))

const SDL_MIN_UINT64 = Uint64(Culonglong(0x0000000000000000))

const SDL_PRIs64 = "lld"

const SDL_ASSERT_LEVEL = 2

# Skipping MacroDefinition: SDL_FUNCTION __func__

const SDL_NULL_WHILE_LOOP_CONDITION = 0

const SDL_assert_state = SDL_AssertState

const SDL_assert_data = SDL_AssertData

const SDL_LIL_ENDIAN = 1234

const SDL_BIG_ENDIAN = 4321

const SDL_BYTEORDER = SDL_LIL_ENDIAN

const SDL_FLOATWORDORDER = SDL_BYTEORDER

const SDL_MUTEX_TIMEDOUT = 1

const SDL_MUTEX_MAXWAIT = ~(Uint32(0))

const SDL_RWOPS_UNKNOWN = Cuint(0)

const SDL_RWOPS_WINFILE = Cuint(1)

const SDL_RWOPS_STDFILE = Cuint(2)

const SDL_RWOPS_JNIFILE = Cuint(3)

const SDL_RWOPS_MEMORY = Cuint(4)

const SDL_RWOPS_MEMORY_RO = Cuint(5)

const RW_SEEK_SET = 0

const RW_SEEK_CUR = 1

const RW_SEEK_END = 2

const SDL_AUDIO_MASK_BITSIZE = 0xff

const SDL_AUDIO_MASK_DATATYPE = 1 << 8

const SDL_AUDIO_MASK_ENDIAN = 1 << 12

const SDL_AUDIO_MASK_SIGNED = 1 << 15

const AUDIO_U8 = 0x0008

const AUDIO_S8 = 0x8008

const AUDIO_U16LSB = 0x0010

const AUDIO_S16LSB = 0x8010

const AUDIO_U16MSB = 0x1010

const AUDIO_S16MSB = 0x9010

const AUDIO_U16 = AUDIO_U16LSB

const AUDIO_S16 = AUDIO_S16LSB

const AUDIO_S32LSB = 0x8020

const AUDIO_S32MSB = 0x9020

const AUDIO_S32 = AUDIO_S32LSB

const AUDIO_F32LSB = 0x8120

const AUDIO_F32MSB = 0x9120

const AUDIO_F32 = AUDIO_F32LSB

const AUDIO_U16SYS = AUDIO_U16LSB

const AUDIO_S16SYS = AUDIO_S16LSB

const AUDIO_S32SYS = AUDIO_S32LSB

const AUDIO_F32SYS = AUDIO_F32LSB

const SDL_AUDIO_ALLOW_FREQUENCY_CHANGE = 0x00000001

const SDL_AUDIO_ALLOW_FORMAT_CHANGE = 0x00000002

const SDL_AUDIO_ALLOW_CHANNELS_CHANGE = 0x00000004

const SDL_AUDIO_ALLOW_SAMPLES_CHANGE = 0x00000008

const SDL_AUDIO_ALLOW_ANY_CHANGE = ((SDL_AUDIO_ALLOW_FREQUENCY_CHANGE | SDL_AUDIO_ALLOW_FORMAT_CHANGE) | SDL_AUDIO_ALLOW_CHANNELS_CHANGE) | SDL_AUDIO_ALLOW_SAMPLES_CHANGE

const SDL_AUDIOCVT_MAX_FILTERS = 9

# Skipping MacroDefinition: SDL_AUDIOCVT_PACKED __attribute__ ( ( packed ) )

const SDL_MIX_MAXVOLUME = 128

const SDL_CACHELINE_SIZE = 128

const SDL_ALPHA_OPAQUE = 255

const SDL_ALPHA_TRANSPARENT = 0

const SDL_Colour = SDL_Color

const SDL_SWSURFACE = 0

const SDL_PREALLOC = 0x00000001

const SDL_RLEACCEL = 0x00000002

const SDL_DONTFREE = 0x00000004

const SDL_SIMD_ALIGNED = 0x00000008

const SDL_BlitSurface = SDL_UpperBlit

const SDL_BlitScaled = SDL_UpperBlitScaled

const SDL_WINDOWPOS_UNDEFINED_MASK = Cuint(0x1fff0000)

SDL_WINDOWPOS_UNDEFINED_DISPLAY(X) = SDL_WINDOWPOS_UNDEFINED_MASK | X

const SDL_WINDOWPOS_UNDEFINED = SDL_WINDOWPOS_UNDEFINED_DISPLAY(0)

const SDL_WINDOWPOS_CENTERED_MASK = Cuint(0x2fff0000)

SDL_WINDOWPOS_CENTERED_DISPLAY(X) = SDL_WINDOWPOS_CENTERED_MASK | X

const SDL_WINDOWPOS_CENTERED = SDL_WINDOWPOS_CENTERED_DISPLAY(0)

const SDLK_SCANCODE_MASK = 1 << 30

SDL_BUTTON(X) = 1 << (X - 1)

const SDL_BUTTON_LEFT = 1

const SDL_BUTTON_MIDDLE = 2

const SDL_BUTTON_RIGHT = 3

const SDL_BUTTON_X1 = 4

const SDL_BUTTON_X2 = 5

const SDL_BUTTON_LMASK = SDL_BUTTON(SDL_BUTTON_LEFT)

const SDL_BUTTON_MMASK = SDL_BUTTON(SDL_BUTTON_MIDDLE)

const SDL_BUTTON_RMASK = SDL_BUTTON(SDL_BUTTON_RIGHT)

const SDL_BUTTON_X1MASK = SDL_BUTTON(SDL_BUTTON_X1)

const SDL_BUTTON_X2MASK = SDL_BUTTON(SDL_BUTTON_X2)

const SDL_IPHONE_MAX_GFORCE = 5.0

const SDL_VIRTUAL_JOYSTICK_DESC_VERSION = 1

const SDL_JOYSTICK_AXIS_MAX = 32767

const SDL_JOYSTICK_AXIS_MIN = -32768

const SDL_HAT_CENTERED = 0x00

const SDL_HAT_UP = 0x01

const SDL_HAT_RIGHT = 0x02

const SDL_HAT_DOWN = 0x04

const SDL_HAT_LEFT = 0x08

const SDL_HAT_RIGHTUP = SDL_HAT_RIGHT | SDL_HAT_UP

const SDL_HAT_RIGHTDOWN = SDL_HAT_RIGHT | SDL_HAT_DOWN

const SDL_HAT_LEFTUP = SDL_HAT_LEFT | SDL_HAT_UP

const SDL_HAT_LEFTDOWN = SDL_HAT_LEFT | SDL_HAT_DOWN

const SDL_STANDARD_GRAVITY = Float32(9.80665)

const SDL_MOUSE_TOUCHID = Sint64(-1)

const SDL_RELEASED = 0

const SDL_PRESSED = 1

const SDL_TEXTEDITINGEVENT_TEXT_SIZE = 32

const SDL_TEXTINPUTEVENT_TEXT_SIZE = 32

const SDL_QUERY = -1

const SDL_IGNORE = 0

const SDL_DISABLE = 0

const SDL_ENABLE = 1

const SDL_HAPTIC_CONSTANT = Cuint(1) << 0

const SDL_HAPTIC_SINE = Cuint(1) << 1

const SDL_HAPTIC_LEFTRIGHT = Cuint(1) << 2

const SDL_HAPTIC_TRIANGLE = Cuint(1) << 3

const SDL_HAPTIC_SAWTOOTHUP = Cuint(1) << 4

const SDL_HAPTIC_SAWTOOTHDOWN = Cuint(1) << 5

const SDL_HAPTIC_RAMP = Cuint(1) << 6

const SDL_HAPTIC_SPRING = Cuint(1) << 7

const SDL_HAPTIC_DAMPER = Cuint(1) << 8

const SDL_HAPTIC_INERTIA = Cuint(1) << 9

const SDL_HAPTIC_FRICTION = Cuint(1) << 10

const SDL_HAPTIC_CUSTOM = Cuint(1) << 11

const SDL_HAPTIC_GAIN = Cuint(1) << 12

const SDL_HAPTIC_AUTOCENTER = Cuint(1) << 13

const SDL_HAPTIC_STATUS = Cuint(1) << 14

const SDL_HAPTIC_PAUSE = Cuint(1) << 15

const SDL_HAPTIC_POLAR = 0

const SDL_HAPTIC_CARTESIAN = 1

const SDL_HAPTIC_SPHERICAL = 2

const SDL_HAPTIC_STEERING_AXIS = 3

const SDL_HAPTIC_INFINITY = Cuint(4294967295)

const SDL_HINT_ACCELEROMETER_AS_JOYSTICK = "SDL_ACCELEROMETER_AS_JOYSTICK"

const SDL_HINT_ALLOW_ALT_TAB_WHILE_GRABBED = "SDL_ALLOW_ALT_TAB_WHILE_GRABBED"

const SDL_HINT_ALLOW_TOPMOST = "SDL_ALLOW_TOPMOST"

const SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION = "SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION"

const SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION = "SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION"

const SDL_HINT_ANDROID_BLOCK_ON_PAUSE = "SDL_ANDROID_BLOCK_ON_PAUSE"

const SDL_HINT_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO = "SDL_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO"

const SDL_HINT_ANDROID_TRAP_BACK_BUTTON = "SDL_ANDROID_TRAP_BACK_BUTTON"

const SDL_HINT_APP_NAME = "SDL_APP_NAME"

const SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS = "SDL_APPLE_TV_CONTROLLER_UI_EVENTS"

const SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION = "SDL_APPLE_TV_REMOTE_ALLOW_ROTATION"

const SDL_HINT_AUDIO_CATEGORY = "SDL_AUDIO_CATEGORY"

const SDL_HINT_AUDIO_DEVICE_APP_NAME = "SDL_AUDIO_DEVICE_APP_NAME"

const SDL_HINT_AUDIO_DEVICE_STREAM_NAME = "SDL_AUDIO_DEVICE_STREAM_NAME"

const SDL_HINT_AUDIO_DEVICE_STREAM_ROLE = "SDL_AUDIO_DEVICE_STREAM_ROLE"

const SDL_HINT_AUDIO_RESAMPLING_MODE = "SDL_AUDIO_RESAMPLING_MODE"

const SDL_HINT_AUTO_UPDATE_JOYSTICKS = "SDL_AUTO_UPDATE_JOYSTICKS"

const SDL_HINT_AUTO_UPDATE_SENSORS = "SDL_AUTO_UPDATE_SENSORS"

const SDL_HINT_BMP_SAVE_LEGACY_FORMAT = "SDL_BMP_SAVE_LEGACY_FORMAT"

const SDL_HINT_DISPLAY_USABLE_BOUNDS = "SDL_DISPLAY_USABLE_BOUNDS"

const SDL_HINT_EMSCRIPTEN_ASYNCIFY = "SDL_EMSCRIPTEN_ASYNCIFY"

const SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT = "SDL_EMSCRIPTEN_KEYBOARD_ELEMENT"

const SDL_HINT_ENABLE_STEAM_CONTROLLERS = "SDL_ENABLE_STEAM_CONTROLLERS"

const SDL_HINT_EVENT_LOGGING = "SDL_EVENT_LOGGING"

const SDL_HINT_FORCE_RAISEWINDOW = "SDL_HINT_FORCE_RAISEWINDOW"

const SDL_HINT_FRAMEBUFFER_ACCELERATION = "SDL_FRAMEBUFFER_ACCELERATION"

const SDL_HINT_GAMECONTROLLERCONFIG = "SDL_GAMECONTROLLERCONFIG"

const SDL_HINT_GAMECONTROLLERCONFIG_FILE = "SDL_GAMECONTROLLERCONFIG_FILE"

const SDL_HINT_GAMECONTROLLERTYPE = "SDL_GAMECONTROLLERTYPE"

const SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES = "SDL_GAMECONTROLLER_IGNORE_DEVICES"

const SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT = "SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT"

const SDL_HINT_GAMECONTROLLER_USE_BUTTON_LABELS = "SDL_GAMECONTROLLER_USE_BUTTON_LABELS"

const SDL_HINT_GRAB_KEYBOARD = "SDL_GRAB_KEYBOARD"

const SDL_HINT_IDLE_TIMER_DISABLED = "SDL_IOS_IDLE_TIMER_DISABLED"

const SDL_HINT_IME_INTERNAL_EDITING = "SDL_IME_INTERNAL_EDITING"

const SDL_HINT_IME_SHOW_UI = "SDL_IME_SHOW_UI"

const SDL_HINT_IME_SUPPORT_EXTENDED_TEXT = "SDL_IME_SUPPORT_EXTENDED_TEXT"

const SDL_HINT_IOS_HIDE_HOME_INDICATOR = "SDL_IOS_HIDE_HOME_INDICATOR"

const SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS = "SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS"

const SDL_HINT_JOYSTICK_HIDAPI = "SDL_JOYSTICK_HIDAPI"

const SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE = "SDL_JOYSTICK_HIDAPI_GAMECUBE"

const SDL_HINT_JOYSTICK_GAMECUBE_RUMBLE_BRAKE = "SDL_JOYSTICK_GAMECUBE_RUMBLE_BRAKE"

const SDL_HINT_JOYSTICK_HIDAPI_JOY_CONS = "SDL_JOYSTICK_HIDAPI_JOY_CONS"

const SDL_HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS = "SDL_JOYSTICK_HIDAPI_COMBINE_JOY_CONS"

const SDL_HINT_JOYSTICK_HIDAPI_LUNA = "SDL_JOYSTICK_HIDAPI_LUNA"

const SDL_HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC = "SDL_JOYSTICK_HIDAPI_NINTENDO_CLASSIC"

const SDL_HINT_JOYSTICK_HIDAPI_SHIELD = "SDL_JOYSTICK_HIDAPI_SHIELD"

const SDL_HINT_JOYSTICK_HIDAPI_PS4 = "SDL_JOYSTICK_HIDAPI_PS4"

const SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE = "SDL_JOYSTICK_HIDAPI_PS4_RUMBLE"

const SDL_HINT_JOYSTICK_HIDAPI_PS5 = "SDL_JOYSTICK_HIDAPI_PS5"

const SDL_HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED = "SDL_JOYSTICK_HIDAPI_PS5_PLAYER_LED"

const SDL_HINT_JOYSTICK_HIDAPI_PS5_RUMBLE = "SDL_JOYSTICK_HIDAPI_PS5_RUMBLE"

const SDL_HINT_JOYSTICK_HIDAPI_STADIA = "SDL_JOYSTICK_HIDAPI_STADIA"

const SDL_HINT_JOYSTICK_HIDAPI_STEAM = "SDL_JOYSTICK_HIDAPI_STEAM"

const SDL_HINT_JOYSTICK_HIDAPI_SWITCH = "SDL_JOYSTICK_HIDAPI_SWITCH"

const SDL_HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED = "SDL_JOYSTICK_HIDAPI_SWITCH_HOME_LED"

const SDL_HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED = "SDL_JOYSTICK_HIDAPI_JOYCON_HOME_LED"

const SDL_HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED = "SDL_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED"

const SDL_HINT_JOYSTICK_HIDAPI_XBOX = "SDL_JOYSTICK_HIDAPI_XBOX"

const SDL_HINT_JOYSTICK_RAWINPUT = "SDL_JOYSTICK_RAWINPUT"

const SDL_HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT = "SDL_JOYSTICK_RAWINPUT_CORRELATE_XINPUT"

const SDL_HINT_JOYSTICK_ROG_CHAKRAM = "SDL_JOYSTICK_ROG_CHAKRAM"

const SDL_HINT_JOYSTICK_THREAD = "SDL_JOYSTICK_THREAD"

const SDL_HINT_KMSDRM_REQUIRE_DRM_MASTER = "SDL_KMSDRM_REQUIRE_DRM_MASTER"

const SDL_HINT_JOYSTICK_DEVICE = "SDL_JOYSTICK_DEVICE"

const SDL_HINT_LINUX_DIGITAL_HATS = "SDL_LINUX_DIGITAL_HATS"

const SDL_HINT_LINUX_HAT_DEADZONES = "SDL_LINUX_HAT_DEADZONES"

const SDL_HINT_LINUX_JOYSTICK_CLASSIC = "SDL_LINUX_JOYSTICK_CLASSIC"

const SDL_HINT_LINUX_JOYSTICK_DEADZONES = "SDL_LINUX_JOYSTICK_DEADZONES"

const SDL_HINT_MAC_BACKGROUND_APP = "SDL_MAC_BACKGROUND_APP"

const SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK = "SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK"

const SDL_HINT_MAC_OPENGL_ASYNC_DISPATCH = "SDL_MAC_OPENGL_ASYNC_DISPATCH"

const SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS = "SDL_MOUSE_DOUBLE_CLICK_RADIUS"

const SDL_HINT_MOUSE_DOUBLE_CLICK_TIME = "SDL_MOUSE_DOUBLE_CLICK_TIME"

const SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH = "SDL_MOUSE_FOCUS_CLICKTHROUGH"

const SDL_HINT_MOUSE_NORMAL_SPEED_SCALE = "SDL_MOUSE_NORMAL_SPEED_SCALE"

const SDL_HINT_MOUSE_RELATIVE_MODE_CENTER = "SDL_MOUSE_RELATIVE_MODE_CENTER"

const SDL_HINT_MOUSE_RELATIVE_MODE_WARP = "SDL_MOUSE_RELATIVE_MODE_WARP"

const SDL_HINT_MOUSE_RELATIVE_SCALING = "SDL_MOUSE_RELATIVE_SCALING"

const SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE = "SDL_MOUSE_RELATIVE_SPEED_SCALE"

const SDL_HINT_MOUSE_RELATIVE_WARP_MOTION = "SDL_MOUSE_RELATIVE_WARP_MOTION"

const SDL_HINT_MOUSE_TOUCH_EVENTS = "SDL_MOUSE_TOUCH_EVENTS"

const SDL_HINT_MOUSE_AUTO_CAPTURE = "SDL_MOUSE_AUTO_CAPTURE"

const SDL_HINT_NO_SIGNAL_HANDLERS = "SDL_NO_SIGNAL_HANDLERS"

const SDL_HINT_OPENGL_ES_DRIVER = "SDL_OPENGL_ES_DRIVER"

const SDL_HINT_ORIENTATIONS = "SDL_IOS_ORIENTATIONS"

const SDL_HINT_POLL_SENTINEL = "SDL_POLL_SENTINEL"

const SDL_HINT_PREFERRED_LOCALES = "SDL_PREFERRED_LOCALES"

const SDL_HINT_QTWAYLAND_CONTENT_ORIENTATION = "SDL_QTWAYLAND_CONTENT_ORIENTATION"

const SDL_HINT_QTWAYLAND_WINDOW_FLAGS = "SDL_QTWAYLAND_WINDOW_FLAGS"

const SDL_HINT_RENDER_BATCHING = "SDL_RENDER_BATCHING"

const SDL_HINT_RENDER_LINE_METHOD = "SDL_RENDER_LINE_METHOD"

const SDL_HINT_RENDER_DIRECT3D11_DEBUG = "SDL_RENDER_DIRECT3D11_DEBUG"

const SDL_HINT_RENDER_DIRECT3D_THREADSAFE = "SDL_RENDER_DIRECT3D_THREADSAFE"

const SDL_HINT_RENDER_DRIVER = "SDL_RENDER_DRIVER"

const SDL_HINT_RENDER_LOGICAL_SIZE_MODE = "SDL_RENDER_LOGICAL_SIZE_MODE"

const SDL_HINT_RENDER_OPENGL_SHADERS = "SDL_RENDER_OPENGL_SHADERS"

const SDL_HINT_RENDER_SCALE_QUALITY = "SDL_RENDER_SCALE_QUALITY"

const SDL_HINT_RENDER_VSYNC = "SDL_RENDER_VSYNC"

const SDL_HINT_RETURN_KEY_HIDES_IME = "SDL_RETURN_KEY_HIDES_IME"

const SDL_HINT_RPI_VIDEO_LAYER = "SDL_RPI_VIDEO_LAYER"

const SDL_HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME = "SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME"

const SDL_HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL = "SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL"

const SDL_HINT_THREAD_PRIORITY_POLICY = "SDL_THREAD_PRIORITY_POLICY"

const SDL_HINT_THREAD_STACK_SIZE = "SDL_THREAD_STACK_SIZE"

const SDL_HINT_TIMER_RESOLUTION = "SDL_TIMER_RESOLUTION"

const SDL_HINT_TOUCH_MOUSE_EVENTS = "SDL_TOUCH_MOUSE_EVENTS"

const SDL_HINT_VITA_TOUCH_MOUSE_DEVICE = "SDL_HINT_VITA_TOUCH_MOUSE_DEVICE"

const SDL_HINT_TV_REMOTE_AS_JOYSTICK = "SDL_TV_REMOTE_AS_JOYSTICK"

const SDL_HINT_VIDEO_ALLOW_SCREENSAVER = "SDL_VIDEO_ALLOW_SCREENSAVER"

const SDL_HINT_VIDEO_DOUBLE_BUFFER = "SDL_VIDEO_DOUBLE_BUFFER"

const SDL_HINT_VIDEO_EGL_ALLOW_TRANSPARENCY = "SDL_VIDEO_EGL_ALLOW_TRANSPARENCY"

const SDL_HINT_VIDEO_EXTERNAL_CONTEXT = "SDL_VIDEO_EXTERNAL_CONTEXT"

const SDL_HINT_VIDEO_HIGHDPI_DISABLED = "SDL_VIDEO_HIGHDPI_DISABLED"

const SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES = "SDL_VIDEO_MAC_FULLSCREEN_SPACES"

const SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS = "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS"

const SDL_HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR = "SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR"

const SDL_HINT_VIDEO_WAYLAND_PREFER_LIBDECOR = "SDL_VIDEO_WAYLAND_PREFER_LIBDECOR"

const SDL_HINT_VIDEO_WAYLAND_MODE_EMULATION = "SDL_VIDEO_WAYLAND_MODE_EMULATION"

const SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT = "SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT"

const SDL_HINT_VIDEO_FOREIGN_WINDOW_OPENGL = "SDL_VIDEO_FOREIGN_WINDOW_OPENGL"

const SDL_HINT_VIDEO_FOREIGN_WINDOW_VULKAN = "SDL_VIDEO_FOREIGN_WINDOW_VULKAN"

const SDL_HINT_VIDEO_WIN_D3DCOMPILER = "SDL_VIDEO_WIN_D3DCOMPILER"

const SDL_HINT_VIDEO_X11_FORCE_EGL = "SDL_VIDEO_X11_FORCE_EGL"

const SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR = "SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR"

const SDL_HINT_VIDEO_X11_NET_WM_PING = "SDL_VIDEO_X11_NET_WM_PING"

const SDL_HINT_VIDEO_X11_WINDOW_VISUALID = "SDL_VIDEO_X11_WINDOW_VISUALID"

const SDL_HINT_VIDEO_X11_XINERAMA = "SDL_VIDEO_X11_XINERAMA"

const SDL_HINT_VIDEO_X11_XRANDR = "SDL_VIDEO_X11_XRANDR"

const SDL_HINT_VIDEO_X11_XVIDMODE = "SDL_VIDEO_X11_XVIDMODE"

const SDL_HINT_WAVE_FACT_CHUNK = "SDL_WAVE_FACT_CHUNK"

const SDL_HINT_WAVE_RIFF_CHUNK_SIZE = "SDL_WAVE_RIFF_CHUNK_SIZE"

const SDL_HINT_WAVE_TRUNCATION = "SDL_WAVE_TRUNCATION"

const SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING = "SDL_WINDOWS_DISABLE_THREAD_NAMING"

const SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP = "SDL_WINDOWS_ENABLE_MESSAGELOOP"

const SDL_HINT_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS = "SDL_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS"

const SDL_HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL = "SDL_WINDOWS_FORCE_SEMAPHORE_KERNEL"

const SDL_HINT_WINDOWS_INTRESOURCE_ICON = "SDL_WINDOWS_INTRESOURCE_ICON"

const SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL = "SDL_WINDOWS_INTRESOURCE_ICON_SMALL"

const SDL_HINT_WINDOWS_NO_CLOSE_ON_ALT_F4 = "SDL_WINDOWS_NO_CLOSE_ON_ALT_F4"

const SDL_HINT_WINDOWS_USE_D3D9EX = "SDL_WINDOWS_USE_D3D9EX"

const SDL_HINT_WINDOWS_DPI_AWARENESS = "SDL_WINDOWS_DPI_AWARENESS"

const SDL_HINT_WINDOWS_DPI_SCALING = "SDL_WINDOWS_DPI_SCALING"

const SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN = "SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN"

const SDL_HINT_WINDOW_NO_ACTIVATION_WHEN_SHOWN = "SDL_WINDOW_NO_ACTIVATION_WHEN_SHOWN"

const SDL_HINT_WINRT_HANDLE_BACK_BUTTON = "SDL_WINRT_HANDLE_BACK_BUTTON"

const SDL_HINT_WINRT_PRIVACY_POLICY_LABEL = "SDL_WINRT_PRIVACY_POLICY_LABEL"

const SDL_HINT_WINRT_PRIVACY_POLICY_URL = "SDL_WINRT_PRIVACY_POLICY_URL"

const SDL_HINT_X11_FORCE_OVERRIDE_REDIRECT = "SDL_X11_FORCE_OVERRIDE_REDIRECT"

const SDL_HINT_XINPUT_ENABLED = "SDL_XINPUT_ENABLED"

const SDL_HINT_DIRECTINPUT_ENABLED = "SDL_DIRECTINPUT_ENABLED"

const SDL_HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING = "SDL_XINPUT_USE_OLD_JOYSTICK_MAPPING"

const SDL_HINT_AUDIO_INCLUDE_MONITORS = "SDL_AUDIO_INCLUDE_MONITORS"

const SDL_HINT_X11_WINDOW_TYPE = "SDL_X11_WINDOW_TYPE"

const SDL_HINT_QUIT_ON_LAST_WINDOW_CLOSE = "SDL_QUIT_ON_LAST_WINDOW_CLOSE"

const SDL_HINT_VIDEODRIVER = "SDL_VIDEODRIVER"

const SDL_HINT_AUDIODRIVER = "SDL_AUDIODRIVER"

const SDL_HINT_KMSDRM_DEVICE_INDEX = "SDL_KMSDRM_DEVICE_INDEX"

const SDL_HINT_TRACKPAD_IS_TOUCH_ONLY = "SDL_TRACKPAD_IS_TOUCH_ONLY"

const SDL_MAX_LOG_MESSAGE = 4096

const SDL_NONSHAPEABLE_WINDOW = -1

const SDL_INVALID_SHAPE_ARGUMENT = -2

const SDL_WINDOW_LACKS_SHAPE = -3

const SDL_MAJOR_VERSION = 2

const SDL_MINOR_VERSION = 24

const SDL_PATCHLEVEL = 2

SDL_VERSIONNUM(X, Y, Z) = X * 1000 + Y * 100 + Z

const SDL_COMPILEDVERSION = SDL_VERSIONNUM(SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL)

const SDL_INIT_TIMER = Cuint(0x00000001)

const SDL_INIT_AUDIO = Cuint(0x00000010)

const SDL_INIT_VIDEO = Cuint(0x00000020)

const SDL_INIT_JOYSTICK = Cuint(0x00000200)

const SDL_INIT_HAPTIC = Cuint(0x00001000)

const SDL_INIT_GAMECONTROLLER = Cuint(0x00002000)

const SDL_INIT_EVENTS = Cuint(0x00004000)

const SDL_INIT_SENSOR = Cuint(0x00008000)

const SDL_INIT_NOPARACHUTE = Cuint(0x00100000)

const SDL_INIT_EVERYTHING = ((((((SDL_INIT_TIMER | SDL_INIT_AUDIO) | SDL_INIT_VIDEO) | SDL_INIT_EVENTS) | SDL_INIT_JOYSTICK) | SDL_INIT_HAPTIC) | SDL_INIT_GAMECONTROLLER) | SDL_INIT_SENSOR

const SDL_MIXER_MAJOR_VERSION = 2

const SDL_MIXER_MINOR_VERSION = 6

const SDL_MIXER_PATCHLEVEL = 2

const MIX_MAJOR_VERSION = SDL_MIXER_MAJOR_VERSION

const MIX_MINOR_VERSION = SDL_MIXER_MINOR_VERSION

const MIX_PATCHLEVEL = SDL_MIXER_PATCHLEVEL

const SDL_MIXER_COMPILEDVERSION = SDL_VERSIONNUM(SDL_MIXER_MAJOR_VERSION, SDL_MIXER_MINOR_VERSION, SDL_MIXER_PATCHLEVEL)

const MIX_CHANNELS = 8

const MIX_DEFAULT_FREQUENCY = 44100

const MIX_DEFAULT_FORMAT = AUDIO_S16LSB

const MIX_DEFAULT_CHANNELS = 2

const MIX_MAX_VOLUME = SDL_MIX_MAXVOLUME

const MIX_CHANNEL_POST = -2

const MIX_EFFECTSMAXSPEED = "MIX_EFFECTSMAXSPEED"

const SDL_IMAGE_MAJOR_VERSION = 2

const SDL_IMAGE_MINOR_VERSION = 6

const SDL_IMAGE_PATCHLEVEL = 2

const SDL_IMAGE_COMPILEDVERSION = SDL_VERSIONNUM(SDL_IMAGE_MAJOR_VERSION, SDL_IMAGE_MINOR_VERSION, SDL_IMAGE_PATCHLEVEL)

const SDL_TTF_MAJOR_VERSION = 2

const SDL_TTF_MINOR_VERSION = 0

const SDL_TTF_PATCHLEVEL = 15

const TTF_MAJOR_VERSION = SDL_TTF_MAJOR_VERSION

const TTF_MINOR_VERSION = SDL_TTF_MINOR_VERSION

const TTF_PATCHLEVEL = SDL_TTF_PATCHLEVEL

const SDL_TTF_COMPILEDVERSION = SDL_VERSIONNUM(SDL_TTF_MAJOR_VERSION, SDL_TTF_MINOR_VERSION, SDL_TTF_PATCHLEVEL)

const UNICODE_BOM_NATIVE = 0xfeff

const UNICODE_BOM_SWAPPED = 0xfffe

const TTF_STYLE_NORMAL = 0x00

const TTF_STYLE_BOLD = 0x01

const TTF_STYLE_ITALIC = 0x02

const TTF_STYLE_UNDERLINE = 0x04

const TTF_STYLE_STRIKETHROUGH = 0x08

const TTF_HINTING_NORMAL = 0

const TTF_HINTING_LIGHT = 1

const TTF_HINTING_MONO = 2

const TTF_HINTING_NONE = 3

const FPS_UPPER_LIMIT = 200

const FPS_LOWER_LIMIT = 1

const FPS_DEFAULT = 30

# Skipping MacroDefinition: SDL2_FRAMERATE_SCOPE extern

const SDL2_GFXPRIMITIVES_MAJOR = 1

const SDL2_GFXPRIMITIVES_MINOR = 0

const SDL2_GFXPRIMITIVES_MICRO = 3

# Skipping MacroDefinition: SDL2_GFXPRIMITIVES_SCOPE extern

# Skipping MacroDefinition: SDL2_IMAGEFILTER_SCOPE extern

const SMOOTHING_OFF = 0

const SMOOTHING_ON = 1

# Skipping MacroDefinition: SDL2_ROTOZOOM_SCOPE extern

# exports
const PREFIXES = ["TTF_", "IMG_", "Mix_", "SDL_", "MIX_", "RW_", "AUDIO_", "KMOD_", "HAVE_"]
for name in names(@__MODULE__; all=true), prefix in PREFIXES
    if startswith(string(name), prefix)
        @eval export $name
    end
end

end # module
