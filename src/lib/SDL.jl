# Julia wrapper for header: /Users/bieler/Downloads/SDL2-2.0.5/include/SDL.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0
include("SDL_h.jl")

const va_list = Ptr{Void}#FIXME

function SDL_GetPlatform()
    ccall((:SDL_GetPlatform, libSDL), Cstring, ())
end

function SDL_malloc(size::Csize_t)
    ccall((:SDL_malloc, libSDL), Ptr{Void}, (Csize_t,), size)
end

function SDL_calloc(nmemb::Csize_t, size::Csize_t)
    ccall((:SDL_calloc, libSDL), Ptr{Void}, (Csize_t, Csize_t), nmemb, size)
end

function SDL_realloc(mem, size::Csize_t)
    ccall((:SDL_realloc, libSDL), Ptr{Void}, (Ptr{Void}, Csize_t), mem, size)
end

function SDL_free(mem)
    ccall((:SDL_free, libSDL), Void, (Ptr{Void},), mem)
end

function SDL_getenv(name)
    ccall((:SDL_getenv, libSDL), Cstring, (Cstring,), name)
end

function SDL_setenv(name, value, overwrite::Cint)
    ccall((:SDL_setenv, libSDL), Cint, (Cstring, Cstring, Cint), name, value, overwrite)
end

function SDL_qsort(base, nmemb::Csize_t, size::Csize_t, compare)
    ccall((:SDL_qsort, libSDL), Void, (Ptr{Void}, Csize_t, Csize_t, Ptr{Void}), base, nmemb, size, compare)
end

function SDL_abs(x::Cint)
    ccall((:SDL_abs, libSDL), Cint, (Cint,), x)
end

function SDL_isdigit(x::Cint)
    ccall((:SDL_isdigit, libSDL), Cint, (Cint,), x)
end

function SDL_isspace(x::Cint)
    ccall((:SDL_isspace, libSDL), Cint, (Cint,), x)
end

function SDL_toupper(x::Cint)
    ccall((:SDL_toupper, libSDL), Cint, (Cint,), x)
end

function SDL_tolower(x::Cint)
    ccall((:SDL_tolower, libSDL), Cint, (Cint,), x)
end

function SDL_memset(dst, c::Cint, len::Csize_t)
    ccall((:SDL_memset, libSDL), Ptr{Void}, (Ptr{Void}, Cint, Csize_t), dst, c, len)
end

function SDL_memset4(dst, val::Uint32, dwords::Csize_t)
    ccall((:SDL_memset4, libSDL), Void, (Ptr{Void}, Uint32, Csize_t), dst, val, dwords)
end

function SDL_memcpy(dst, src, len::Csize_t)
    ccall((:SDL_memcpy, libSDL), Ptr{Void}, (Ptr{Void}, Ptr{Void}, Csize_t), dst, src, len)
end

function SDL_memmove(dst, src, len::Csize_t)
    ccall((:SDL_memmove, libSDL), Ptr{Void}, (Ptr{Void}, Ptr{Void}, Csize_t), dst, src, len)
end

function SDL_memcmp(s1, s2, len::Csize_t)
    ccall((:SDL_memcmp, libSDL), Cint, (Ptr{Void}, Ptr{Void}, Csize_t), s1, s2, len)
end

function SDL_wcslen(wstr)
    ccall((:SDL_wcslen, libSDL), Csize_t, (Ptr{wchar_t},), wstr)
end

function SDL_wcslcpy(dst, src, maxlen::Csize_t)
    ccall((:SDL_wcslcpy, libSDL), Csize_t, (Ptr{wchar_t}, Ptr{wchar_t}, Csize_t), dst, src, maxlen)
end

function SDL_wcslcat(dst, src, maxlen::Csize_t)
    ccall((:SDL_wcslcat, libSDL), Csize_t, (Ptr{wchar_t}, Ptr{wchar_t}, Csize_t), dst, src, maxlen)
end

function SDL_strlen(str)
    ccall((:SDL_strlen, libSDL), Csize_t, (Cstring,), str)
end

function SDL_strlcpy(dst, src, maxlen::Csize_t)
    ccall((:SDL_strlcpy, libSDL), Csize_t, (Cstring, Cstring, Csize_t), dst, src, maxlen)
end

function SDL_utf8strlcpy(dst, src, dst_bytes::Csize_t)
    ccall((:SDL_utf8strlcpy, libSDL), Csize_t, (Cstring, Cstring, Csize_t), dst, src, dst_bytes)
end

function SDL_strlcat(dst, src, maxlen::Csize_t)
    ccall((:SDL_strlcat, libSDL), Csize_t, (Cstring, Cstring, Csize_t), dst, src, maxlen)
end

function SDL_strdup(str)
    ccall((:SDL_strdup, libSDL), Cstring, (Cstring,), str)
end

function SDL_strrev(str)
    ccall((:SDL_strrev, libSDL), Cstring, (Cstring,), str)
end

function SDL_strupr(str)
    ccall((:SDL_strupr, libSDL), Cstring, (Cstring,), str)
end

function SDL_strlwr(str)
    ccall((:SDL_strlwr, libSDL), Cstring, (Cstring,), str)
end

function SDL_strchr(str, c::Cint)
    ccall((:SDL_strchr, libSDL), Cstring, (Cstring, Cint), str, c)
end

function SDL_strrchr(str, c::Cint)
    ccall((:SDL_strrchr, libSDL), Cstring, (Cstring, Cint), str, c)
end

function SDL_strstr(haystack, needle)
    ccall((:SDL_strstr, libSDL), Cstring, (Cstring, Cstring), haystack, needle)
end

function SDL_itoa(value::Cint, str, radix::Cint)
    ccall((:SDL_itoa, libSDL), Cstring, (Cint, Cstring, Cint), value, str, radix)
end

function SDL_uitoa(value::UInt32, str, radix::Cint)
    ccall((:SDL_uitoa, libSDL), Cstring, (UInt32, Cstring, Cint), value, str, radix)
end

function SDL_ltoa(value::Clong, str, radix::Cint)
    ccall((:SDL_ltoa, libSDL), Cstring, (Clong, Cstring, Cint), value, str, radix)
end

function SDL_ultoa(value::Culong, str, radix::Cint)
    ccall((:SDL_ultoa, libSDL), Cstring, (Culong, Cstring, Cint), value, str, radix)
end

function SDL_lltoa(value::Sint64, str, radix::Cint)
    ccall((:SDL_lltoa, libSDL), Cstring, (Sint64, Cstring, Cint), value, str, radix)
end

function SDL_ulltoa(value::Uint64, str, radix::Cint)
    ccall((:SDL_ulltoa, libSDL), Cstring, (Uint64, Cstring, Cint), value, str, radix)
end

function SDL_atoi(str)
    ccall((:SDL_atoi, libSDL), Cint, (Cstring,), str)
end

function SDL_atof(str)
    ccall((:SDL_atof, libSDL), Cdouble, (Cstring,), str)
end

function SDL_strtol(str, endp, base::Cint)
    ccall((:SDL_strtol, libSDL), Clong, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function SDL_strtoul(str, endp, base::Cint)
    ccall((:SDL_strtoul, libSDL), Culong, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function SDL_strtoll(str, endp, base::Cint)
    ccall((:SDL_strtoll, libSDL), Sint64, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function SDL_strtoull(str, endp, base::Cint)
    ccall((:SDL_strtoull, libSDL), Uint64, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function SDL_strtod(str, endp)
    ccall((:SDL_strtod, libSDL), Cdouble, (Cstring, Ptr{Cstring}), str, endp)
end

function SDL_strcmp(str1, str2)
    ccall((:SDL_strcmp, libSDL), Cint, (Cstring, Cstring), str1, str2)
end

function SDL_strncmp(str1, str2, maxlen::Csize_t)
    ccall((:SDL_strncmp, libSDL), Cint, (Cstring, Cstring, Csize_t), str1, str2, maxlen)
end

function SDL_strcasecmp(str1, str2)
    ccall((:SDL_strcasecmp, libSDL), Cint, (Cstring, Cstring), str1, str2)
end

function SDL_strncasecmp(str1, str2, len::Csize_t)
    ccall((:SDL_strncasecmp, libSDL), Cint, (Cstring, Cstring, Csize_t), str1, str2, len)
end

function SDL_vsscanf(text, fmt, ap::va_list)
    ccall((:SDL_vsscanf, libSDL), Cint, (Cstring, Cstring, va_list), text, fmt, ap)
end

function SDL_vsnprintf(text, maxlen::Csize_t, fmt, ap::va_list)
    ccall((:SDL_vsnprintf, libSDL), Cint, (Cstring, Csize_t, Cstring, va_list), text, maxlen, fmt, ap)
end

function SDL_acos(x::Cdouble)
    ccall((:SDL_acos, libSDL), Cdouble, (Cdouble,), x)
end

function SDL_asin(x::Cdouble)
    ccall((:SDL_asin, libSDL), Cdouble, (Cdouble,), x)
end

function SDL_atan(x::Cdouble)
    ccall((:SDL_atan, libSDL), Cdouble, (Cdouble,), x)
end

function SDL_atan2(x::Cdouble, y::Cdouble)
    ccall((:SDL_atan2, libSDL), Cdouble, (Cdouble, Cdouble), x, y)
end

function SDL_ceil(x::Cdouble)
    ccall((:SDL_ceil, libSDL), Cdouble, (Cdouble,), x)
end

function SDL_copysign(x::Cdouble, y::Cdouble)
    ccall((:SDL_copysign, libSDL), Cdouble, (Cdouble, Cdouble), x, y)
end

function SDL_cos(x::Cdouble)
    ccall((:SDL_cos, libSDL), Cdouble, (Cdouble,), x)
end

function SDL_cosf(x::Cfloat)
    ccall((:SDL_cosf, libSDL), Cfloat, (Cfloat,), x)
end

function SDL_fabs(x::Cdouble)
    ccall((:SDL_fabs, libSDL), Cdouble, (Cdouble,), x)
end

function SDL_floor(x::Cdouble)
    ccall((:SDL_floor, libSDL), Cdouble, (Cdouble,), x)
end

function SDL_log(x::Cdouble)
    ccall((:SDL_log, libSDL), Cdouble, (Cdouble,), x)
end

function SDL_pow(x::Cdouble, y::Cdouble)
    ccall((:SDL_pow, libSDL), Cdouble, (Cdouble, Cdouble), x, y)
end

function SDL_scalbn(x::Cdouble, n::Cint)
    ccall((:SDL_scalbn, libSDL), Cdouble, (Cdouble, Cint), x, n)
end

function SDL_sin(x::Cdouble)
    ccall((:SDL_sin, libSDL), Cdouble, (Cdouble,), x)
end

function SDL_sinf(x::Cfloat)
    ccall((:SDL_sinf, libSDL), Cfloat, (Cfloat,), x)
end

function SDL_sqrt(x::Cdouble)
    ccall((:SDL_sqrt, libSDL), Cdouble, (Cdouble,), x)
end

function SDL_sqrtf(x::Cfloat)
    ccall((:SDL_sqrtf, libSDL), Cfloat, (Cfloat,), x)
end

function SDL_tan(x::Cdouble)
    ccall((:SDL_tan, libSDL), Cdouble, (Cdouble,), x)
end

function SDL_tanf(x::Cfloat)
    ccall((:SDL_tanf, libSDL), Cfloat, (Cfloat,), x)
end

function SDL_iconv_open(tocode, fromcode)
    ccall((:SDL_iconv_open, libSDL), SDL_iconv_t, (Cstring, Cstring), tocode, fromcode)
end

function SDL_iconv_close(cd::SDL_iconv_t)
    ccall((:SDL_iconv_close, libSDL), Cint, (SDL_iconv_t,), cd)
end

function SDL_iconv(cd::SDL_iconv_t, inbuf, inbytesleft, outbuf, outbytesleft)
    ccall((:SDL_iconv, libSDL), Csize_t, (SDL_iconv_t, Ptr{Cstring}, Ptr{Csize_t}, Ptr{Cstring}, Ptr{Csize_t}), cd, inbuf, inbytesleft, outbuf, outbytesleft)
end

function SDL_iconv_string(tocode, fromcode, inbuf, inbytesleft::Csize_t)
    ccall((:SDL_iconv_string, libSDL), Cstring, (Cstring, Cstring, Cstring, Csize_t), tocode, fromcode, inbuf, inbytesleft)
end

function SDL_memcpy4(dst, src, dwords::Csize_t)
    ccall((:SDL_memcpy4, libSDL), Ptr{Void}, (Ptr{Void}, Ptr{Void}, Csize_t), dst, src, dwords)
end

function SDL_main(argc::Cint, argv)
    ccall((:SDL_main, libSDL), Cint, (Cint, Ptr{Cstring}), argc, argv)
end

function SDL_SetMainReady()
    ccall((:SDL_SetMainReady, libSDL), Void, ())
end

#function SDL_ReportAssertion(arg1, arg2, arg3, arg4::Cint)
#    ccall((:SDL_ReportAssertion, libSDL), SDL_AssertState, (Ptr{SDL_AssertData}, Cstring, Cstring, Cint), arg1, arg2, arg3, arg4)
#end

function SDL_SetAssertionHandler(handler::SDL_AssertionHandler, userdata)
    ccall((:SDL_SetAssertionHandler, libSDL), Void, (SDL_AssertionHandler, Ptr{Void}), handler, userdata)
end

function SDL_GetDefaultAssertionHandler()
    ccall((:SDL_GetDefaultAssertionHandler, libSDL), SDL_AssertionHandler, ())
end

function SDL_GetAssertionHandler(puserdata)
    ccall((:SDL_GetAssertionHandler, libSDL), SDL_AssertionHandler, (Ptr{Ptr{Void}},), puserdata)
end

function SDL_GetAssertionReport()
    ccall((:SDL_GetAssertionReport, libSDL), Ptr{SDL_AssertData}, ())
end

function SDL_ResetAssertionReport()
    ccall((:SDL_ResetAssertionReport, libSDL), Void, ())
end

function SDL_AtomicTryLock(lock)
    ccall((:SDL_AtomicTryLock, libSDL), SDL_bool, (Ptr{SDL_SpinLock},), lock)
end

function SDL_AtomicLock(lock)
    ccall((:SDL_AtomicLock, libSDL), Void, (Ptr{SDL_SpinLock},), lock)
end

function SDL_AtomicUnlock(lock)
    ccall((:SDL_AtomicUnlock, libSDL), Void, (Ptr{SDL_SpinLock},), lock)
end

function SDL_AtomicCAS(a, oldval::Cint, newval::Cint)
    ccall((:SDL_AtomicCAS, libSDL), SDL_bool, (Ptr{SDL_atomic_t}, Cint, Cint), a, oldval, newval)
end

function SDL_AtomicSet(a, v::Cint)
    ccall((:SDL_AtomicSet, libSDL), Cint, (Ptr{SDL_atomic_t}, Cint), a, v)
end

function SDL_AtomicGet(a)
    ccall((:SDL_AtomicGet, libSDL), Cint, (Ptr{SDL_atomic_t},), a)
end

function SDL_AtomicAdd(a, v::Cint)
    ccall((:SDL_AtomicAdd, libSDL), Cint, (Ptr{SDL_atomic_t}, Cint), a, v)
end

function SDL_AtomicCASPtr(a, oldval, newval)
    ccall((:SDL_AtomicCASPtr, libSDL), SDL_bool, (Ptr{Ptr{Void}}, Ptr{Void}, Ptr{Void}), a, oldval, newval)
end

function SDL_AtomicSetPtr(a, v)
    ccall((:SDL_AtomicSetPtr, libSDL), Ptr{Void}, (Ptr{Ptr{Void}}, Ptr{Void}), a, v)
end

function SDL_AtomicGetPtr(a)
    ccall((:SDL_AtomicGetPtr, libSDL), Ptr{Void}, (Ptr{Ptr{Void}},), a)
end

function SDL_GetError()
    ccall((:SDL_GetError, libSDL), Cstring, ())
end

function SDL_ClearError()
    ccall((:SDL_ClearError, libSDL), Void, ())
end

function SDL_Error(code::SDL_errorcode)
    ccall((:SDL_Error, libSDL), Cint, (SDL_errorcode,), code)
end

function SDL_Swap16(x::Uint16)
    ccall((:SDL_Swap16, libSDL), Uint16, (Uint16,), x)
end

function SDL_Swap32(x::Uint32)
    ccall((:SDL_Swap32, libSDL), Uint32, (Uint32,), x)
end

function SDL_Swap64(x::Uint64)
    ccall((:SDL_Swap64, libSDL), Uint64, (Uint64,), x)
end

function SDL_SwapFloat(x::Cfloat)
    ccall((:SDL_SwapFloat, libSDL), Cfloat, (Cfloat,), x)
end

function SDL_CreateMutex()
    ccall((:SDL_CreateMutex, libSDL), Ptr{SDL_mutex}, ())
end

function SDL_LockMutex(mutex)
    ccall((:SDL_LockMutex, libSDL), Cint, (Ptr{SDL_mutex},), mutex)
end

function SDL_TryLockMutex(mutex)
    ccall((:SDL_TryLockMutex, libSDL), Cint, (Ptr{SDL_mutex},), mutex)
end

function SDL_UnlockMutex(mutex)
    ccall((:SDL_UnlockMutex, libSDL), Cint, (Ptr{SDL_mutex},), mutex)
end

function SDL_DestroyMutex(mutex)
    ccall((:SDL_DestroyMutex, libSDL), Void, (Ptr{SDL_mutex},), mutex)
end

function SDL_CreateSemaphore(initial_value::Uint32)
    ccall((:SDL_CreateSemaphore, libSDL), Ptr{SDL_sem}, (Uint32,), initial_value)
end

function SDL_DestroySemaphore(sem)
    ccall((:SDL_DestroySemaphore, libSDL), Void, (Ptr{SDL_sem},), sem)
end

function SDL_SemWait(sem)
    ccall((:SDL_SemWait, libSDL), Cint, (Ptr{SDL_sem},), sem)
end

function SDL_SemTryWait(sem)
    ccall((:SDL_SemTryWait, libSDL), Cint, (Ptr{SDL_sem},), sem)
end

function SDL_SemWaitTimeout(sem, ms::Uint32)
    ccall((:SDL_SemWaitTimeout, libSDL), Cint, (Ptr{SDL_sem}, Uint32), sem, ms)
end

function SDL_SemPost(sem)
    ccall((:SDL_SemPost, libSDL), Cint, (Ptr{SDL_sem},), sem)
end

function SDL_SemValue(sem)
    ccall((:SDL_SemValue, libSDL), Uint32, (Ptr{SDL_sem},), sem)
end

function SDL_CreateCond()
    ccall((:SDL_CreateCond, libSDL), Ptr{SDL_cond}, ())
end

function SDL_DestroyCond(cond)
    ccall((:SDL_DestroyCond, libSDL), Void, (Ptr{SDL_cond},), cond)
end

function SDL_CondSignal(cond)
    ccall((:SDL_CondSignal, libSDL), Cint, (Ptr{SDL_cond},), cond)
end

function SDL_CondBroadcast(cond)
    ccall((:SDL_CondBroadcast, libSDL), Cint, (Ptr{SDL_cond},), cond)
end

function SDL_CondWait(cond, mutex)
    ccall((:SDL_CondWait, libSDL), Cint, (Ptr{SDL_cond}, Ptr{SDL_mutex}), cond, mutex)
end

function SDL_CondWaitTimeout(cond, mutex, ms::Uint32)
    ccall((:SDL_CondWaitTimeout, libSDL), Cint, (Ptr{SDL_cond}, Ptr{SDL_mutex}, Uint32), cond, mutex, ms)
end

function SDL_CreateThread(fn::SDL_ThreadFunction, name, data)
    ccall((:SDL_CreateThread, libSDL), Ptr{SDL_Thread}, (SDL_ThreadFunction, Cstring, Ptr{Void}), fn, name, data)
end

function SDL_GetThreadName(thread)
    ccall((:SDL_GetThreadName, libSDL), Cstring, (Ptr{SDL_Thread},), thread)
end

function SDL_ThreadID()
    ccall((:SDL_ThreadID, libSDL), SDL_threadID, ())
end

function SDL_GetThreadID(thread)
    ccall((:SDL_GetThreadID, libSDL), SDL_threadID, (Ptr{SDL_Thread},), thread)
end

function SDL_SetThreadPriority(priority::SDL_ThreadPriority)
    ccall((:SDL_SetThreadPriority, libSDL), Cint, (SDL_ThreadPriority,), priority)
end

function SDL_WaitThread(thread, status)
    ccall((:SDL_WaitThread, libSDL), Void, (Ptr{SDL_Thread}, Ptr{Cint}), thread, status)
end

function SDL_DetachThread(thread)
    ccall((:SDL_DetachThread, libSDL), Void, (Ptr{SDL_Thread},), thread)
end

function SDL_TLSCreate()
    ccall((:SDL_TLSCreate, libSDL), SDL_TLSID, ())
end

function SDL_TLSGet(id::SDL_TLSID)
    ccall((:SDL_TLSGet, libSDL), Ptr{Void}, (SDL_TLSID,), id)
end

function SDL_TLSSet(id::SDL_TLSID, value, destructor)
    ccall((:SDL_TLSSet, libSDL), Cint, (SDL_TLSID, Ptr{Void}, Ptr{Void}), id, value, destructor)
end

function SDL_RWFromFile(file, mode)
    ccall((:SDL_RWFromFile, libSDL), Ptr{SDL_RWops}, (Cstring, Cstring), file, mode)
end

function SDL_RWFromFP(fp, autoclose::SDL_bool)
    ccall((:SDL_RWFromFP, libSDL), Ptr{SDL_RWops}, (Ptr{Cint}, SDL_bool), fp, autoclose)
end

function SDL_RWFromMem(mem, size::Cint)
    ccall((:SDL_RWFromMem, libSDL), Ptr{SDL_RWops}, (Ptr{Void}, Cint), mem, size)
end

function SDL_RWFromConstMem(mem, size::Cint)
    ccall((:SDL_RWFromConstMem, libSDL), Ptr{SDL_RWops}, (Ptr{Void}, Cint), mem, size)
end

function SDL_AllocRW()
    ccall((:SDL_AllocRW, libSDL), Ptr{SDL_RWops}, ())
end

function SDL_FreeRW(area)
    ccall((:SDL_FreeRW, libSDL), Void, (Ptr{SDL_RWops},), area)
end

function SDL_ReadU8(src)
    ccall((:SDL_ReadU8, libSDL), Uint8, (Ptr{SDL_RWops},), src)
end

function SDL_ReadLE16(src)
    ccall((:SDL_ReadLE16, libSDL), Uint16, (Ptr{SDL_RWops},), src)
end

function SDL_ReadBE16(src)
    ccall((:SDL_ReadBE16, libSDL), Uint16, (Ptr{SDL_RWops},), src)
end

function SDL_ReadLE32(src)
    ccall((:SDL_ReadLE32, libSDL), Uint32, (Ptr{SDL_RWops},), src)
end

function SDL_ReadBE32(src)
    ccall((:SDL_ReadBE32, libSDL), Uint32, (Ptr{SDL_RWops},), src)
end

function SDL_ReadLE64(src)
    ccall((:SDL_ReadLE64, libSDL), Uint64, (Ptr{SDL_RWops},), src)
end

function SDL_ReadBE64(src)
    ccall((:SDL_ReadBE64, libSDL), Uint64, (Ptr{SDL_RWops},), src)
end

function SDL_WriteU8(dst, value::Uint8)
    ccall((:SDL_WriteU8, libSDL), Csize_t, (Ptr{SDL_RWops}, Uint8), dst, value)
end

function SDL_WriteLE16(dst, value::Uint16)
    ccall((:SDL_WriteLE16, libSDL), Csize_t, (Ptr{SDL_RWops}, Uint16), dst, value)
end

function SDL_WriteBE16(dst, value::Uint16)
    ccall((:SDL_WriteBE16, libSDL), Csize_t, (Ptr{SDL_RWops}, Uint16), dst, value)
end

function SDL_WriteLE32(dst, value::Uint32)
    ccall((:SDL_WriteLE32, libSDL), Csize_t, (Ptr{SDL_RWops}, Uint32), dst, value)
end

function SDL_WriteBE32(dst, value::Uint32)
    ccall((:SDL_WriteBE32, libSDL), Csize_t, (Ptr{SDL_RWops}, Uint32), dst, value)
end

function SDL_WriteLE64(dst, value::Uint64)
    ccall((:SDL_WriteLE64, libSDL), Csize_t, (Ptr{SDL_RWops}, Uint64), dst, value)
end

function SDL_WriteBE64(dst, value::Uint64)
    ccall((:SDL_WriteBE64, libSDL), Csize_t, (Ptr{SDL_RWops}, Uint64), dst, value)
end

function SDL_GetNumAudioDrivers()
    ccall((:SDL_GetNumAudioDrivers, libSDL), Cint, ())
end

function SDL_GetAudioDriver(index::Cint)
    ccall((:SDL_GetAudioDriver, libSDL), Cstring, (Cint,), index)
end

function SDL_AudioInit(driver_name)
    ccall((:SDL_AudioInit, libSDL), Cint, (Cstring,), driver_name)
end

function SDL_AudioQuit()
    ccall((:SDL_AudioQuit, libSDL), Void, ())
end

function SDL_GetCurrentAudioDriver()
    ccall((:SDL_GetCurrentAudioDriver, libSDL), Cstring, ())
end

function SDL_OpenAudio(desired, obtained)
    ccall((:SDL_OpenAudio, libSDL), Cint, (Ptr{SDL_AudioSpec}, Ptr{SDL_AudioSpec}), desired, obtained)
end

function SDL_GetNumAudioDevices(iscapture::Cint)
    ccall((:SDL_GetNumAudioDevices, libSDL), Cint, (Cint,), iscapture)
end

function SDL_GetAudioDeviceName(index::Cint, iscapture::Cint)
    ccall((:SDL_GetAudioDeviceName, libSDL), Cstring, (Cint, Cint), index, iscapture)
end

function SDL_OpenAudioDevice(device, iscapture::Cint, desired, obtained, allowed_changes::Cint)
    ccall((:SDL_OpenAudioDevice, libSDL), SDL_AudioDeviceID, (Cstring, Cint, Ptr{SDL_AudioSpec}, Ptr{SDL_AudioSpec}, Cint), device, iscapture, desired, obtained, allowed_changes)
end

function SDL_GetAudioStatus()
    ccall((:SDL_GetAudioStatus, libSDL), SDL_AudioStatus, ())
end

function SDL_GetAudioDeviceStatus(dev::SDL_AudioDeviceID)
    ccall((:SDL_GetAudioDeviceStatus, libSDL), SDL_AudioStatus, (SDL_AudioDeviceID,), dev)
end

function SDL_PauseAudio(pause_on::Cint)
    ccall((:SDL_PauseAudio, libSDL), Void, (Cint,), pause_on)
end

function SDL_PauseAudioDevice(dev::SDL_AudioDeviceID, pause_on::Cint)
    ccall((:SDL_PauseAudioDevice, libSDL), Void, (SDL_AudioDeviceID, Cint), dev, pause_on)
end

function SDL_LoadWAV_RW(src, freesrc::Cint, spec, audio_buf, audio_len)
    ccall((:SDL_LoadWAV_RW, libSDL), Ptr{SDL_AudioSpec}, (Ptr{SDL_RWops}, Cint, Ptr{SDL_AudioSpec}, Ptr{Ptr{Uint8}}, Ptr{Uint32}), src, freesrc, spec, audio_buf, audio_len)
end

function SDL_FreeWAV(audio_buf)
    ccall((:SDL_FreeWAV, libSDL), Void, (Ptr{Uint8},), audio_buf)
end

#function SDL_BuildAudioCVT(cvt, src_format::SDL_AudioFormat, src_channels::Uint8, src_rate::Cint, dst_format::SDL_AudioFormat, dst_channels::Uint8, dst_rate::Cint)
#    ccall((:SDL_BuildAudioCVT, libSDL), Cint, (Ptr{SDL_AudioCVT}, SDL_AudioFormat, Uint8, Cint, SDL_AudioFormat, Uint8, Cint), cvt, src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate)
#end

#function SDL_ConvertAudio(cvt)
#    ccall((:SDL_ConvertAudio, libSDL), Cint, (Ptr{SDL_AudioCVT},), cvt)
#end

function SDL_MixAudio(dst, src, len::Uint32, volume::Cint)
    ccall((:SDL_MixAudio, libSDL), Void, (Ptr{Uint8}, Ptr{Uint8}, Uint32, Cint), dst, src, len, volume)
end

function SDL_MixAudioFormat(dst, src, format::SDL_AudioFormat, len::Uint32, volume::Cint)
    ccall((:SDL_MixAudioFormat, libSDL), Void, (Ptr{Uint8}, Ptr{Uint8}, SDL_AudioFormat, Uint32, Cint), dst, src, format, len, volume)
end

function SDL_QueueAudio(dev::SDL_AudioDeviceID, data, len::Uint32)
    ccall((:SDL_QueueAudio, libSDL), Cint, (SDL_AudioDeviceID, Ptr{Void}, Uint32), dev, data, len)
end

function SDL_DequeueAudio(dev::SDL_AudioDeviceID, data, len::Uint32)
    ccall((:SDL_DequeueAudio, libSDL), Uint32, (SDL_AudioDeviceID, Ptr{Void}, Uint32), dev, data, len)
end

function SDL_GetQueuedAudioSize(dev::SDL_AudioDeviceID)
    ccall((:SDL_GetQueuedAudioSize, libSDL), Uint32, (SDL_AudioDeviceID,), dev)
end

function SDL_ClearQueuedAudio(dev::SDL_AudioDeviceID)
    ccall((:SDL_ClearQueuedAudio, libSDL), Void, (SDL_AudioDeviceID,), dev)
end

function SDL_LockAudio()
    ccall((:SDL_LockAudio, libSDL), Void, ())
end

function SDL_LockAudioDevice(dev::SDL_AudioDeviceID)
    ccall((:SDL_LockAudioDevice, libSDL), Void, (SDL_AudioDeviceID,), dev)
end

function SDL_UnlockAudio()
    ccall((:SDL_UnlockAudio, libSDL), Void, ())
end

function SDL_UnlockAudioDevice(dev::SDL_AudioDeviceID)
    ccall((:SDL_UnlockAudioDevice, libSDL), Void, (SDL_AudioDeviceID,), dev)
end

function SDL_CloseAudio()
    ccall((:SDL_CloseAudio, libSDL), Void, ())
end

function SDL_CloseAudioDevice(dev::SDL_AudioDeviceID)
    ccall((:SDL_CloseAudioDevice, libSDL), Void, (SDL_AudioDeviceID,), dev)
end

function SDL_SetClipboardText(text)
    ccall((:SDL_SetClipboardText, libSDL), Cint, (Cstring,), text)
end

function SDL_GetClipboardText()
    ccall((:SDL_GetClipboardText, libSDL), Cstring, ())
end

function SDL_HasClipboardText()
    ccall((:SDL_HasClipboardText, libSDL), SDL_bool, ())
end

function _mm_empty()
    ccall((:_mm_empty, libSDL), Void, ())
end

#=
function _mm_cvtsi32_si64(__i::Cint)
    ccall((:_mm_cvtsi32_si64, libSDL), __m64, (Cint,), __i)
end

function _mm_cvtsi64_si32(__m::__m64)
    ccall((:_mm_cvtsi64_si32, libSDL), Cint, (__m64,), __m)
end

function _mm_cvtsi64_m64(__i::Clonglong)
    ccall((:_mm_cvtsi64_m64, libSDL), __m64, (Clonglong,), __i)
end

function _mm_cvtm64_si64(__m::__m64)
    ccall((:_mm_cvtm64_si64, libSDL), Clonglong, (__m64,), __m)
end

function _mm_packs_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_packs_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_packs_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_packs_pi32, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_packs_pu16(__m1::__m64, __m2::__m64)
    ccall((:_mm_packs_pu16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpackhi_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpackhi_pi8, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpackhi_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpackhi_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpackhi_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpackhi_pi32, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpacklo_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpacklo_pi8, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpacklo_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpacklo_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpacklo_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpacklo_pi32, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_add_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_add_pi8, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_add_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_add_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_add_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_add_pi32, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pi8, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pu8(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pu8, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pu16(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pu16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sub_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_sub_pi8, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sub_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_sub_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sub_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_sub_pi32, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pi8, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pu8(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pu8, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pu16(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pu16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_madd_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_madd_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_mulhi_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_mulhi_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_mullo_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_mullo_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sll_pi16(__m::__m64, __count::__m64)
    ccall((:_mm_sll_pi16, libSDL), __m64, (__m64, __m64), __m, __count)
end

function _mm_slli_pi16(__m::__m64, __count::Cint)
    ccall((:_mm_slli_pi16, libSDL), __m64, (__m64, Cint), __m, __count)
end

function _mm_sll_pi32(__m::__m64, __count::__m64)
    ccall((:_mm_sll_pi32, libSDL), __m64, (__m64, __m64), __m, __count)
end

function _mm_slli_pi32(__m::__m64, __count::Cint)
    ccall((:_mm_slli_pi32, libSDL), __m64, (__m64, Cint), __m, __count)
end

function _mm_sll_si64(__m::__m64, __count::__m64)
    ccall((:_mm_sll_si64, libSDL), __m64, (__m64, __m64), __m, __count)
end

function _mm_slli_si64(__m::__m64, __count::Cint)
    ccall((:_mm_slli_si64, libSDL), __m64, (__m64, Cint), __m, __count)
end

function _mm_sra_pi16(__m::__m64, __count::__m64)
    ccall((:_mm_sra_pi16, libSDL), __m64, (__m64, __m64), __m, __count)
end

function _mm_srai_pi16(__m::__m64, __count::Cint)
    ccall((:_mm_srai_pi16, libSDL), __m64, (__m64, Cint), __m, __count)
end

function _mm_sra_pi32(__m::__m64, __count::__m64)
    ccall((:_mm_sra_pi32, libSDL), __m64, (__m64, __m64), __m, __count)
end

function _mm_srai_pi32(__m::__m64, __count::Cint)
    ccall((:_mm_srai_pi32, libSDL), __m64, (__m64, Cint), __m, __count)
end

function _mm_srl_pi16(__m::__m64, __count::__m64)
    ccall((:_mm_srl_pi16, libSDL), __m64, (__m64, __m64), __m, __count)
end

function _mm_srli_pi16(__m::__m64, __count::Cint)
    ccall((:_mm_srli_pi16, libSDL), __m64, (__m64, Cint), __m, __count)
end

function _mm_srl_pi32(__m::__m64, __count::__m64)
    ccall((:_mm_srl_pi32, libSDL), __m64, (__m64, __m64), __m, __count)
end

function _mm_srli_pi32(__m::__m64, __count::Cint)
    ccall((:_mm_srli_pi32, libSDL), __m64, (__m64, Cint), __m, __count)
end

function _mm_srl_si64(__m::__m64, __count::__m64)
    ccall((:_mm_srl_si64, libSDL), __m64, (__m64, __m64), __m, __count)
end

function _mm_srli_si64(__m::__m64, __count::Cint)
    ccall((:_mm_srli_si64, libSDL), __m64, (__m64, Cint), __m, __count)
end

function _mm_and_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_and_si64, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_andnot_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_andnot_si64, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_or_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_or_si64, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_xor_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_xor_si64, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpeq_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpeq_pi8, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpeq_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpeq_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpeq_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpeq_pi32, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpgt_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpgt_pi8, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpgt_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpgt_pi16, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpgt_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpgt_pi32, libSDL), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_setzero_si64()
    ccall((:_mm_setzero_si64, libSDL), __m64, ())
end

function _mm_set_pi32(__i1::Cint, __i0::Cint)
    ccall((:_mm_set_pi32, libSDL), __m64, (Cint, Cint), __i1, __i0)
end

function _mm_set_pi16(__s3::Int16, __s2::Int16, __s1::Int16, __s0::Int16)
    ccall((:_mm_set_pi16, libSDL), __m64, (Int16, Int16, Int16, Int16), __s3, __s2, __s1, __s0)
end

function _mm_set_pi8(__b7::UInt8, __b6::UInt8, __b5::UInt8, __b4::UInt8, __b3::UInt8, __b2::UInt8, __b1::UInt8, __b0::UInt8)
    ccall((:_mm_set_pi8, libSDL), __m64, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0)
end

function _mm_set1_pi32(__i::Cint)
    ccall((:_mm_set1_pi32, libSDL), __m64, (Cint,), __i)
end

function _mm_set1_pi16(__w::Int16)
    ccall((:_mm_set1_pi16, libSDL), __m64, (Int16,), __w)
end

function _mm_set1_pi8(__b::UInt8)
    ccall((:_mm_set1_pi8, libSDL), __m64, (UInt8,), __b)
end

function _mm_setr_pi32(__i0::Cint, __i1::Cint)
    ccall((:_mm_setr_pi32, libSDL), __m64, (Cint, Cint), __i0, __i1)
end

function _mm_setr_pi16(__w0::Int16, __w1::Int16, __w2::Int16, __w3::Int16)
    ccall((:_mm_setr_pi16, libSDL), __m64, (Int16, Int16, Int16, Int16), __w0, __w1, __w2, __w3)
end

function _mm_setr_pi8(__b0::UInt8, __b1::UInt8, __b2::UInt8, __b3::UInt8, __b4::UInt8, __b5::UInt8, __b6::UInt8, __b7::UInt8)
    ccall((:_mm_setr_pi8, libSDL), __m64, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b0, __b1, __b2, __b3, __b4, __b5, __b6, __b7)
end

function posix_memalign(__memptr, __alignment::Csize_t, __size::Csize_t)
    ccall((:posix_memalign, libSDL), Cint, (Ptr{Ptr{Void}}, Csize_t, Csize_t), __memptr, __alignment, __size)
end

function _mm_malloc(__size::Csize_t, __align::Csize_t)
    ccall((:_mm_malloc, libSDL), Ptr{Void}, (Csize_t, Csize_t), __size, __align)
end

function _mm_free(__p)
    ccall((:_mm_free, libSDL), Void, (Ptr{Void},), __p)
end

function _mm_add_ss(__a::__m128, __b::__m128)
    ccall((:_mm_add_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_add_ps(__a::__m128, __b::__m128)
    ccall((:_mm_add_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_sub_ss(__a::__m128, __b::__m128)
    ccall((:_mm_sub_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_sub_ps(__a::__m128, __b::__m128)
    ccall((:_mm_sub_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_mul_ss(__a::__m128, __b::__m128)
    ccall((:_mm_mul_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_mul_ps(__a::__m128, __b::__m128)
    ccall((:_mm_mul_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_div_ss(__a::__m128, __b::__m128)
    ccall((:_mm_div_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_div_ps(__a::__m128, __b::__m128)
    ccall((:_mm_div_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_sqrt_ss(__a::__m128)
    ccall((:_mm_sqrt_ss, libSDL), __m128, (__m128,), __a)
end

function _mm_sqrt_ps(__a::__m128)
    ccall((:_mm_sqrt_ps, libSDL), __m128, (__m128,), __a)
end

function _mm_rcp_ss(__a::__m128)
    ccall((:_mm_rcp_ss, libSDL), __m128, (__m128,), __a)
end

function _mm_rcp_ps(__a::__m128)
    ccall((:_mm_rcp_ps, libSDL), __m128, (__m128,), __a)
end

function _mm_rsqrt_ss(__a::__m128)
    ccall((:_mm_rsqrt_ss, libSDL), __m128, (__m128,), __a)
end

function _mm_rsqrt_ps(__a::__m128)
    ccall((:_mm_rsqrt_ps, libSDL), __m128, (__m128,), __a)
end

function _mm_min_ss(__a::__m128, __b::__m128)
    ccall((:_mm_min_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_min_ps(__a::__m128, __b::__m128)
    ccall((:_mm_min_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_max_ss(__a::__m128, __b::__m128)
    ccall((:_mm_max_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_max_ps(__a::__m128, __b::__m128)
    ccall((:_mm_max_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_and_ps(__a::__m128, __b::__m128)
    ccall((:_mm_and_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_andnot_ps(__a::__m128, __b::__m128)
    ccall((:_mm_andnot_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_or_ps(__a::__m128, __b::__m128)
    ccall((:_mm_or_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_xor_ps(__a::__m128, __b::__m128)
    ccall((:_mm_xor_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpeq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpeq_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpeq_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpeq_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmplt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmplt_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmplt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmplt_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmple_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmple_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmple_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmple_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpgt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpgt_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpgt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpgt_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpge_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpge_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpge_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpge_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpneq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpneq_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpneq_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpneq_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnlt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnlt_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnlt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnlt_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnle_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnle_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnle_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnle_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpngt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpngt_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpngt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpngt_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnge_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnge_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnge_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnge_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpord_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpord_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpord_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpord_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpunord_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpunord_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpunord_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpunord_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_comieq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comieq_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_comilt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comilt_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_comile_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comile_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_comigt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comigt_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_comige_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comige_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_comineq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comineq_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomieq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomieq_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomilt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomilt_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomile_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomile_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomigt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomigt_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomige_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomige_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomineq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomineq_ss, libSDL), Cint, (__m128, __m128), __a, __b)
end

function _mm_cvtss_si32(__a::__m128)
    ccall((:_mm_cvtss_si32, libSDL), Cint, (__m128,), __a)
end

function _mm_cvt_ss2si(__a::__m128)
    ccall((:_mm_cvt_ss2si, libSDL), Cint, (__m128,), __a)
end

function _mm_cvtss_si64(__a::__m128)
    ccall((:_mm_cvtss_si64, libSDL), Clonglong, (__m128,), __a)
end

function _mm_cvtps_pi32(__a::__m128)
    ccall((:_mm_cvtps_pi32, libSDL), __m64, (__m128,), __a)
end

function _mm_cvt_ps2pi(__a::__m128)
    ccall((:_mm_cvt_ps2pi, libSDL), __m64, (__m128,), __a)
end

function _mm_cvttss_si32(__a::__m128)
    ccall((:_mm_cvttss_si32, libSDL), Cint, (__m128,), __a)
end

function _mm_cvtt_ss2si(__a::__m128)
    ccall((:_mm_cvtt_ss2si, libSDL), Cint, (__m128,), __a)
end

function _mm_cvttss_si64(__a::__m128)
    ccall((:_mm_cvttss_si64, libSDL), Clonglong, (__m128,), __a)
end

function _mm_cvttps_pi32(__a::__m128)
    ccall((:_mm_cvttps_pi32, libSDL), __m64, (__m128,), __a)
end

function _mm_cvtt_ps2pi(__a::__m128)
    ccall((:_mm_cvtt_ps2pi, libSDL), __m64, (__m128,), __a)
end

function _mm_cvtsi32_ss(__a::__m128, __b::Cint)
    ccall((:_mm_cvtsi32_ss, libSDL), __m128, (__m128, Cint), __a, __b)
end

function _mm_cvt_si2ss(__a::__m128, __b::Cint)
    ccall((:_mm_cvt_si2ss, libSDL), __m128, (__m128, Cint), __a, __b)
end

function _mm_cvtsi64_ss(__a::__m128, __b::Clonglong)
    ccall((:_mm_cvtsi64_ss, libSDL), __m128, (__m128, Clonglong), __a, __b)
end

function _mm_cvtpi32_ps(__a::__m128, __b::__m64)
    ccall((:_mm_cvtpi32_ps, libSDL), __m128, (__m128, __m64), __a, __b)
end

function _mm_cvt_pi2ps(__a::__m128, __b::__m64)
    ccall((:_mm_cvt_pi2ps, libSDL), __m128, (__m128, __m64), __a, __b)
end

function _mm_cvtss_f32(__a::__m128)
    ccall((:_mm_cvtss_f32, libSDL), Cfloat, (__m128,), __a)
end

function _mm_loadh_pi(__a::__m128, __p)
    ccall((:_mm_loadh_pi, libSDL), __m128, (__m128, Ptr{__m64}), __a, __p)
end

function _mm_loadl_pi(__a::__m128, __p)
    ccall((:_mm_loadl_pi, libSDL), __m128, (__m128, Ptr{__m64}), __a, __p)
end

function _mm_load_ss(__p)
    ccall((:_mm_load_ss, libSDL), __m128, (Ptr{Cfloat},), __p)
end

function _mm_load1_ps(__p)
    ccall((:_mm_load1_ps, libSDL), __m128, (Ptr{Cfloat},), __p)
end

function _mm_load_ps(__p)
    ccall((:_mm_load_ps, libSDL), __m128, (Ptr{Cfloat},), __p)
end

function _mm_loadu_ps(__p)
    ccall((:_mm_loadu_ps, libSDL), __m128, (Ptr{Cfloat},), __p)
end

function _mm_loadr_ps(__p)
    ccall((:_mm_loadr_ps, libSDL), __m128, (Ptr{Cfloat},), __p)
end

function _mm_undefined_ps()
    ccall((:_mm_undefined_ps, libSDL), __m128, ())
end

function _mm_set_ss(__w::Cfloat)
    ccall((:_mm_set_ss, libSDL), __m128, (Cfloat,), __w)
end

function _mm_set1_ps(__w::Cfloat)
    ccall((:_mm_set1_ps, libSDL), __m128, (Cfloat,), __w)
end

function _mm_set_ps1(__w::Cfloat)
    ccall((:_mm_set_ps1, libSDL), __m128, (Cfloat,), __w)
end

function _mm_set_ps(__z::Cfloat, __y::Cfloat, __x::Cfloat, __w::Cfloat)
    ccall((:_mm_set_ps, libSDL), __m128, (Cfloat, Cfloat, Cfloat, Cfloat), __z, __y, __x, __w)
end

function _mm_setr_ps(__z::Cfloat, __y::Cfloat, __x::Cfloat, __w::Cfloat)
    ccall((:_mm_setr_ps, libSDL), __m128, (Cfloat, Cfloat, Cfloat, Cfloat), __z, __y, __x, __w)
end

function _mm_setzero_ps()
    ccall((:_mm_setzero_ps, libSDL), __m128, ())
end

function _mm_storeh_pi(__p, __a::__m128)
    ccall((:_mm_storeh_pi, libSDL), Void, (Ptr{__m64}, __m128), __p, __a)
end

function _mm_storel_pi(__p, __a::__m128)
    ccall((:_mm_storel_pi, libSDL), Void, (Ptr{__m64}, __m128), __p, __a)
end

function _mm_store_ss(__p, __a::__m128)
    ccall((:_mm_store_ss, libSDL), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_storeu_ps(__p, __a::__m128)
    ccall((:_mm_storeu_ps, libSDL), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_store_ps(__p, __a::__m128)
    ccall((:_mm_store_ps, libSDL), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_store1_ps(__p, __a::__m128)
    ccall((:_mm_store1_ps, libSDL), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_store_ps1(__p, __a::__m128)
    ccall((:_mm_store_ps1, libSDL), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_storer_ps(__p, __a::__m128)
    ccall((:_mm_storer_ps, libSDL), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_stream_pi(__p, __a::__m64)
    ccall((:_mm_stream_pi, libSDL), Void, (Ptr{__m64}, __m64), __p, __a)
end

function _mm_stream_ps(__p, __a::__m128)
    ccall((:_mm_stream_ps, libSDL), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_sfence()
    ccall((:_mm_sfence, libSDL), Void, ())
end

function _mm_max_pi16(__a::__m64, __b::__m64)
    ccall((:_mm_max_pi16, libSDL), __m64, (__m64, __m64), __a, __b)
end

function _mm_max_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_max_pu8, libSDL), __m64, (__m64, __m64), __a, __b)
end

function _mm_min_pi16(__a::__m64, __b::__m64)
    ccall((:_mm_min_pi16, libSDL), __m64, (__m64, __m64), __a, __b)
end

function _mm_min_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_min_pu8, libSDL), __m64, (__m64, __m64), __a, __b)
end

function _mm_movemask_pi8(__a::__m64)
    ccall((:_mm_movemask_pi8, libSDL), Cint, (__m64,), __a)
end

function _mm_mulhi_pu16(__a::__m64, __b::__m64)
    ccall((:_mm_mulhi_pu16, libSDL), __m64, (__m64, __m64), __a, __b)
end

function _mm_maskmove_si64(__d::__m64, __n::__m64, __p)
    ccall((:_mm_maskmove_si64, libSDL), Void, (__m64, __m64, Cstring), __d, __n, __p)
end

function _mm_avg_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_avg_pu8, libSDL), __m64, (__m64, __m64), __a, __b)
end

function _mm_avg_pu16(__a::__m64, __b::__m64)
    ccall((:_mm_avg_pu16, libSDL), __m64, (__m64, __m64), __a, __b)
end

function _mm_sad_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_sad_pu8, libSDL), __m64, (__m64, __m64), __a, __b)
end

function _mm_getcsr()
    ccall((:_mm_getcsr, libSDL), UInt32, ())
end

function _mm_setcsr(__i::UInt32)
    ccall((:_mm_setcsr, libSDL), Void, (UInt32,), __i)
end

function _mm_unpackhi_ps(__a::__m128, __b::__m128)
    ccall((:_mm_unpackhi_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_unpacklo_ps(__a::__m128, __b::__m128)
    ccall((:_mm_unpacklo_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_move_ss(__a::__m128, __b::__m128)
    ccall((:_mm_move_ss, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_movehl_ps(__a::__m128, __b::__m128)
    ccall((:_mm_movehl_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_movelh_ps(__a::__m128, __b::__m128)
    ccall((:_mm_movelh_ps, libSDL), __m128, (__m128, __m128), __a, __b)
end

function _mm_cvtpi16_ps(__a::__m64)
    ccall((:_mm_cvtpi16_ps, libSDL), __m128, (__m64,), __a)
end

function _mm_cvtpu16_ps(__a::__m64)
    ccall((:_mm_cvtpu16_ps, libSDL), __m128, (__m64,), __a)
end

function _mm_cvtpi8_ps(__a::__m64)
    ccall((:_mm_cvtpi8_ps, libSDL), __m128, (__m64,), __a)
end

function _mm_cvtpu8_ps(__a::__m64)
    ccall((:_mm_cvtpu8_ps, libSDL), __m128, (__m64,), __a)
end

function _mm_cvtpi32x2_ps(__a::__m64, __b::__m64)
    ccall((:_mm_cvtpi32x2_ps, libSDL), __m128, (__m64, __m64), __a, __b)
end

function _mm_cvtps_pi16(__a::__m128)
    ccall((:_mm_cvtps_pi16, libSDL), __m64, (__m128,), __a)
end

function _mm_cvtps_pi8(__a::__m128)
    ccall((:_mm_cvtps_pi8, libSDL), __m64, (__m128,), __a)
end

function _mm_movemask_ps(__a::__m128)
    ccall((:_mm_movemask_ps, libSDL), Cint, (__m128,), __a)
end

function _cvtsh_ss(__a::UInt16)
    ccall((:_cvtsh_ss, libSDL), Cfloat, (UInt16,), __a)
end

function _mm_cvtph_ps(__a::__m128i)
    ccall((:_mm_cvtph_ps, libSDL), __m128, (__m128i,), __a)
end

function _mm_add_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_add_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_add_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_add_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sub_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_sub_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sub_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_sub_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_mul_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_mul_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_mul_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_mul_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_div_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_div_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_div_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_div_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sqrt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_sqrt_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sqrt_pd(__a::__m128d)
    ccall((:_mm_sqrt_pd, libSDL), __m128d, (__m128d,), __a)
end

function _mm_min_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_min_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_min_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_min_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_max_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_max_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_max_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_max_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_and_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_and_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_andnot_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_andnot_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_or_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_or_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_xor_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_xor_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpeq_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpeq_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmplt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmplt_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmple_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmple_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpgt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpgt_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpge_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpge_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpord_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpord_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpunord_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpunord_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpneq_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpneq_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnlt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnlt_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnle_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnle_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpngt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpngt_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnge_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnge_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpeq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpeq_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmplt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmplt_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmple_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmple_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpgt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpgt_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpge_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpge_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpord_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpord_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpunord_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpunord_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpneq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpneq_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnlt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnlt_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnle_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnle_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpngt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpngt_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnge_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnge_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_comieq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comieq_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comilt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comilt_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comile_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comile_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comigt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comigt_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comige_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comige_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comineq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comineq_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomieq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomieq_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomilt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomilt_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomile_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomile_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomigt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomigt_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomige_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomige_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomineq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomineq_sd, libSDL), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_cvtpd_ps(__a::__m128d)
    ccall((:_mm_cvtpd_ps, libSDL), __m128, (__m128d,), __a)
end

function _mm_cvtps_pd(__a::__m128)
    ccall((:_mm_cvtps_pd, libSDL), __m128d, (__m128,), __a)
end

function _mm_cvtepi32_pd(__a::__m128i)
    ccall((:_mm_cvtepi32_pd, libSDL), __m128d, (__m128i,), __a)
end

function _mm_cvtpd_epi32(__a::__m128d)
    ccall((:_mm_cvtpd_epi32, libSDL), __m128i, (__m128d,), __a)
end

function _mm_cvtsd_si32(__a::__m128d)
    ccall((:_mm_cvtsd_si32, libSDL), Cint, (__m128d,), __a)
end

function _mm_cvtsd_ss(__a::__m128, __b::__m128d)
    ccall((:_mm_cvtsd_ss, libSDL), __m128, (__m128, __m128d), __a, __b)
end

function _mm_cvtsi32_sd(__a::__m128d, __b::Cint)
    ccall((:_mm_cvtsi32_sd, libSDL), __m128d, (__m128d, Cint), __a, __b)
end

function _mm_cvtss_sd(__a::__m128d, __b::__m128)
    ccall((:_mm_cvtss_sd, libSDL), __m128d, (__m128d, __m128), __a, __b)
end

function _mm_cvttpd_epi32(__a::__m128d)
    ccall((:_mm_cvttpd_epi32, libSDL), __m128i, (__m128d,), __a)
end

function _mm_cvttsd_si32(__a::__m128d)
    ccall((:_mm_cvttsd_si32, libSDL), Cint, (__m128d,), __a)
end

function _mm_cvtpd_pi32(__a::__m128d)
    ccall((:_mm_cvtpd_pi32, libSDL), __m64, (__m128d,), __a)
end

function _mm_cvttpd_pi32(__a::__m128d)
    ccall((:_mm_cvttpd_pi32, libSDL), __m64, (__m128d,), __a)
end

function _mm_cvtpi32_pd(__a::__m64)
    ccall((:_mm_cvtpi32_pd, libSDL), __m128d, (__m64,), __a)
end

function _mm_cvtsd_f64(__a::__m128d)
    ccall((:_mm_cvtsd_f64, libSDL), Cdouble, (__m128d,), __a)
end

function _mm_load_pd(__dp)
    ccall((:_mm_load_pd, libSDL), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_load1_pd(__dp)
    ccall((:_mm_load1_pd, libSDL), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadr_pd(__dp)
    ccall((:_mm_loadr_pd, libSDL), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadu_pd(__dp)
    ccall((:_mm_loadu_pd, libSDL), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadu_si64(__a)
    ccall((:_mm_loadu_si64, libSDL), __m128i, (Ptr{Void},), __a)
end

function _mm_load_sd(__dp)
    ccall((:_mm_load_sd, libSDL), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadh_pd(__a::__m128d, __dp)
    ccall((:_mm_loadh_pd, libSDL), __m128d, (__m128d, Ptr{Cdouble}), __a, __dp)
end

function _mm_loadl_pd(__a::__m128d, __dp)
    ccall((:_mm_loadl_pd, libSDL), __m128d, (__m128d, Ptr{Cdouble}), __a, __dp)
end

function _mm_undefined_pd()
    ccall((:_mm_undefined_pd, libSDL), __m128d, ())
end

function _mm_set_sd(__w::Cdouble)
    ccall((:_mm_set_sd, libSDL), __m128d, (Cdouble,), __w)
end

function _mm_set1_pd(__w::Cdouble)
    ccall((:_mm_set1_pd, libSDL), __m128d, (Cdouble,), __w)
end

function _mm_set_pd1(__w::Cdouble)
    ccall((:_mm_set_pd1, libSDL), __m128d, (Cdouble,), __w)
end

function _mm_set_pd(__w::Cdouble, __x::Cdouble)
    ccall((:_mm_set_pd, libSDL), __m128d, (Cdouble, Cdouble), __w, __x)
end

function _mm_setr_pd(__w::Cdouble, __x::Cdouble)
    ccall((:_mm_setr_pd, libSDL), __m128d, (Cdouble, Cdouble), __w, __x)
end

function _mm_setzero_pd()
    ccall((:_mm_setzero_pd, libSDL), __m128d, ())
end

function _mm_move_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_move_sd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_store_sd(__dp, __a::__m128d)
    ccall((:_mm_store_sd, libSDL), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_store_pd(__dp, __a::__m128d)
    ccall((:_mm_store_pd, libSDL), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_store1_pd(__dp, __a::__m128d)
    ccall((:_mm_store1_pd, libSDL), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_store_pd1(__dp, __a::__m128d)
    ccall((:_mm_store_pd1, libSDL), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storeu_pd(__dp, __a::__m128d)
    ccall((:_mm_storeu_pd, libSDL), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storer_pd(__dp, __a::__m128d)
    ccall((:_mm_storer_pd, libSDL), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storeh_pd(__dp, __a::__m128d)
    ccall((:_mm_storeh_pd, libSDL), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storel_pd(__dp, __a::__m128d)
    ccall((:_mm_storel_pd, libSDL), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_add_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_add_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_add_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi32, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_add_si64(__a::__m64, __b::__m64)
    ccall((:_mm_add_si64, libSDL), __m64, (__m64, __m64), __a, __b)
end

function _mm_add_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi64, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epi8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epu8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epu16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_avg_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_avg_epu8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_avg_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_avg_epu16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_madd_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_madd_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_max_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_max_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_max_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_max_epu8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_min_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_min_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_min_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_min_epu8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mulhi_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_mulhi_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mulhi_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_mulhi_epu16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mullo_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_mullo_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mul_su32(__a::__m64, __b::__m64)
    ccall((:_mm_mul_su32, libSDL), __m64, (__m64, __m64), __a, __b)
end

function _mm_mul_epu32(__a::__m128i, __b::__m128i)
    ccall((:_mm_mul_epu32, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sad_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_sad_epu8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi32, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_si64(__a::__m64, __b::__m64)
    ccall((:_mm_sub_si64, libSDL), __m64, (__m64, __m64), __a, __b)
end

function _mm_sub_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi64, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epi8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epu8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epu16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_and_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_and_si128, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_andnot_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_andnot_si128, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_or_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_or_si128, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_xor_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_xor_si128, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_slli_epi16(__a::__m128i, __count::Cint)
    ccall((:_mm_slli_epi16, libSDL), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sll_epi16(__a::__m128i, __count::__m128i)
    ccall((:_mm_sll_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_slli_epi32(__a::__m128i, __count::Cint)
    ccall((:_mm_slli_epi32, libSDL), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sll_epi32(__a::__m128i, __count::__m128i)
    ccall((:_mm_sll_epi32, libSDL), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_slli_epi64(__a::__m128i, __count::Cint)
    ccall((:_mm_slli_epi64, libSDL), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sll_epi64(__a::__m128i, __count::__m128i)
    ccall((:_mm_sll_epi64, libSDL), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srai_epi16(__a::__m128i, __count::Cint)
    ccall((:_mm_srai_epi16, libSDL), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sra_epi16(__a::__m128i, __count::__m128i)
    ccall((:_mm_sra_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srai_epi32(__a::__m128i, __count::Cint)
    ccall((:_mm_srai_epi32, libSDL), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sra_epi32(__a::__m128i, __count::__m128i)
    ccall((:_mm_sra_epi32, libSDL), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srli_epi16(__a::__m128i, __count::Cint)
    ccall((:_mm_srli_epi16, libSDL), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_srl_epi16(__a::__m128i, __count::__m128i)
    ccall((:_mm_srl_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srli_epi32(__a::__m128i, __count::Cint)
    ccall((:_mm_srli_epi32, libSDL), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_srl_epi32(__a::__m128i, __count::__m128i)
    ccall((:_mm_srl_epi32, libSDL), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srli_epi64(__a::__m128i, __count::Cint)
    ccall((:_mm_srli_epi64, libSDL), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_srl_epi64(__a::__m128i, __count::__m128i)
    ccall((:_mm_srl_epi64, libSDL), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_cmpeq_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpeq_epi8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpeq_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpeq_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpeq_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpeq_epi32, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpgt_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpgt_epi8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpgt_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpgt_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpgt_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpgt_epi32, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmplt_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmplt_epi8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmplt_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmplt_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmplt_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmplt_epi32, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cvtsi64_sd(__a::__m128d, __b::Clonglong)
    ccall((:_mm_cvtsi64_sd, libSDL), __m128d, (__m128d, Clonglong), __a, __b)
end

function _mm_cvtsd_si64(__a::__m128d)
    ccall((:_mm_cvtsd_si64, libSDL), Clonglong, (__m128d,), __a)
end

function _mm_cvttsd_si64(__a::__m128d)
    ccall((:_mm_cvttsd_si64, libSDL), Clonglong, (__m128d,), __a)
end

function _mm_cvtepi32_ps(__a::__m128i)
    ccall((:_mm_cvtepi32_ps, libSDL), __m128, (__m128i,), __a)
end

function _mm_cvtps_epi32(__a::__m128)
    ccall((:_mm_cvtps_epi32, libSDL), __m128i, (__m128,), __a)
end

function _mm_cvttps_epi32(__a::__m128)
    ccall((:_mm_cvttps_epi32, libSDL), __m128i, (__m128,), __a)
end

function _mm_cvtsi32_si128(__a::Cint)
    ccall((:_mm_cvtsi32_si128, libSDL), __m128i, (Cint,), __a)
end

function _mm_cvtsi64_si128(__a::Clonglong)
    ccall((:_mm_cvtsi64_si128, libSDL), __m128i, (Clonglong,), __a)
end

function _mm_cvtsi128_si32(__a::__m128i)
    ccall((:_mm_cvtsi128_si32, libSDL), Cint, (__m128i,), __a)
end

function _mm_cvtsi128_si64(__a::__m128i)
    ccall((:_mm_cvtsi128_si64, libSDL), Clonglong, (__m128i,), __a)
end

function _mm_load_si128(__p)
    ccall((:_mm_load_si128, libSDL), __m128i, (Ptr{__m128i},), __p)
end

function _mm_loadu_si128(__p)
    ccall((:_mm_loadu_si128, libSDL), __m128i, (Ptr{__m128i},), __p)
end

function _mm_loadl_epi64(__p)
    ccall((:_mm_loadl_epi64, libSDL), __m128i, (Ptr{__m128i},), __p)
end

function _mm_undefined_si128()
    ccall((:_mm_undefined_si128, libSDL), __m128i, ())
end

function _mm_set_epi64x(__q1::Clonglong, __q0::Clonglong)
    ccall((:_mm_set_epi64x, libSDL), __m128i, (Clonglong, Clonglong), __q1, __q0)
end

function _mm_set_epi64(__q1::__m64, __q0::__m64)
    ccall((:_mm_set_epi64, libSDL), __m128i, (__m64, __m64), __q1, __q0)
end

function _mm_set_epi32(__i3::Cint, __i2::Cint, __i1::Cint, __i0::Cint)
    ccall((:_mm_set_epi32, libSDL), __m128i, (Cint, Cint, Cint, Cint), __i3, __i2, __i1, __i0)
end

function _mm_set_epi16(__w7::Int16, __w6::Int16, __w5::Int16, __w4::Int16, __w3::Int16, __w2::Int16, __w1::Int16, __w0::Int16)
    ccall((:_mm_set_epi16, libSDL), __m128i, (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), __w7, __w6, __w5, __w4, __w3, __w2, __w1, __w0)
end

function _mm_set_epi8(__b15::UInt8, __b14::UInt8, __b13::UInt8, __b12::UInt8, __b11::UInt8, __b10::UInt8, __b9::UInt8, __b8::UInt8, __b7::UInt8, __b6::UInt8, __b5::UInt8, __b4::UInt8, __b3::UInt8, __b2::UInt8, __b1::UInt8, __b0::UInt8)
    ccall((:_mm_set_epi8, libSDL), __m128i, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b15, __b14, __b13, __b12, __b11, __b10, __b9, __b8, __b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0)
end

function _mm_set1_epi64x(__q::Clonglong)
    ccall((:_mm_set1_epi64x, libSDL), __m128i, (Clonglong,), __q)
end

function _mm_set1_epi64(__q::__m64)
    ccall((:_mm_set1_epi64, libSDL), __m128i, (__m64,), __q)
end

function _mm_set1_epi32(__i::Cint)
    ccall((:_mm_set1_epi32, libSDL), __m128i, (Cint,), __i)
end

function _mm_set1_epi16(__w::Int16)
    ccall((:_mm_set1_epi16, libSDL), __m128i, (Int16,), __w)
end

function _mm_set1_epi8(__b::UInt8)
    ccall((:_mm_set1_epi8, libSDL), __m128i, (UInt8,), __b)
end

function _mm_setr_epi64(__q0::__m64, __q1::__m64)
    ccall((:_mm_setr_epi64, libSDL), __m128i, (__m64, __m64), __q0, __q1)
end

function _mm_setr_epi32(__i0::Cint, __i1::Cint, __i2::Cint, __i3::Cint)
    ccall((:_mm_setr_epi32, libSDL), __m128i, (Cint, Cint, Cint, Cint), __i0, __i1, __i2, __i3)
end

function _mm_setr_epi16(__w0::Int16, __w1::Int16, __w2::Int16, __w3::Int16, __w4::Int16, __w5::Int16, __w6::Int16, __w7::Int16)
    ccall((:_mm_setr_epi16, libSDL), __m128i, (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), __w0, __w1, __w2, __w3, __w4, __w5, __w6, __w7)
end

function _mm_setr_epi8(__b0::UInt8, __b1::UInt8, __b2::UInt8, __b3::UInt8, __b4::UInt8, __b5::UInt8, __b6::UInt8, __b7::UInt8, __b8::UInt8, __b9::UInt8, __b10::UInt8, __b11::UInt8, __b12::UInt8, __b13::UInt8, __b14::UInt8, __b15::UInt8)
    ccall((:_mm_setr_epi8, libSDL), __m128i, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b0, __b1, __b2, __b3, __b4, __b5, __b6, __b7, __b8, __b9, __b10, __b11, __b12, __b13, __b14, __b15)
end

function _mm_setzero_si128()
    ccall((:_mm_setzero_si128, libSDL), __m128i, ())
end

function _mm_store_si128(__p, __b::__m128i)
    ccall((:_mm_store_si128, libSDL), Void, (Ptr{__m128i}, __m128i), __p, __b)
end

function _mm_storeu_si128(__p, __b::__m128i)
    ccall((:_mm_storeu_si128, libSDL), Void, (Ptr{__m128i}, __m128i), __p, __b)
end

function _mm_maskmoveu_si128(__d::__m128i, __n::__m128i, __p)
    ccall((:_mm_maskmoveu_si128, libSDL), Void, (__m128i, __m128i, Cstring), __d, __n, __p)
end

function _mm_storel_epi64(__p, __a::__m128i)
    ccall((:_mm_storel_epi64, libSDL), Void, (Ptr{__m128i}, __m128i), __p, __a)
end

function _mm_stream_pd(__p, __a::__m128d)
    ccall((:_mm_stream_pd, libSDL), Void, (Ptr{Cdouble}, __m128d), __p, __a)
end

function _mm_stream_si128(__p, __a::__m128i)
    ccall((:_mm_stream_si128, libSDL), Void, (Ptr{__m128i}, __m128i), __p, __a)
end

function _mm_stream_si32(__p, __a::Cint)
    ccall((:_mm_stream_si32, libSDL), Void, (Ptr{Cint}, Cint), __p, __a)
end

function _mm_stream_si64(__p, __a::Clonglong)
    ccall((:_mm_stream_si64, libSDL), Void, (Ptr{Clonglong}, Clonglong), __p, __a)
end

function _mm_clflush(__p)
    ccall((:_mm_clflush, libSDL), Void, (Ptr{Void},), __p)
end

function _mm_lfence()
    ccall((:_mm_lfence, libSDL), Void, ())
end

function _mm_mfence()
    ccall((:_mm_mfence, libSDL), Void, ())
end

function _mm_packs_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_packs_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_packs_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_packs_epi32, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_packus_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_packus_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_extract_epi16(__a::__m128i, __imm::Cint)
    ccall((:_mm_extract_epi16, libSDL), Cint, (__m128i, Cint), __a, __imm)
end

function _mm_insert_epi16(__a::__m128i, __b::Cint, __imm::Cint)
    ccall((:_mm_insert_epi16, libSDL), __m128i, (__m128i, Cint, Cint), __a, __b, __imm)
end

function _mm_movemask_epi8(__a::__m128i)
    ccall((:_mm_movemask_epi8, libSDL), Cint, (__m128i,), __a)
end

function _mm_unpackhi_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpackhi_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpackhi_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi32, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpackhi_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi64, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi8, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi16, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi32, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi64, libSDL), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_movepi64_pi64(__a::__m128i)
    ccall((:_mm_movepi64_pi64, libSDL), __m64, (__m128i,), __a)
end

function _mm_movpi64_epi64(__a::__m64)
    ccall((:_mm_movpi64_epi64, libSDL), __m128i, (__m64,), __a)
end

function _mm_move_epi64(__a::__m128i)
    ccall((:_mm_move_epi64, libSDL), __m128i, (__m128i,), __a)
end

function _mm_unpackhi_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_unpackhi_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_unpacklo_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_unpacklo_pd, libSDL), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_movemask_pd(__a::__m128d)
    ccall((:_mm_movemask_pd, libSDL), Cint, (__m128d,), __a)
end

function _mm_castpd_ps(__a::__m128d)
    ccall((:_mm_castpd_ps, libSDL), __m128, (__m128d,), __a)
end

function _mm_castpd_si128(__a::__m128d)
    ccall((:_mm_castpd_si128, libSDL), __m128i, (__m128d,), __a)
end

function _mm_castps_pd(__a::__m128)
    ccall((:_mm_castps_pd, libSDL), __m128d, (__m128,), __a)
end

function _mm_castps_si128(__a::__m128)
    ccall((:_mm_castps_si128, libSDL), __m128i, (__m128,), __a)
end

function _mm_castsi128_ps(__a::__m128i)
    ccall((:_mm_castsi128_ps, libSDL), __m128, (__m128i,), __a)
end

function _mm_castsi128_pd(__a::__m128i)
    ccall((:_mm_castsi128_pd, libSDL), __m128d, (__m128i,), __a)
end

=#

function _mm_pause()
    ccall((:_mm_pause, libSDL), Void, ())
end

function SDL_GetCPUCount()
    ccall((:SDL_GetCPUCount, libSDL), Cint, ())
end

function SDL_GetCPUCacheLineSize()
    ccall((:SDL_GetCPUCacheLineSize, libSDL), Cint, ())
end

function SDL_HasRDTSC()
    ccall((:SDL_HasRDTSC, libSDL), SDL_bool, ())
end

function SDL_HasAltiVec()
    ccall((:SDL_HasAltiVec, libSDL), SDL_bool, ())
end

function SDL_HasMMX()
    ccall((:SDL_HasMMX, libSDL), SDL_bool, ())
end

function SDL_Has3DNow()
    ccall((:SDL_Has3DNow, libSDL), SDL_bool, ())
end

function SDL_HasSSE()
    ccall((:SDL_HasSSE, libSDL), SDL_bool, ())
end

function SDL_HasSSE2()
    ccall((:SDL_HasSSE2, libSDL), SDL_bool, ())
end

function SDL_HasSSE3()
    ccall((:SDL_HasSSE3, libSDL), SDL_bool, ())
end

function SDL_HasSSE41()
    ccall((:SDL_HasSSE41, libSDL), SDL_bool, ())
end

function SDL_HasSSE42()
    ccall((:SDL_HasSSE42, libSDL), SDL_bool, ())
end

function SDL_HasAVX()
    ccall((:SDL_HasAVX, libSDL), SDL_bool, ())
end

function SDL_HasAVX2()
    ccall((:SDL_HasAVX2, libSDL), SDL_bool, ())
end

function SDL_GetSystemRAM()
    ccall((:SDL_GetSystemRAM, libSDL), Cint, ())
end

function SDL_GetPixelFormatName(format::Uint32)
    ccall((:SDL_GetPixelFormatName, libSDL), Cstring, (Uint32,), format)
end

function SDL_PixelFormatEnumToMasks(format::Uint32, bpp, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_PixelFormatEnumToMasks, libSDL), SDL_bool, (Uint32, Ptr{Cint}, Ptr{Uint32}, Ptr{Uint32}, Ptr{Uint32}, Ptr{Uint32}), format, bpp, Rmask, Gmask, Bmask, Amask)
end

function SDL_MasksToPixelFormatEnum(bpp::Cint, Rmask::Uint32, Gmask::Uint32, Bmask::Uint32, Amask::Uint32)
    ccall((:SDL_MasksToPixelFormatEnum, libSDL), Uint32, (Cint, Uint32, Uint32, Uint32, Uint32), bpp, Rmask, Gmask, Bmask, Amask)
end

function SDL_AllocFormat(pixel_format::Uint32)
    ccall((:SDL_AllocFormat, libSDL), Ptr{SDL_PixelFormat}, (Uint32,), pixel_format)
end

function SDL_FreeFormat(format)
    ccall((:SDL_FreeFormat, libSDL), Void, (Ptr{SDL_PixelFormat},), format)
end

function SDL_AllocPalette(ncolors::Cint)
    ccall((:SDL_AllocPalette, libSDL), Ptr{SDL_Palette}, (Cint,), ncolors)
end

function SDL_SetPixelFormatPalette(format, palette)
    ccall((:SDL_SetPixelFormatPalette, libSDL), Cint, (Ptr{SDL_PixelFormat}, Ptr{SDL_Palette}), format, palette)
end

function SDL_SetPaletteColors(palette, colors, firstcolor::Cint, ncolors::Cint)
    ccall((:SDL_SetPaletteColors, libSDL), Cint, (Ptr{SDL_Palette}, Ptr{SDL_Color}, Cint, Cint), palette, colors, firstcolor, ncolors)
end

function SDL_FreePalette(palette)
    ccall((:SDL_FreePalette, libSDL), Void, (Ptr{SDL_Palette},), palette)
end

function SDL_MapRGB(format, r, g, b)
    ccall((:SDL_MapRGB, libSDL), Uint32, (Ptr{SDL_PixelFormat}, Uint8, Uint8, Uint8), format, r, g, b)
end

function SDL_MapRGBA(format, r, g, b, a)
    ccall((:SDL_MapRGBA, libSDL), Uint32, (Ptr{SDL_PixelFormat}, Uint8, Uint8, Uint8, Uint8), format, r, g, b, a)
end

function SDL_GetRGB(pixel::Uint32, format, r, g, b)
    ccall((:SDL_GetRGB, libSDL), Void, (Uint32, Ptr{SDL_PixelFormat}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), pixel, format, r, g, b)
end

function SDL_GetRGBA(pixel::Uint32, format, r, g, b, a)
    ccall((:SDL_GetRGBA, libSDL), Void, (Uint32, Ptr{SDL_PixelFormat}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), pixel, format, r, g, b, a)
end

function SDL_CalculateGammaRamp(gamma::Cfloat, ramp)
    ccall((:SDL_CalculateGammaRamp, libSDL), Void, (Cfloat, Ptr{Uint16}), gamma, ramp)
end

function SDL_PointInRect(p, r)
    ccall((:SDL_PointInRect, libSDL), SDL_bool, (Ptr{SDL_Point}, Ptr{SDL_Rect}), p, r)
end

function SDL_RectEmpty(r)
    ccall((:SDL_RectEmpty, libSDL), SDL_bool, (Ptr{SDL_Rect},), r)
end

function SDL_RectEquals(a, b)
    ccall((:SDL_RectEquals, libSDL), SDL_bool, (Ptr{SDL_Rect}, Ptr{SDL_Rect}), a, b)
end

function SDL_HasIntersection(A, B)
    ccall((:SDL_HasIntersection, libSDL), SDL_bool, (Ptr{SDL_Rect}, Ptr{SDL_Rect}), A, B)
end

function SDL_IntersectRect(A, B, result)
    ccall((:SDL_IntersectRect, libSDL), SDL_bool, (Ptr{SDL_Rect}, Ptr{SDL_Rect}, Ptr{SDL_Rect}), A, B, result)
end

function SDL_UnionRect(A, B, result)
    ccall((:SDL_UnionRect, libSDL), Void, (Ptr{SDL_Rect}, Ptr{SDL_Rect}, Ptr{SDL_Rect}), A, B, result)
end

function SDL_EnclosePoints(points, count::Cint, clip, result)
    ccall((:SDL_EnclosePoints, libSDL), SDL_bool, (Ptr{SDL_Point}, Cint, Ptr{SDL_Rect}, Ptr{SDL_Rect}), points, count, clip, result)
end

function SDL_IntersectRectAndLine(rect, X1, Y1, X2, Y2)
    ccall((:SDL_IntersectRectAndLine, libSDL), SDL_bool, (Ptr{SDL_Rect}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), rect, X1, Y1, X2, Y2)
end

function SDL_CreateRGBSurface(flags::Uint32, width::Cint, height::Cint, depth::Cint, Rmask::Uint32, Gmask::Uint32, Bmask::Uint32, Amask::Uint32)
    ccall((:SDL_CreateRGBSurface, libSDL), Ptr{SDL_Surface}, (Uint32, Cint, Cint, Cint, Uint32, Uint32, Uint32, Uint32), flags, width, height, depth, Rmask, Gmask, Bmask, Amask)
end

function SDL_CreateRGBSurfaceWithFormat(flags, width, height, depth, format)
    ccall((:SDL_CreateRGBSurfaceWithFormat, libSDL), Ptr{SDL_Surface}, (Uint32, Cint, Cint, Cint, Uint32), flags, width, height, depth, format)
end

function SDL_CreateRGBSurfaceFrom(pixels, width::Cint, height::Cint, depth::Cint, pitch::Cint, Rmask::Uint32, Gmask::Uint32, Bmask::Uint32, Amask::Uint32)
    ccall((:SDL_CreateRGBSurfaceFrom, libSDL), Ptr{SDL_Surface}, (Ptr{Void}, Cint, Cint, Cint, Cint, Uint32, Uint32, Uint32, Uint32), pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask)
end

function SDL_CreateRGBSurfaceWithFormatFrom(pixels, width::Cint, height::Cint, depth::Cint, pitch::Cint, format::Uint32)
    ccall((:SDL_CreateRGBSurfaceWithFormatFrom, libSDL), Ptr{SDL_Surface}, (Ptr{Void}, Cint, Cint, Cint, Cint, Uint32), pixels, width, height, depth, pitch, format)
end

function SDL_FreeSurface(surface)
    ccall((:SDL_FreeSurface, libSDL), Void, (Ptr{SDL_Surface},), surface)
end

function SDL_SetSurfacePalette(surface, palette)
    ccall((:SDL_SetSurfacePalette, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Palette}), surface, palette)
end

function SDL_LockSurface(surface)
    ccall((:SDL_LockSurface, libSDL), Cint, (Ptr{SDL_Surface},), surface)
end

function SDL_UnlockSurface(surface)
    ccall((:SDL_UnlockSurface, libSDL), Void, (Ptr{SDL_Surface},), surface)
end

function SDL_LoadBMP_RW(src, freesrc::Cint)
    ccall((:SDL_LoadBMP_RW, libSDL), Ptr{SDL_Surface}, (Ptr{SDL_RWops}, Cint), src, freesrc)
end

SDL_LoadBMP(src::String) = SDL_LoadBMP_RW(src,1)

function SDL_SaveBMP_RW(surface, dst, freedst::Cint)
    ccall((:SDL_SaveBMP_RW, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{SDL_RWops}, Cint), surface, dst, freedst)
end

function SDL_SetSurfaceRLE(surface, flag::Cint)
    ccall((:SDL_SetSurfaceRLE, libSDL), Cint, (Ptr{SDL_Surface}, Cint), surface, flag)
end

function SDL_SetColorKey(surface, flag::Cint, key::Uint32)
    ccall((:SDL_SetColorKey, libSDL), Cint, (Ptr{SDL_Surface}, Cint, Uint32), surface, flag, key)
end

function SDL_GetColorKey(surface, key)
    ccall((:SDL_GetColorKey, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{Uint32}), surface, key)
end

function SDL_SetSurfaceColorMod(surface, r::Uint8, g::Uint8, b::Uint8)
    ccall((:SDL_SetSurfaceColorMod, libSDL), Cint, (Ptr{SDL_Surface}, Uint8, Uint8, Uint8), surface, r, g, b)
end

function SDL_GetSurfaceColorMod(surface, r, g, b)
    ccall((:SDL_GetSurfaceColorMod, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), surface, r, g, b)
end

function SDL_SetSurfaceAlphaMod(surface, alpha::Uint8)
    ccall((:SDL_SetSurfaceAlphaMod, libSDL), Cint, (Ptr{SDL_Surface}, Uint8), surface, alpha)
end

function SDL_GetSurfaceAlphaMod(surface, alpha)
    ccall((:SDL_GetSurfaceAlphaMod, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{Uint8}), surface, alpha)
end

function SDL_SetSurfaceBlendMode(surface, blendMode::SDL_BlendMode)
    ccall((:SDL_SetSurfaceBlendMode, libSDL), Cint, (Ptr{SDL_Surface}, SDL_BlendMode), surface, blendMode)
end

function SDL_GetSurfaceBlendMode(surface, blendMode)
    ccall((:SDL_GetSurfaceBlendMode, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{SDL_BlendMode}), surface, blendMode)
end

function SDL_SetClipRect(surface, rect)
    ccall((:SDL_SetClipRect, libSDL), SDL_bool, (Ptr{SDL_Surface}, Ptr{SDL_Rect}), surface, rect)
end

function SDL_GetClipRect(surface, rect)
    ccall((:SDL_GetClipRect, libSDL), Void, (Ptr{SDL_Surface}, Ptr{SDL_Rect}), surface, rect)
end

function SDL_ConvertSurface(src, fmt, flags::Uint32)
    ccall((:SDL_ConvertSurface, libSDL), Ptr{SDL_Surface}, (Ptr{SDL_Surface}, Ptr{SDL_PixelFormat}, Uint32), src, fmt, flags)
end

function SDL_ConvertSurfaceFormat(src, pixel_format::Uint32, flags::Uint32)
    ccall((:SDL_ConvertSurfaceFormat, libSDL), Ptr{SDL_Surface}, (Ptr{SDL_Surface}, Uint32, Uint32), src, pixel_format, flags)
end

function SDL_ConvertPixels(width::Cint, height::Cint, src_format::Uint32, src, src_pitch::Cint, dst_format::Uint32, dst, dst_pitch::Cint)
    ccall((:SDL_ConvertPixels, libSDL), Cint, (Cint, Cint, Uint32, Ptr{Void}, Cint, Uint32, Ptr{Void}, Cint), width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch)
end

function SDL_FillRect(dst, rect, color::Uint32)
    ccall((:SDL_FillRect, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Uint32), dst, rect, color)
end

function SDL_FillRects(dst, rects, count::Cint, color::Uint32)
    ccall((:SDL_FillRects, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Cint, Uint32), dst, rects, count, color)
end

function SDL_UpperBlit(src, srcrect, dst, dstrect)
    ccall((:SDL_UpperBlit, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SDL_LowerBlit(src, srcrect, dst, dstrect)
    ccall((:SDL_LowerBlit, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SDL_SoftStretch(src, srcrect, dst, dstrect)
    ccall((:SDL_SoftStretch, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SDL_UpperBlitScaled(src, srcrect, dst, dstrect)
    ccall((:SDL_UpperBlitScaled, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SDL_LowerBlitScaled(src, srcrect, dst, dstrect)
    ccall((:SDL_LowerBlitScaled, libSDL), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SDL_GetNumVideoDrivers()
    ccall((:SDL_GetNumVideoDrivers, libSDL), Cint, ())
end

function SDL_GetVideoDriver(index::Cint)
    ccall((:SDL_GetVideoDriver, libSDL), Cstring, (Cint,), index)
end

function SDL_VideoInit(driver_name)
    ccall((:SDL_VideoInit, libSDL), Cint, (Cstring,), driver_name)
end

function SDL_VideoQuit()
    ccall((:SDL_VideoQuit, libSDL), Void, ())
end

function SDL_GetCurrentVideoDriver()
    ccall((:SDL_GetCurrentVideoDriver, libSDL), Cstring, ())
end

function SDL_GetNumVideoDisplays()
    ccall((:SDL_GetNumVideoDisplays, libSDL), Cint, ())
end

function SDL_GetDisplayName(displayIndex::Cint)
    ccall((:SDL_GetDisplayName, libSDL), Cstring, (Cint,), displayIndex)
end

function SDL_GetDisplayBounds(displayIndex::Cint, rect)
    ccall((:SDL_GetDisplayBounds, libSDL), Cint, (Cint, Ptr{SDL_Rect}), displayIndex, rect)
end

function SDL_GetDisplayDPI(displayIndex::Cint, ddpi, hdpi, vdpi)
    ccall((:SDL_GetDisplayDPI, libSDL), Cint, (Cint, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), displayIndex, ddpi, hdpi, vdpi)
end

function SDL_GetDisplayUsableBounds(displayIndex::Cint, rect)
    ccall((:SDL_GetDisplayUsableBounds, libSDL), Cint, (Cint, Ptr{SDL_Rect}), displayIndex, rect)
end

function SDL_GetNumDisplayModes(displayIndex::Cint)
    ccall((:SDL_GetNumDisplayModes, libSDL), Cint, (Cint,), displayIndex)
end

function SDL_GetDisplayMode(displayIndex::Cint, modeIndex::Cint, mode)
    ccall((:SDL_GetDisplayMode, libSDL), Cint, (Cint, Cint, Ptr{SDL_DisplayMode}), displayIndex, modeIndex, mode)
end

function SDL_GetDesktopDisplayMode(displayIndex::Cint, mode)
    ccall((:SDL_GetDesktopDisplayMode, libSDL), Cint, (Cint, Ptr{SDL_DisplayMode}), displayIndex, mode)
end

function SDL_GetCurrentDisplayMode(displayIndex::Cint, mode)
    ccall((:SDL_GetCurrentDisplayMode, libSDL), Cint, (Cint, Ptr{SDL_DisplayMode}), displayIndex, mode)
end

function SDL_GetClosestDisplayMode(displayIndex::Cint, mode, closest)
    ccall((:SDL_GetClosestDisplayMode, libSDL), Ptr{SDL_DisplayMode}, (Cint, Ptr{SDL_DisplayMode}, Ptr{SDL_DisplayMode}), displayIndex, mode, closest)
end

function SDL_GetWindowDisplayIndex(window)
    ccall((:SDL_GetWindowDisplayIndex, libSDL), Cint, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowDisplayMode(window, mode)
    ccall((:SDL_SetWindowDisplayMode, libSDL), Cint, (Ptr{SDL_Window}, Ptr{SDL_DisplayMode}), window, mode)
end

function SDL_GetWindowDisplayMode(window, mode)
    ccall((:SDL_GetWindowDisplayMode, libSDL), Cint, (Ptr{SDL_Window}, Ptr{SDL_DisplayMode}), window, mode)
end

function SDL_GetWindowPixelFormat(window)
    ccall((:SDL_GetWindowPixelFormat, libSDL), Uint32, (Ptr{SDL_Window},), window)
end

function SDL_CreateWindow(title, x::Cint, y::Cint, w::Cint, h::Cint, flags::Uint32)
    ccall((:SDL_CreateWindow, libSDL), Ptr{SDL_Window}, (Cstring, Cint, Cint, Cint, Cint, Uint32), title, x, y, w, h, flags)
end

function SDL_CreateWindowFrom(data)
    ccall((:SDL_CreateWindowFrom, libSDL), Ptr{SDL_Window}, (Ptr{Void},), data)
end

function SDL_GetWindowID(window)
    ccall((:SDL_GetWindowID, libSDL), Uint32, (Ptr{SDL_Window},), window)
end

function SDL_GetWindowFromID(id::Uint32)
    ccall((:SDL_GetWindowFromID, libSDL), Ptr{SDL_Window}, (Uint32,), id)
end

function SDL_GetWindowFlags(window)
    ccall((:SDL_GetWindowFlags, libSDL), Uint32, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowTitle(window, title)
    ccall((:SDL_SetWindowTitle, libSDL), Void, (Ptr{SDL_Window}, Cstring), window, title)
end

function SDL_GetWindowTitle(window)
    ccall((:SDL_GetWindowTitle, libSDL), Cstring, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowIcon(window, icon)
    ccall((:SDL_SetWindowIcon, libSDL), Void, (Ptr{SDL_Window}, Ptr{SDL_Surface}), window, icon)
end

function SDL_SetWindowData(window, name, userdata)
    ccall((:SDL_SetWindowData, libSDL), Ptr{Void}, (Ptr{SDL_Window}, Cstring, Ptr{Void}), window, name, userdata)
end

function SDL_GetWindowData(window, name)
    ccall((:SDL_GetWindowData, libSDL), Ptr{Void}, (Ptr{SDL_Window}, Cstring), window, name)
end

function SDL_SetWindowPosition(window, x::Cint, y::Cint)
    ccall((:SDL_SetWindowPosition, libSDL), Void, (Ptr{SDL_Window}, Cint, Cint), window, x, y)
end

function SDL_GetWindowPosition(window, x, y)
    ccall((:SDL_GetWindowPosition, libSDL), Void, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, x, y)
end

function SDL_SetWindowSize(window, w::Cint, h::Cint)
    ccall((:SDL_SetWindowSize, libSDL), Void, (Ptr{SDL_Window}, Cint, Cint), window, w, h)
end

function SDL_GetWindowSize(window, w, h)
    ccall((:SDL_GetWindowSize, libSDL), Void, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SDL_GetWindowBordersSize(window, top, left, bottom, right)
    ccall((:SDL_GetWindowBordersSize, libSDL), Cint, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), window, top, left, bottom, right)
end

function SDL_SetWindowMinimumSize(window, min_w::Cint, min_h::Cint)
    ccall((:SDL_SetWindowMinimumSize, libSDL), Void, (Ptr{SDL_Window}, Cint, Cint), window, min_w, min_h)
end

function SDL_GetWindowMinimumSize(window, w, h)
    ccall((:SDL_GetWindowMinimumSize, libSDL), Void, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SDL_SetWindowMaximumSize(window, max_w::Cint, max_h::Cint)
    ccall((:SDL_SetWindowMaximumSize, libSDL), Void, (Ptr{SDL_Window}, Cint, Cint), window, max_w, max_h)
end

function SDL_GetWindowMaximumSize(window, w, h)
    ccall((:SDL_GetWindowMaximumSize, libSDL), Void, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SDL_SetWindowBordered(window, bordered::SDL_bool)
    ccall((:SDL_SetWindowBordered, libSDL), Void, (Ptr{SDL_Window}, SDL_bool), window, bordered)
end

function SDL_SetWindowResizable(window, resizable::SDL_bool)
    ccall((:SDL_SetWindowResizable, libSDL), Void, (Ptr{SDL_Window}, SDL_bool), window, resizable)
end

function SDL_ShowWindow(window)
    ccall((:SDL_ShowWindow, libSDL), Void, (Ptr{SDL_Window},), window)
end

function SDL_HideWindow(window)
    ccall((:SDL_HideWindow, libSDL), Void, (Ptr{SDL_Window},), window)
end

function SDL_RaiseWindow(window)
    ccall((:SDL_RaiseWindow, libSDL), Void, (Ptr{SDL_Window},), window)
end

function SDL_MaximizeWindow(window)
    ccall((:SDL_MaximizeWindow, libSDL), Void, (Ptr{SDL_Window},), window)
end

function SDL_MinimizeWindow(window)
    ccall((:SDL_MinimizeWindow, libSDL), Void, (Ptr{SDL_Window},), window)
end

function SDL_RestoreWindow(window)
    ccall((:SDL_RestoreWindow, libSDL), Void, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowFullscreen(window, flags::Uint32)
    ccall((:SDL_SetWindowFullscreen, libSDL), Cint, (Ptr{SDL_Window}, Uint32), window, flags)
end

function SDL_GetWindowSurface(window)
    ccall((:SDL_GetWindowSurface, libSDL), Ptr{SDL_Surface}, (Ptr{SDL_Window},), window)
end

function SDL_UpdateWindowSurface(window)
    ccall((:SDL_UpdateWindowSurface, libSDL), Cint, (Ptr{SDL_Window},), window)
end

function SDL_UpdateWindowSurfaceRects(window, rects, numrects::Cint)
    ccall((:SDL_UpdateWindowSurfaceRects, libSDL), Cint, (Ptr{SDL_Window}, Ptr{SDL_Rect}, Cint), window, rects, numrects)
end

function SDL_SetWindowGrab(window, grabbed::SDL_bool)
    ccall((:SDL_SetWindowGrab, libSDL), Void, (Ptr{SDL_Window}, SDL_bool), window, grabbed)
end

function SDL_GetWindowGrab(window)
    ccall((:SDL_GetWindowGrab, libSDL), SDL_bool, (Ptr{SDL_Window},), window)
end

function SDL_GetGrabbedWindow()
    ccall((:SDL_GetGrabbedWindow, libSDL), Ptr{SDL_Window}, ())
end

function SDL_SetWindowBrightness(window, brightness::Cfloat)
    ccall((:SDL_SetWindowBrightness, libSDL), Cint, (Ptr{SDL_Window}, Cfloat), window, brightness)
end

function SDL_GetWindowBrightness(window)
    ccall((:SDL_GetWindowBrightness, libSDL), Cfloat, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowOpacity(window, opacity::Cfloat)
    ccall((:SDL_SetWindowOpacity, libSDL), Cint, (Ptr{SDL_Window}, Cfloat), window, opacity)
end

function SDL_GetWindowOpacity(window, out_opacity)
    ccall((:SDL_GetWindowOpacity, libSDL), Cint, (Ptr{SDL_Window}, Ptr{Cfloat}), window, out_opacity)
end

function SDL_SetWindowModalFor(modal_window, parent_window)
    ccall((:SDL_SetWindowModalFor, libSDL), Cint, (Ptr{SDL_Window}, Ptr{SDL_Window}), modal_window, parent_window)
end

function SDL_SetWindowInputFocus(window)
    ccall((:SDL_SetWindowInputFocus, libSDL), Cint, (Ptr{SDL_Window},), window)
end

function SDL_SetWindowGammaRamp(window, red, green, blue)
    ccall((:SDL_SetWindowGammaRamp, libSDL), Cint, (Ptr{SDL_Window}, Ptr{Uint16}, Ptr{Uint16}, Ptr{Uint16}), window, red, green, blue)
end

function SDL_GetWindowGammaRamp(window, red, green, blue)
    ccall((:SDL_GetWindowGammaRamp, libSDL), Cint, (Ptr{SDL_Window}, Ptr{Uint16}, Ptr{Uint16}, Ptr{Uint16}), window, red, green, blue)
end

function SDL_SetWindowHitTest(window, callback::SDL_HitTest, callback_data)
    ccall((:SDL_SetWindowHitTest, libSDL), Cint, (Ptr{SDL_Window}, SDL_HitTest, Ptr{Void}), window, callback, callback_data)
end

function SDL_DestroyWindow(window)
    ccall((:SDL_DestroyWindow, libSDL), Void, (Ptr{SDL_Window},), window)
end

function SDL_IsScreenSaverEnabled()
    ccall((:SDL_IsScreenSaverEnabled, libSDL), SDL_bool, ())
end

function SDL_EnableScreenSaver()
    ccall((:SDL_EnableScreenSaver, libSDL), Void, ())
end

function SDL_DisableScreenSaver()
    ccall((:SDL_DisableScreenSaver, libSDL), Void, ())
end

function SDL_GL_LoadLibrary(path)
    ccall((:SDL_GL_LoadLibrary, libSDL), Cint, (Cstring,), path)
end

function SDL_GL_GetProcAddress(proc)
    ccall((:SDL_GL_GetProcAddress, libSDL), Ptr{Void}, (Cstring,), proc)
end

function SDL_GL_UnloadLibrary()
    ccall((:SDL_GL_UnloadLibrary, libSDL), Void, ())
end

function SDL_GL_ExtensionSupported(extension)
    ccall((:SDL_GL_ExtensionSupported, libSDL), SDL_bool, (Cstring,), extension)
end

function SDL_GL_ResetAttributes()
    ccall((:SDL_GL_ResetAttributes, libSDL), Void, ())
end

function SDL_GL_SetAttribute(attr::SDL_GLattr, value)
    ccall((:SDL_GL_SetAttribute, libSDL), Cint, (SDL_GLattr, Cint), attr, value)
end

function SDL_GL_GetAttribute(attr::SDL_GLattr, value)
    ccall((:SDL_GL_GetAttribute, libSDL), Cint, (SDL_GLattr, Ptr{Cint}), attr, value)
end

function SDL_GL_CreateContext(window)
    ccall((:SDL_GL_CreateContext, libSDL), SDL_GLContext, (Ptr{SDL_Window},), window)
end

function SDL_GL_MakeCurrent(window, context::SDL_GLContext)
    ccall((:SDL_GL_MakeCurrent, libSDL), Cint, (Ptr{SDL_Window}, SDL_GLContext), window, context)
end

function SDL_GL_GetCurrentWindow()
    ccall((:SDL_GL_GetCurrentWindow, libSDL), Ptr{SDL_Window}, ())
end

function SDL_GL_GetCurrentContext()
    ccall((:SDL_GL_GetCurrentContext, libSDL), SDL_GLContext, ())
end

function SDL_GL_GetDrawableSize(window, w, h)
    ccall((:SDL_GL_GetDrawableSize, libSDL), Void, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SDL_GL_SetSwapInterval(interval::Cint)
    ccall((:SDL_GL_SetSwapInterval, libSDL), Cint, (Cint,), interval)
end

function SDL_GL_GetSwapInterval()
    ccall((:SDL_GL_GetSwapInterval, libSDL), Cint, ())
end

function SDL_GL_SwapWindow(window)
    ccall((:SDL_GL_SwapWindow, libSDL), Void, (Ptr{SDL_Window},), window)
end

function SDL_GL_DeleteContext(context::SDL_GLContext)
    ccall((:SDL_GL_DeleteContext, libSDL), Void, (SDL_GLContext,), context)
end

function SDL_GetKeyboardFocus()
    ccall((:SDL_GetKeyboardFocus, libSDL), Ptr{SDL_Window}, ())
end

function SDL_GetKeyboardState(numkeys)
    ccall((:SDL_GetKeyboardState, libSDL), Ptr{Uint8}, (Ptr{Cint},), numkeys)
end

function SDL_GetModState()
    ccall((:SDL_GetModState, libSDL), SDL_Keymod, ())
end

function SDL_SetModState(modstate::SDL_Keymod)
    ccall((:SDL_SetModState, libSDL), Void, (SDL_Keymod,), modstate)
end

function SDL_GetKeyFromScancode(scancode::SDL_Scancode)
    ccall((:SDL_GetKeyFromScancode, libSDL), SDL_Keycode, (SDL_Scancode,), scancode)
end

function SDL_GetScancodeFromKey(key::SDL_Keycode)
    ccall((:SDL_GetScancodeFromKey, libSDL), SDL_Scancode, (SDL_Keycode,), key)
end

function SDL_GetScancodeName(scancode::SDL_Scancode)
    ccall((:SDL_GetScancodeName, libSDL), Cstring, (SDL_Scancode,), scancode)
end

function SDL_GetScancodeFromName(name)
    ccall((:SDL_GetScancodeFromName, libSDL), SDL_Scancode, (Cstring,), name)
end

function SDL_GetKeyName(key::SDL_Keycode)
    ccall((:SDL_GetKeyName, libSDL), Cstring, (SDL_Keycode,), key)
end

function SDL_GetKeyFromName(name)
    ccall((:SDL_GetKeyFromName, libSDL), SDL_Keycode, (Cstring,), name)
end

function SDL_StartTextInput()
    ccall((:SDL_StartTextInput, libSDL), Void, ())
end

function SDL_IsTextInputActive()
    ccall((:SDL_IsTextInputActive, libSDL), SDL_bool, ())
end

function SDL_StopTextInput()
    ccall((:SDL_StopTextInput, libSDL), Void, ())
end

function SDL_SetTextInputRect(rect)
    ccall((:SDL_SetTextInputRect, libSDL), Void, (Ptr{SDL_Rect},), rect)
end

function SDL_HasScreenKeyboardSupport()
    ccall((:SDL_HasScreenKeyboardSupport, libSDL), SDL_bool, ())
end

function SDL_IsScreenKeyboardShown(window)
    ccall((:SDL_IsScreenKeyboardShown, libSDL), SDL_bool, (Ptr{SDL_Window},), window)
end

function SDL_GetMouseFocus()
    ccall((:SDL_GetMouseFocus, libSDL), Ptr{SDL_Window}, ())
end

function SDL_GetMouseState(x, y)
    ccall((:SDL_GetMouseState, libSDL), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function SDL_GetGlobalMouseState(x, y)
    ccall((:SDL_GetGlobalMouseState, libSDL), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function SDL_GetRelativeMouseState(x, y)
    ccall((:SDL_GetRelativeMouseState, libSDL), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function SDL_WarpMouseInWindow(window, x::Cint, y::Cint)
    ccall((:SDL_WarpMouseInWindow, libSDL), Void, (Ptr{SDL_Window}, Cint, Cint), window, x, y)
end

function SDL_WarpMouseGlobal(x::Cint, y::Cint)
    ccall((:SDL_WarpMouseGlobal, libSDL), Cint, (Cint, Cint), x, y)
end

function SDL_SetRelativeMouseMode(enabled::SDL_bool)
    ccall((:SDL_SetRelativeMouseMode, libSDL), Cint, (SDL_bool,), enabled)
end

function SDL_CaptureMouse(enabled::SDL_bool)
    ccall((:SDL_CaptureMouse, libSDL), Cint, (SDL_bool,), enabled)
end

function SDL_GetRelativeMouseMode()
    ccall((:SDL_GetRelativeMouseMode, libSDL), SDL_bool, ())
end

function SDL_CreateCursor(data, mask, w::Cint, h::Cint, hot_x::Cint, hot_y::Cint)
    ccall((:SDL_CreateCursor, libSDL), Ptr{SDL_Cursor}, (Ptr{Uint8}, Ptr{Uint8}, Cint, Cint, Cint, Cint), data, mask, w, h, hot_x, hot_y)
end

function SDL_CreateColorCursor(surface, hot_x::Cint, hot_y::Cint)
    ccall((:SDL_CreateColorCursor, libSDL), Ptr{SDL_Cursor}, (Ptr{SDL_Surface}, Cint, Cint), surface, hot_x, hot_y)
end

function SDL_CreateSystemCursor(id::SDL_SystemCursor)
    ccall((:SDL_CreateSystemCursor, libSDL), Ptr{SDL_Cursor}, (SDL_SystemCursor,), id)
end

function SDL_SetCursor(cursor)
    ccall((:SDL_SetCursor, libSDL), Void, (Ptr{SDL_Cursor},), cursor)
end

function SDL_GetCursor()
    ccall((:SDL_GetCursor, libSDL), Ptr{SDL_Cursor}, ())
end

function SDL_GetDefaultCursor()
    ccall((:SDL_GetDefaultCursor, libSDL), Ptr{SDL_Cursor}, ())
end

function SDL_FreeCursor(cursor)
    ccall((:SDL_FreeCursor, libSDL), Void, (Ptr{SDL_Cursor},), cursor)
end

function SDL_ShowCursor(toggle::Cint)
    ccall((:SDL_ShowCursor, libSDL), Cint, (Cint,), toggle)
end

function SDL_NumJoysticks()
    ccall((:SDL_NumJoysticks, libSDL), Cint, ())
end

function SDL_JoystickNameForIndex(device_index::Cint)
    ccall((:SDL_JoystickNameForIndex, libSDL), Cstring, (Cint,), device_index)
end

function SDL_JoystickOpen(device_index::Cint)
    ccall((:SDL_JoystickOpen, libSDL), Ptr{SDL_Joystick}, (Cint,), device_index)
end

function SDL_JoystickFromInstanceID(joyid::SDL_JoystickID)
    ccall((:SDL_JoystickFromInstanceID, libSDL), Ptr{SDL_Joystick}, (SDL_JoystickID,), joyid)
end

function SDL_JoystickName(joystick)
    ccall((:SDL_JoystickName, libSDL), Cstring, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickGetDeviceGUID(device_index::Cint)
    ccall((:SDL_JoystickGetDeviceGUID, libSDL), SDL_JoystickGUID, (Cint,), device_index)
end

function SDL_JoystickGetGUID(joystick)
    ccall((:SDL_JoystickGetGUID, libSDL), SDL_JoystickGUID, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickGetGUIDString(guid::SDL_JoystickGUID, pszGUID, cbGUID::Cint)
    ccall((:SDL_JoystickGetGUIDString, libSDL), Void, (SDL_JoystickGUID, Cstring, Cint), guid, pszGUID, cbGUID)
end

function SDL_JoystickGetGUIDFromString(pchGUID)
    ccall((:SDL_JoystickGetGUIDFromString, libSDL), SDL_JoystickGUID, (Cstring,), pchGUID)
end

function SDL_JoystickGetAttached(joystick)
    ccall((:SDL_JoystickGetAttached, libSDL), SDL_bool, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickInstanceID(joystick)
    ccall((:SDL_JoystickInstanceID, libSDL), SDL_JoystickID, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickNumAxes(joystick)
    ccall((:SDL_JoystickNumAxes, libSDL), Cint, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickNumBalls(joystick)
    ccall((:SDL_JoystickNumBalls, libSDL), Cint, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickNumHats(joystick)
    ccall((:SDL_JoystickNumHats, libSDL), Cint, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickNumButtons(joystick)
    ccall((:SDL_JoystickNumButtons, libSDL), Cint, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickUpdate()
    ccall((:SDL_JoystickUpdate, libSDL), Void, ())
end

function SDL_JoystickEventState(state::Cint)
    ccall((:SDL_JoystickEventState, libSDL), Cint, (Cint,), state)
end

function SDL_JoystickGetAxis(joystick, axis::Cint)
    ccall((:SDL_JoystickGetAxis, libSDL), Sint16, (Ptr{SDL_Joystick}, Cint), joystick, axis)
end

function SDL_JoystickGetHat(joystick, hat::Cint)
    ccall((:SDL_JoystickGetHat, libSDL), Uint8, (Ptr{SDL_Joystick}, Cint), joystick, hat)
end

function SDL_JoystickGetBall(joystick, ball::Cint, dx, dy)
    ccall((:SDL_JoystickGetBall, libSDL), Cint, (Ptr{SDL_Joystick}, Cint, Ptr{Cint}, Ptr{Cint}), joystick, ball, dx, dy)
end

function SDL_JoystickGetButton(joystick, button::Cint)
    ccall((:SDL_JoystickGetButton, libSDL), Uint8, (Ptr{SDL_Joystick}, Cint), joystick, button)
end

function SDL_JoystickClose(joystick)
    ccall((:SDL_JoystickClose, libSDL), Void, (Ptr{SDL_Joystick},), joystick)
end

function SDL_JoystickCurrentPowerLevel(joystick)
    ccall((:SDL_JoystickCurrentPowerLevel, libSDL), SDL_JoystickPowerLevel, (Ptr{SDL_Joystick},), joystick)
end

function SDL_GameControllerAddMappingsFromRW(rw, freerw::Cint)
    ccall((:SDL_GameControllerAddMappingsFromRW, libSDL), Cint, (Ptr{SDL_RWops}, Cint), rw, freerw)
end

function SDL_GameControllerAddMapping(mappingString)
    ccall((:SDL_GameControllerAddMapping, libSDL), Cint, (Cstring,), mappingString)
end

function SDL_GameControllerMappingForGUID(guid::SDL_JoystickGUID)
    ccall((:SDL_GameControllerMappingForGUID, libSDL), Cstring, (SDL_JoystickGUID,), guid)
end

function SDL_GameControllerMapping(gamecontroller)
    ccall((:SDL_GameControllerMapping, libSDL), Cstring, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_IsGameController(joystick_index::Cint)
    ccall((:SDL_IsGameController, libSDL), SDL_bool, (Cint,), joystick_index)
end

function SDL_GameControllerNameForIndex(joystick_index::Cint)
    ccall((:SDL_GameControllerNameForIndex, libSDL), Cstring, (Cint,), joystick_index)
end

function SDL_GameControllerOpen(joystick_index::Cint)
    ccall((:SDL_GameControllerOpen, libSDL), Ptr{SDL_GameController}, (Cint,), joystick_index)
end

function SDL_GameControllerFromInstanceID(joyid::SDL_JoystickID)
    ccall((:SDL_GameControllerFromInstanceID, libSDL), Ptr{SDL_GameController}, (SDL_JoystickID,), joyid)
end

function SDL_GameControllerName(gamecontroller)
    ccall((:SDL_GameControllerName, libSDL), Cstring, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetAttached(gamecontroller)
    ccall((:SDL_GameControllerGetAttached, libSDL), SDL_bool, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerGetJoystick(gamecontroller)
    ccall((:SDL_GameControllerGetJoystick, libSDL), Ptr{SDL_Joystick}, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GameControllerEventState(state::Cint)
    ccall((:SDL_GameControllerEventState, libSDL), Cint, (Cint,), state)
end

function SDL_GameControllerUpdate()
    ccall((:SDL_GameControllerUpdate, libSDL), Void, ())
end

function SDL_GameControllerGetAxisFromString(pchString)
    ccall((:SDL_GameControllerGetAxisFromString, libSDL), SDL_GameControllerAxis, (Cstring,), pchString)
end

function SDL_GameControllerGetStringForAxis(axis::SDL_GameControllerAxis)
    ccall((:SDL_GameControllerGetStringForAxis, libSDL), Cstring, (SDL_GameControllerAxis,), axis)
end

function SDL_GameControllerGetBindForAxis(gamecontroller, axis::SDL_GameControllerAxis)
    ccall((:SDL_GameControllerGetBindForAxis, libSDL), SDL_GameControllerButtonBind, (Ptr{SDL_GameController}, SDL_GameControllerAxis), gamecontroller, axis)
end

function SDL_GameControllerGetAxis(gamecontroller, axis::SDL_GameControllerAxis)
    ccall((:SDL_GameControllerGetAxis, libSDL), Sint16, (Ptr{SDL_GameController}, SDL_GameControllerAxis), gamecontroller, axis)
end

function SDL_GameControllerGetButtonFromString(pchString)
    ccall((:SDL_GameControllerGetButtonFromString, libSDL), SDL_GameControllerButton, (Cstring,), pchString)
end

function SDL_GameControllerGetStringForButton(button::SDL_GameControllerButton)
    ccall((:SDL_GameControllerGetStringForButton, libSDL), Cstring, (SDL_GameControllerButton,), button)
end

function SDL_GameControllerGetBindForButton(gamecontroller, button::SDL_GameControllerButton)
    ccall((:SDL_GameControllerGetBindForButton, libSDL), SDL_GameControllerButtonBind, (Ptr{SDL_GameController}, SDL_GameControllerButton), gamecontroller, button)
end

function SDL_GameControllerGetButton(gamecontroller, button::SDL_GameControllerButton)
    ccall((:SDL_GameControllerGetButton, libSDL), Uint8, (Ptr{SDL_GameController}, SDL_GameControllerButton), gamecontroller, button)
end

function SDL_GameControllerClose(gamecontroller)
    ccall((:SDL_GameControllerClose, libSDL), Void, (Ptr{SDL_GameController},), gamecontroller)
end

function SDL_GetNumTouchDevices()
    ccall((:SDL_GetNumTouchDevices, libSDL), Cint, ())
end

function SDL_GetTouchDevice(index::Cint)
    ccall((:SDL_GetTouchDevice, libSDL), SDL_TouchID, (Cint,), index)
end

function SDL_GetNumTouchFingers(touchID::SDL_TouchID)
    ccall((:SDL_GetNumTouchFingers, libSDL), Cint, (SDL_TouchID,), touchID)
end

function SDL_GetTouchFinger(touchID::SDL_TouchID, index::Cint)
    ccall((:SDL_GetTouchFinger, libSDL), Ptr{SDL_Finger}, (SDL_TouchID, Cint), touchID, index)
end

function SDL_RecordGesture(touchId::SDL_TouchID)
    ccall((:SDL_RecordGesture, libSDL), Cint, (SDL_TouchID,), touchId)
end

function SDL_SaveAllDollarTemplates(dst)
    ccall((:SDL_SaveAllDollarTemplates, libSDL), Cint, (Ptr{SDL_RWops},), dst)
end

function SDL_SaveDollarTemplate(gestureId::SDL_GestureID, dst)
    ccall((:SDL_SaveDollarTemplate, libSDL), Cint, (SDL_GestureID, Ptr{SDL_RWops}), gestureId, dst)
end

function SDL_LoadDollarTemplates(touchId::SDL_TouchID, src)
    ccall((:SDL_LoadDollarTemplates, libSDL), Cint, (SDL_TouchID, Ptr{SDL_RWops}), touchId, src)
end

function SDL_PumpEvents()
    ccall((:SDL_PumpEvents, libSDL), Void, ())
end

function SDL_PeepEvents(events, numevents::Cint, action::SDL_eventaction, minType::Uint32, maxType::Uint32)
    ccall((:SDL_PeepEvents, libSDL), Cint, (Ptr{SDL_Event}, Cint, SDL_eventaction, Uint32, Uint32), events, numevents, action, minType, maxType)
end

function SDL_HasEvent(_type::Uint32)
    ccall((:SDL_HasEvent, libSDL), SDL_bool, (Uint32,), _type)
end

function SDL_HasEvents(minType::Uint32, maxType::Uint32)
    ccall((:SDL_HasEvents, libSDL), SDL_bool, (Uint32, Uint32), minType, maxType)
end

function SDL_FlushEvent(_type::Uint32)
    ccall((:SDL_FlushEvent, libSDL), Void, (Uint32,), _type)
end

function SDL_FlushEvents(minType::Uint32, maxType::Uint32)
    ccall((:SDL_FlushEvents, libSDL), Void, (Uint32, Uint32), minType, maxType)
end

function SDL_PollEvent(event)
    ccall((:SDL_PollEvent, libSDL), Cint, (Ptr{SDL_Event},), event)
end

function SDL_WaitEvent(event)
    ccall((:SDL_WaitEvent, libSDL), Cint, (Ptr{SDL_Event},), event)
end

function SDL_WaitEventTimeout(event, timeout::Cint)
    ccall((:SDL_WaitEventTimeout, libSDL), Cint, (Ptr{SDL_Event}, Cint), event, timeout)
end

function SDL_PushEvent(event)
    ccall((:SDL_PushEvent, libSDL), Cint, (Ptr{SDL_Event},), event)
end

function SDL_SetEventFilter(filter::SDL_EventFilter, userdata)
    ccall((:SDL_SetEventFilter, libSDL), Void, (SDL_EventFilter, Ptr{Void}), filter, userdata)
end

function SDL_GetEventFilter(filter, userdata)
    ccall((:SDL_GetEventFilter, libSDL), SDL_bool, (Ptr{SDL_EventFilter}, Ptr{Ptr{Void}}), filter, userdata)
end

function SDL_AddEventWatch(filter::SDL_EventFilter, userdata)
    ccall((:SDL_AddEventWatch, libSDL), Void, (SDL_EventFilter, Ptr{Void}), filter, userdata)
end

function SDL_DelEventWatch(filter::SDL_EventFilter, userdata)
    ccall((:SDL_DelEventWatch, libSDL), Void, (SDL_EventFilter, Ptr{Void}), filter, userdata)
end

function SDL_FilterEvents(filter::SDL_EventFilter, userdata)
    ccall((:SDL_FilterEvents, libSDL), Void, (SDL_EventFilter, Ptr{Void}), filter, userdata)
end

function SDL_EventState(_type::Uint32, state::Cint)
    ccall((:SDL_EventState, libSDL), Uint8, (Uint32, Cint), _type, state)
end

function SDL_RegisterEvents(numevents::Cint)
    ccall((:SDL_RegisterEvents, libSDL), Uint32, (Cint,), numevents)
end

function SDL_GetBasePath()
    ccall((:SDL_GetBasePath, libSDL), Cstring, ())
end

function SDL_GetPrefPath(org, app)
    ccall((:SDL_GetPrefPath, libSDL), Cstring, (Cstring, Cstring), org, app)
end

function SDL_NumHaptics()
    ccall((:SDL_NumHaptics, libSDL), Cint, ())
end

function SDL_HapticName(device_index::Cint)
    ccall((:SDL_HapticName, libSDL), Cstring, (Cint,), device_index)
end

function SDL_HapticOpen(device_index::Cint)
    ccall((:SDL_HapticOpen, libSDL), Ptr{SDL_Haptic}, (Cint,), device_index)
end

function SDL_HapticOpened(device_index::Cint)
    ccall((:SDL_HapticOpened, libSDL), Cint, (Cint,), device_index)
end

function SDL_HapticIndex(haptic)
    ccall((:SDL_HapticIndex, libSDL), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_MouseIsHaptic()
    ccall((:SDL_MouseIsHaptic, libSDL), Cint, ())
end

function SDL_HapticOpenFromMouse()
    ccall((:SDL_HapticOpenFromMouse, libSDL), Ptr{SDL_Haptic}, ())
end

function SDL_JoystickIsHaptic(joystick)
    ccall((:SDL_JoystickIsHaptic, libSDL), Cint, (Ptr{SDL_Joystick},), joystick)
end

function SDL_HapticOpenFromJoystick(joystick)
    ccall((:SDL_HapticOpenFromJoystick, libSDL), Ptr{SDL_Haptic}, (Ptr{SDL_Joystick},), joystick)
end

function SDL_HapticClose(haptic)
    ccall((:SDL_HapticClose, libSDL), Void, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticNumEffects(haptic)
    ccall((:SDL_HapticNumEffects, libSDL), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticNumEffectsPlaying(haptic)
    ccall((:SDL_HapticNumEffectsPlaying, libSDL), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticQuery(haptic)
    ccall((:SDL_HapticQuery, libSDL), UInt32, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticNumAxes(haptic)
    ccall((:SDL_HapticNumAxes, libSDL), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticEffectSupported(haptic, effect)
    ccall((:SDL_HapticEffectSupported, libSDL), Cint, (Ptr{SDL_Haptic}, Ptr{SDL_HapticEffect}), haptic, effect)
end

function SDL_HapticNewEffect(haptic, effect)
    ccall((:SDL_HapticNewEffect, libSDL), Cint, (Ptr{SDL_Haptic}, Ptr{SDL_HapticEffect}), haptic, effect)
end

function SDL_HapticUpdateEffect(haptic, effect::Cint, data)
    ccall((:SDL_HapticUpdateEffect, libSDL), Cint, (Ptr{SDL_Haptic}, Cint, Ptr{SDL_HapticEffect}), haptic, effect, data)
end

function SDL_HapticRunEffect(haptic, effect::Cint, iterations::Uint32)
    ccall((:SDL_HapticRunEffect, libSDL), Cint, (Ptr{SDL_Haptic}, Cint, Uint32), haptic, effect, iterations)
end

function SDL_HapticStopEffect(haptic, effect::Cint)
    ccall((:SDL_HapticStopEffect, libSDL), Cint, (Ptr{SDL_Haptic}, Cint), haptic, effect)
end

function SDL_HapticDestroyEffect(haptic, effect::Cint)
    ccall((:SDL_HapticDestroyEffect, libSDL), Void, (Ptr{SDL_Haptic}, Cint), haptic, effect)
end

function SDL_HapticGetEffectStatus(haptic, effect::Cint)
    ccall((:SDL_HapticGetEffectStatus, libSDL), Cint, (Ptr{SDL_Haptic}, Cint), haptic, effect)
end

function SDL_HapticSetGain(haptic, gain::Cint)
    ccall((:SDL_HapticSetGain, libSDL), Cint, (Ptr{SDL_Haptic}, Cint), haptic, gain)
end

function SDL_HapticSetAutocenter(haptic, autocenter::Cint)
    ccall((:SDL_HapticSetAutocenter, libSDL), Cint, (Ptr{SDL_Haptic}, Cint), haptic, autocenter)
end

function SDL_HapticPause(haptic)
    ccall((:SDL_HapticPause, libSDL), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticUnpause(haptic)
    ccall((:SDL_HapticUnpause, libSDL), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticStopAll(haptic)
    ccall((:SDL_HapticStopAll, libSDL), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticRumbleSupported(haptic)
    ccall((:SDL_HapticRumbleSupported, libSDL), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticRumbleInit(haptic)
    ccall((:SDL_HapticRumbleInit, libSDL), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_HapticRumblePlay(haptic, strength::Cfloat, length::Uint32)
    ccall((:SDL_HapticRumblePlay, libSDL), Cint, (Ptr{SDL_Haptic}, Cfloat, Uint32), haptic, strength, length)
end

function SDL_HapticRumbleStop(haptic)
    ccall((:SDL_HapticRumbleStop, libSDL), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SDL_SetHintWithPriority(name, value, priority::SDL_HintPriority)
    ccall((:SDL_SetHintWithPriority, libSDL), SDL_bool, (Cstring, Cstring, SDL_HintPriority), name, value, priority)
end

function SDL_SetHint(name, value)
    ccall((:SDL_SetHint, libSDL), SDL_bool, (Cstring, Cstring), name, value)
end

function SDL_GetHint(name)
    ccall((:SDL_GetHint, libSDL), Cstring, (Cstring,), name)
end

function SDL_GetHintBoolean(name, default_value::SDL_bool)
    ccall((:SDL_GetHintBoolean, libSDL), SDL_bool, (Cstring, SDL_bool), name, default_value)
end

function SDL_AddHintCallback(name, callback::SDL_HintCallback, userdata)
    ccall((:SDL_AddHintCallback, libSDL), Void, (Cstring, SDL_HintCallback, Ptr{Void}), name, callback, userdata)
end

function SDL_DelHintCallback(name, callback::SDL_HintCallback, userdata)
    ccall((:SDL_DelHintCallback, libSDL), Void, (Cstring, SDL_HintCallback, Ptr{Void}), name, callback, userdata)
end

function SDL_ClearHints()
    ccall((:SDL_ClearHints, libSDL), Void, ())
end

function SDL_LoadObject(sofile)
    ccall((:SDL_LoadObject, libSDL), Ptr{Void}, (Cstring,), sofile)
end

function SDL_LoadFunction(handle, name)
    ccall((:SDL_LoadFunction, libSDL), Ptr{Void}, (Ptr{Void}, Cstring), handle, name)
end

function SDL_UnloadObject(handle)
    ccall((:SDL_UnloadObject, libSDL), Void, (Ptr{Void},), handle)
end

function SDL_LogSetAllPriority(priority::SDL_LogPriority)
    ccall((:SDL_LogSetAllPriority, libSDL), Void, (SDL_LogPriority,), priority)
end

function SDL_LogSetPriority(category::Cint, priority::SDL_LogPriority)
    ccall((:SDL_LogSetPriority, libSDL), Void, (Cint, SDL_LogPriority), category, priority)
end

function SDL_LogGetPriority(category::Cint)
    ccall((:SDL_LogGetPriority, libSDL), SDL_LogPriority, (Cint,), category)
end

function SDL_LogResetPriorities()
    ccall((:SDL_LogResetPriorities, libSDL), Void, ())
end

function SDL_LogMessageV(category::Cint, priority::SDL_LogPriority, fmt, ap::va_list)
    ccall((:SDL_LogMessageV, libSDL), Void, (Cint, SDL_LogPriority, Cstring, va_list), category, priority, fmt, ap)
end

function SDL_LogGetOutputFunction(callback, userdata)
    ccall((:SDL_LogGetOutputFunction, libSDL), Void, (Ptr{SDL_LogOutputFunction}, Ptr{Ptr{Void}}), callback, userdata)
end

function SDL_LogSetOutputFunction(callback::SDL_LogOutputFunction, userdata)
    ccall((:SDL_LogSetOutputFunction, libSDL), Void, (SDL_LogOutputFunction, Ptr{Void}), callback, userdata)
end

function SDL_ShowMessageBox(messageboxdata, buttonid)
    ccall((:SDL_ShowMessageBox, libSDL), Cint, (Ptr{SDL_MessageBoxData}, Ptr{Cint}), messageboxdata, buttonid)
end

function SDL_ShowSimpleMessageBox(flags::Uint32, title, message, window)
    ccall((:SDL_ShowSimpleMessageBox, libSDL), Cint, (Uint32, Cstring, Cstring, Ptr{SDL_Window}), flags, title, message, window)
end

function SDL_GetPowerInfo(secs, pct)
    ccall((:SDL_GetPowerInfo, libSDL), SDL_PowerState, (Ptr{Cint}, Ptr{Cint}), secs, pct)
end

function SDL_GetNumRenderDrivers()
    ccall((:SDL_GetNumRenderDrivers, libSDL), Cint, ())
end

function SDL_GetRenderDriverInfo(index::Cint, info)
    ccall((:SDL_GetRenderDriverInfo, libSDL), Cint, (Cint, Ptr{SDL_RendererInfo}), index, info)
end

function SDL_CreateWindowAndRenderer(width::Cint, height::Cint, window_flags::Uint32, window, renderer)
    ccall((:SDL_CreateWindowAndRenderer, libSDL), Cint, (Cint, Cint, Uint32, Ptr{Ptr{SDL_Window}}, Ptr{Ptr{SDL_Renderer}}), width, height, window_flags, window, renderer)
end

function SDL_CreateRenderer(window, index::Cint, flags::Uint32)
    ccall((:SDL_CreateRenderer, libSDL), Ptr{SDL_Renderer}, (Ptr{SDL_Window}, Cint, Uint32), window, index, flags)
end

function SDL_CreateSoftwareRenderer(surface)
    ccall((:SDL_CreateSoftwareRenderer, libSDL), Ptr{SDL_Renderer}, (Ptr{SDL_Surface},), surface)
end

function SDL_GetRenderer(window)
    ccall((:SDL_GetRenderer, libSDL), Ptr{SDL_Renderer}, (Ptr{SDL_Window},), window)
end

function SDL_GetRendererInfo(renderer, info)
    ccall((:SDL_GetRendererInfo, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_RendererInfo}), renderer, info)
end

function SDL_GetRendererOutputSize(renderer, w, h)
    ccall((:SDL_GetRendererOutputSize, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{Cint}, Ptr{Cint}), renderer, w, h)
end

function SDL_CreateTexture(renderer, format::Uint32, access::Cint, w::Cint, h::Cint)
    ccall((:SDL_CreateTexture, libSDL), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Uint32, Cint, Cint, Cint), renderer, format, access, w, h)
end

function SDL_CreateTextureFromSurface(renderer, surface)
    ccall((:SDL_CreateTextureFromSurface, libSDL), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Ptr{SDL_Surface}), renderer, surface)
end

function SDL_QueryTexture(texture, format, access, w, h)
    ccall((:SDL_QueryTexture, libSDL), Cint, (Ptr{SDL_Texture}, Ptr{Uint32}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), texture, format, access, w, h)
end

function SDL_SetTextureColorMod(texture, r::Uint8, g::Uint8, b::Uint8)
    ccall((:SDL_SetTextureColorMod, libSDL), Cint, (Ptr{SDL_Texture}, Uint8, Uint8, Uint8), texture, r, g, b)
end

function SDL_GetTextureColorMod(texture, r, g, b)
    ccall((:SDL_GetTextureColorMod, libSDL), Cint, (Ptr{SDL_Texture}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), texture, r, g, b)
end

function SDL_SetTextureAlphaMod(texture, alpha::Uint8)
    ccall((:SDL_SetTextureAlphaMod, libSDL), Cint, (Ptr{SDL_Texture}, Uint8), texture, alpha)
end

function SDL_GetTextureAlphaMod(texture, alpha)
    ccall((:SDL_GetTextureAlphaMod, libSDL), Cint, (Ptr{SDL_Texture}, Ptr{Uint8}), texture, alpha)
end

function SDL_SetTextureBlendMode(texture, blendMode::SDL_BlendMode)
    ccall((:SDL_SetTextureBlendMode, libSDL), Cint, (Ptr{SDL_Texture}, SDL_BlendMode), texture, blendMode)
end

function SDL_GetTextureBlendMode(texture, blendMode)
    ccall((:SDL_GetTextureBlendMode, libSDL), Cint, (Ptr{SDL_Texture}, Ptr{SDL_BlendMode}), texture, blendMode)
end

function SDL_UpdateTexture(texture, rect, pixels, pitch::Cint)
    ccall((:SDL_UpdateTexture, libSDL), Cint, (Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{Void}, Cint), texture, rect, pixels, pitch)
end

function SDL_UpdateYUVTexture(texture, rect, Yplane, Ypitch::Cint, Uplane, Upitch::Cint, Vplane, Vpitch::Cint)
    ccall((:SDL_UpdateYUVTexture, libSDL), Cint, (Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{Uint8}, Cint, Ptr{Uint8}, Cint, Ptr{Uint8}, Cint), texture, rect, Yplane, Ypitch, Uplane, Upitch, Vplane, Vpitch)
end

function SDL_LockTexture(texture, rect, pixels, pitch)
    ccall((:SDL_LockTexture, libSDL), Cint, (Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{Ptr{Void}}, Ptr{Cint}), texture, rect, pixels, pitch)
end

function SDL_UnlockTexture(texture)
    ccall((:SDL_UnlockTexture, libSDL), Void, (Ptr{SDL_Texture},), texture)
end

function SDL_RenderTargetSupported(renderer)
    ccall((:SDL_RenderTargetSupported, libSDL), SDL_bool, (Ptr{SDL_Renderer},), renderer)
end

function SDL_SetRenderTarget(renderer, texture)
    ccall((:SDL_SetRenderTarget, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}), renderer, texture)
end

function SDL_GetRenderTarget(renderer)
    ccall((:SDL_GetRenderTarget, libSDL), Ptr{SDL_Texture}, (Ptr{SDL_Renderer},), renderer)
end

function SDL_RenderSetLogicalSize(renderer, w::Cint, h::Cint)
    ccall((:SDL_RenderSetLogicalSize, libSDL), Cint, (Ptr{SDL_Renderer}, Cint, Cint), renderer, w, h)
end

function SDL_RenderGetLogicalSize(renderer, w, h)
    ccall((:SDL_RenderGetLogicalSize, libSDL), Void, (Ptr{SDL_Renderer}, Ptr{Cint}, Ptr{Cint}), renderer, w, h)
end

function SDL_RenderSetIntegerScale(renderer, enable::SDL_bool)
    ccall((:SDL_RenderSetIntegerScale, libSDL), Cint, (Ptr{SDL_Renderer}, SDL_bool), renderer, enable)
end

function SDL_RenderGetIntegerScale(renderer)
    ccall((:SDL_RenderGetIntegerScale, libSDL), SDL_bool, (Ptr{SDL_Renderer},), renderer)
end

function SDL_RenderSetViewport(renderer, rect)
    ccall((:SDL_RenderSetViewport, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderGetViewport(renderer, rect)
    ccall((:SDL_RenderGetViewport, libSDL), Void, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderSetClipRect(renderer, rect)
    ccall((:SDL_RenderSetClipRect, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderGetClipRect(renderer, rect)
    ccall((:SDL_RenderGetClipRect, libSDL), Void, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderIsClipEnabled(renderer)
    ccall((:SDL_RenderIsClipEnabled, libSDL), SDL_bool, (Ptr{SDL_Renderer},), renderer)
end

function SDL_RenderSetScale(renderer, scaleX::Cfloat, scaleY::Cfloat)
    ccall((:SDL_RenderSetScale, libSDL), Cint, (Ptr{SDL_Renderer}, Cfloat, Cfloat), renderer, scaleX, scaleY)
end

function SDL_RenderGetScale(renderer, scaleX, scaleY)
    ccall((:SDL_RenderGetScale, libSDL), Void, (Ptr{SDL_Renderer}, Ptr{Cfloat}, Ptr{Cfloat}), renderer, scaleX, scaleY)
end

function SDL_SetRenderDrawColor(renderer, r::Int, g::Int, b::Int, a::Int)
    ccall((:SDL_SetRenderDrawColor, libSDL), Cint, (Ptr{SDL_Renderer}, Uint8, Uint8, Uint8, Uint8), renderer, r, g, b, a)
end

function SDL_GetRenderDrawColor(renderer, r, g, b, a)
    ccall((:SDL_GetRenderDrawColor, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), renderer, r, g, b, a)
end

function SDL_SetRenderDrawBlendMode(renderer, blendMode::SDL_BlendMode)
    ccall((:SDL_SetRenderDrawBlendMode, libSDL), Cint, (Ptr{SDL_Renderer}, SDL_BlendMode), renderer, blendMode)
end

function SDL_GetRenderDrawBlendMode(renderer, blendMode)
    ccall((:SDL_GetRenderDrawBlendMode, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_BlendMode}), renderer, blendMode)
end

function SDL_RenderClear(renderer)
    ccall((:SDL_RenderClear, libSDL), Cint, (Ptr{SDL_Renderer},), renderer)
end

function SDL_RenderDrawPoint(renderer, x::Cint, y::Cint)
    ccall((:SDL_RenderDrawPoint, libSDL), Cint, (Ptr{SDL_Renderer}, Cint, Cint), renderer, x, y)
end

function SDL_RenderDrawPoints(renderer, points, count::Cint)
    ccall((:SDL_RenderDrawPoints, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Point}, Cint), renderer, points, count)
end

function SDL_RenderDrawLine(renderer, x1, y1, x2, y2)
    ccall((:SDL_RenderDrawLine, libSDL), Cint, (Ptr{SDL_Renderer}, Cint, Cint, Cint, Cint), renderer, x1, y1, x2, y2)
end

function SDL_RenderDrawLines(renderer, points, count::Cint)
    ccall((:SDL_RenderDrawLines, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Point}, Cint), renderer, points, count)
end

function SDL_RenderDrawRect(renderer, rect)
    ccall((:SDL_RenderDrawRect, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderDrawRects(renderer, rects, count::Cint)
    ccall((:SDL_RenderDrawRects, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}, Cint), renderer, rects, count)
end

function SDL_RenderFillRect(renderer, rect)
    ccall((:SDL_RenderFillRect, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function SDL_RenderFillRects(renderer, rects, count::Cint)
    ccall((:SDL_RenderFillRects, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}, Cint), renderer, rects, count)
end

function SDL_RenderCopy(renderer, texture, srcrect, dstrect)
    ccall((:SDL_RenderCopy, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{SDL_Rect}), renderer, texture, srcrect, dstrect)
end

function SDL_RenderCopyEx(renderer, texture, srcrect, dstrect, angle::Cdouble, center, flip::SDL_RendererFlip)
    ccall((:SDL_RenderCopyEx, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{SDL_Rect}, Cdouble, Ptr{SDL_Point}, SDL_RendererFlip), renderer, texture, srcrect, dstrect, angle, center, flip)
end

function SDL_RenderReadPixels(renderer, rect, format::Uint32, pixels, pitch::Cint)
    ccall((:SDL_RenderReadPixels, libSDL), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}, Uint32, Ptr{Void}, Cint), renderer, rect, format, pixels, pitch)
end

function SDL_RenderPresent(renderer)
    ccall((:SDL_RenderPresent, libSDL), Void, (Ptr{SDL_Renderer},), renderer)
end

function SDL_DestroyTexture(texture)
    ccall((:SDL_DestroyTexture, libSDL), Void, (Ptr{SDL_Texture},), texture)
end

function SDL_DestroyRenderer(renderer)
    ccall((:SDL_DestroyRenderer, libSDL), Void, (Ptr{SDL_Renderer},), renderer)
end

function SDL_GL_BindTexture(texture, texw, texh)
    ccall((:SDL_GL_BindTexture, libSDL), Cint, (Ptr{SDL_Texture}, Ptr{Cfloat}, Ptr{Cfloat}), texture, texw, texh)
end

function SDL_GL_UnbindTexture(texture)
    ccall((:SDL_GL_UnbindTexture, libSDL), Cint, (Ptr{SDL_Texture},), texture)
end

function SDL_GetTicks()
    ccall((:SDL_GetTicks, libSDL), Uint32, ())
end

function SDL_GetPerformanceCounter()
    ccall((:SDL_GetPerformanceCounter, libSDL), Uint64, ())
end

function SDL_GetPerformanceFrequency()
    ccall((:SDL_GetPerformanceFrequency, libSDL), Uint64, ())
end

function SDL_Delay(ms::Uint32)
    ccall((:SDL_Delay, libSDL), Void, (Uint32,), ms)
end

function SDL_AddTimer(interval::Uint32, callback::SDL_TimerCallback, param)
    ccall((:SDL_AddTimer, libSDL), SDL_TimerID, (Uint32, SDL_TimerCallback, Ptr{Void}), interval, callback, param)
end

function SDL_RemoveTimer(id::SDL_TimerID)
    ccall((:SDL_RemoveTimer, libSDL), SDL_bool, (SDL_TimerID,), id)
end

function SDL_GetVersion(ver)
    ccall((:SDL_GetVersion, libSDL), Void, (Ptr{SDL_version},), ver)
end

function SDL_GetRevision()
    ccall((:SDL_GetRevision, libSDL), Cstring, ())
end

function SDL_GetRevisionNumber()
    ccall((:SDL_GetRevisionNumber, libSDL), Cint, ())
end

function SDL_Init(flags::Uint32)
    ccall((:SDL_Init, libSDL), Cint, (Uint32,), flags)
end

function SDL_InitSubSystem(flags::Uint32)
    ccall((:SDL_InitSubSystem, libSDL), Cint, (Uint32,), flags)
end

function SDL_QuitSubSystem(flags::Uint32)
    ccall((:SDL_QuitSubSystem, libSDL), Void, (Uint32,), flags)
end

function SDL_WasInit(flags::Uint32)
    ccall((:SDL_WasInit, libSDL), Uint32, (Uint32,), flags)
end

function SDL_Quit()
    ccall((:SDL_Quit, libSDL), Void, ())
end
