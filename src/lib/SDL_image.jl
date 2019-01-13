# Julia wrapper for header: /Users/bieler/Desktop/tmp/SDL2-2.0.8/include/libSDL2_image.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function GetPlatform()
    ccall((:SDL_GetPlatform, libSDL2_image), Cstring, ())
end

function malloc(size::Csize_t)
    ccall((:SDL_malloc, libSDL2_image), Ptr{Void}, (Csize_t,), size)
end

function calloc(nmemb::Csize_t, size::Csize_t)
    ccall((:SDL_calloc, libSDL2_image), Ptr{Void}, (Csize_t, Csize_t), nmemb, size)
end

function realloc(mem, size::Csize_t)
    ccall((:SDL_realloc, libSDL2_image), Ptr{Void}, (Ptr{Void}, Csize_t), mem, size)
end

function free(mem)
    ccall((:SDL_free, libSDL2_image), Void, (Ptr{Void},), mem)
end

function GetMemoryFunctions(malloc_func, calloc_func, realloc_func, free_func)
    ccall((:SDL_GetMemoryFunctions, libSDL2_image), Void, (Ptr{SDL_malloc_func}, Ptr{SDL_calloc_func}, Ptr{SDL_realloc_func}, Ptr{SDL_free_func}), malloc_func, calloc_func, realloc_func, free_func)
end

function SetMemoryFunctions(malloc_func::SDL_malloc_func, calloc_func::SDL_calloc_func, realloc_func::SDL_realloc_func, free_func::SDL_free_func)
    ccall((:SDL_SetMemoryFunctions, libSDL2_image), Cint, (SDL_malloc_func, SDL_calloc_func, SDL_realloc_func, SDL_free_func), malloc_func, calloc_func, realloc_func, free_func)
end

function GetNumAllocations()
    ccall((:SDL_GetNumAllocations, libSDL2_image), Cint, ())
end

function getenv(name)
    ccall((:SDL_getenv, libSDL2_image), Cstring, (Cstring,), name)
end

function setenv(name, value, overwrite::Cint)
    ccall((:SDL_setenv, libSDL2_image), Cint, (Cstring, Cstring, Cint), name, value, overwrite)
end

function qsort(base, nmemb::Csize_t, size::Csize_t, compare)
    ccall((:SDL_qsort, libSDL2_image), Void, (Ptr{Void}, Csize_t, Csize_t, Ptr{Void}), base, nmemb, size, compare)
end

function abs(x::Cint)
    ccall((:SDL_abs, libSDL2_image), Cint, (Cint,), x)
end

function isdigit(x::Cint)
    ccall((:SDL_isdigit, libSDL2_image), Cint, (Cint,), x)
end

function isspace(x::Cint)
    ccall((:SDL_isspace, libSDL2_image), Cint, (Cint,), x)
end

function toupper(x::Cint)
    ccall((:SDL_toupper, libSDL2_image), Cint, (Cint,), x)
end

function tolower(x::Cint)
    ccall((:SDL_tolower, libSDL2_image), Cint, (Cint,), x)
end

function memset(dst, c::Cint, len::Csize_t)
    ccall((:SDL_memset, libSDL2_image), Ptr{Void}, (Ptr{Void}, Cint, Csize_t), dst, c, len)
end

function memset4(dst, val::Uint32, dwords::Csize_t)
    ccall((:SDL_memset4, libSDL2_image), Void, (Ptr{Void}, Uint32, Csize_t), dst, val, dwords)
end

function memcpy(dst, src, len::Csize_t)
    ccall((:SDL_memcpy, libSDL2_image), Ptr{Void}, (Ptr{Void}, Ptr{Void}, Csize_t), dst, src, len)
end

function memmove(dst, src, len::Csize_t)
    ccall((:SDL_memmove, libSDL2_image), Ptr{Void}, (Ptr{Void}, Ptr{Void}, Csize_t), dst, src, len)
end

function memcmp(s1, s2, len::Csize_t)
    ccall((:SDL_memcmp, libSDL2_image), Cint, (Ptr{Void}, Ptr{Void}, Csize_t), s1, s2, len)
end

function wcslen(wstr)
    ccall((:SDL_wcslen, libSDL2_image), Csize_t, (Ptr{wchar_t},), wstr)
end

function wcslcpy(dst, src, maxlen::Csize_t)
    ccall((:SDL_wcslcpy, libSDL2_image), Csize_t, (Ptr{wchar_t}, Ptr{wchar_t}, Csize_t), dst, src, maxlen)
end

function wcslcat(dst, src, maxlen::Csize_t)
    ccall((:SDL_wcslcat, libSDL2_image), Csize_t, (Ptr{wchar_t}, Ptr{wchar_t}, Csize_t), dst, src, maxlen)
end

function wcscmp(str1, str2)
    ccall((:SDL_wcscmp, libSDL2_image), Cint, (Ptr{wchar_t}, Ptr{wchar_t}), str1, str2)
end

function strlen(str)
    ccall((:SDL_strlen, libSDL2_image), Csize_t, (Cstring,), str)
end

function strlcpy(dst, src, maxlen::Csize_t)
    ccall((:SDL_strlcpy, libSDL2_image), Csize_t, (Cstring, Cstring, Csize_t), dst, src, maxlen)
end

function utf8strlcpy(dst, src, dst_bytes::Csize_t)
    ccall((:SDL_utf8strlcpy, libSDL2_image), Csize_t, (Cstring, Cstring, Csize_t), dst, src, dst_bytes)
end

function strlcat(dst, src, maxlen::Csize_t)
    ccall((:SDL_strlcat, libSDL2_image), Csize_t, (Cstring, Cstring, Csize_t), dst, src, maxlen)
end

function strdup(str)
    ccall((:SDL_strdup, libSDL2_image), Cstring, (Cstring,), str)
end

function strrev(str)
    ccall((:SDL_strrev, libSDL2_image), Cstring, (Cstring,), str)
end

function strupr(str)
    ccall((:SDL_strupr, libSDL2_image), Cstring, (Cstring,), str)
end

function strlwr(str)
    ccall((:SDL_strlwr, libSDL2_image), Cstring, (Cstring,), str)
end

function strchr(str, c::Cint)
    ccall((:SDL_strchr, libSDL2_image), Cstring, (Cstring, Cint), str, c)
end

function strrchr(str, c::Cint)
    ccall((:SDL_strrchr, libSDL2_image), Cstring, (Cstring, Cint), str, c)
end

function strstr(haystack, needle)
    ccall((:SDL_strstr, libSDL2_image), Cstring, (Cstring, Cstring), haystack, needle)
end

function utf8strlen(str)
    ccall((:SDL_utf8strlen, libSDL2_image), Csize_t, (Cstring,), str)
end

function itoa(value::Cint, str, radix::Cint)
    ccall((:SDL_itoa, libSDL2_image), Cstring, (Cint, Cstring, Cint), value, str, radix)
end

function uitoa(value::UInt32, str, radix::Cint)
    ccall((:SDL_uitoa, libSDL2_image), Cstring, (UInt32, Cstring, Cint), value, str, radix)
end

function ltoa(value::Clong, str, radix::Cint)
    ccall((:SDL_ltoa, libSDL2_image), Cstring, (Clong, Cstring, Cint), value, str, radix)
end

function ultoa(value::Culong, str, radix::Cint)
    ccall((:SDL_ultoa, libSDL2_image), Cstring, (Culong, Cstring, Cint), value, str, radix)
end

function lltoa(value::Sint64, str, radix::Cint)
    ccall((:SDL_lltoa, libSDL2_image), Cstring, (Sint64, Cstring, Cint), value, str, radix)
end

function ulltoa(value::Uint64, str, radix::Cint)
    ccall((:SDL_ulltoa, libSDL2_image), Cstring, (Uint64, Cstring, Cint), value, str, radix)
end

function atoi(str)
    ccall((:SDL_atoi, libSDL2_image), Cint, (Cstring,), str)
end

function atof(str)
    ccall((:SDL_atof, libSDL2_image), Cdouble, (Cstring,), str)
end

function strtol(str, endp, base::Cint)
    ccall((:SDL_strtol, libSDL2_image), Clong, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtoul(str, endp, base::Cint)
    ccall((:SDL_strtoul, libSDL2_image), Culong, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtoll(str, endp, base::Cint)
    ccall((:SDL_strtoll, libSDL2_image), Sint64, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtoull(str, endp, base::Cint)
    ccall((:SDL_strtoull, libSDL2_image), Uint64, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtod(str, endp)
    ccall((:SDL_strtod, libSDL2_image), Cdouble, (Cstring, Ptr{Cstring}), str, endp)
end

function strcmp(str1, str2)
    ccall((:SDL_strcmp, libSDL2_image), Cint, (Cstring, Cstring), str1, str2)
end

function strncmp(str1, str2, maxlen::Csize_t)
    ccall((:SDL_strncmp, libSDL2_image), Cint, (Cstring, Cstring, Csize_t), str1, str2, maxlen)
end

function strcasecmp(str1, str2)
    ccall((:SDL_strcasecmp, libSDL2_image), Cint, (Cstring, Cstring), str1, str2)
end

function strncasecmp(str1, str2, len::Csize_t)
    ccall((:SDL_strncasecmp, libSDL2_image), Cint, (Cstring, Cstring, Csize_t), str1, str2, len)
end

function vsscanf(text, fmt, ap::va_list)
    ccall((:SDL_vsscanf, libSDL2_image), Cint, (Cstring, Cstring, va_list), text, fmt, ap)
end

function vsnprintf(text, maxlen::Csize_t, fmt, ap::va_list)
    ccall((:SDL_vsnprintf, libSDL2_image), Cint, (Cstring, Csize_t, Cstring, va_list), text, maxlen, fmt, ap)
end

function acos(x::Cdouble)
    ccall((:SDL_acos, libSDL2_image), Cdouble, (Cdouble,), x)
end

function acosf(x::Cfloat)
    ccall((:SDL_acosf, libSDL2_image), Cfloat, (Cfloat,), x)
end

function asin(x::Cdouble)
    ccall((:SDL_asin, libSDL2_image), Cdouble, (Cdouble,), x)
end

function asinf(x::Cfloat)
    ccall((:SDL_asinf, libSDL2_image), Cfloat, (Cfloat,), x)
end

function atan(x::Cdouble)
    ccall((:SDL_atan, libSDL2_image), Cdouble, (Cdouble,), x)
end

function atanf(x::Cfloat)
    ccall((:SDL_atanf, libSDL2_image), Cfloat, (Cfloat,), x)
end

function atan2(x::Cdouble, y::Cdouble)
    ccall((:SDL_atan2, libSDL2_image), Cdouble, (Cdouble, Cdouble), x, y)
end

function atan2f(x::Cfloat, y::Cfloat)
    ccall((:SDL_atan2f, libSDL2_image), Cfloat, (Cfloat, Cfloat), x, y)
end

function ceil(x::Cdouble)
    ccall((:SDL_ceil, libSDL2_image), Cdouble, (Cdouble,), x)
end

function ceilf(x::Cfloat)
    ccall((:SDL_ceilf, libSDL2_image), Cfloat, (Cfloat,), x)
end

function copysign(x::Cdouble, y::Cdouble)
    ccall((:SDL_copysign, libSDL2_image), Cdouble, (Cdouble, Cdouble), x, y)
end

function copysignf(x::Cfloat, y::Cfloat)
    ccall((:SDL_copysignf, libSDL2_image), Cfloat, (Cfloat, Cfloat), x, y)
end

function cos(x::Cdouble)
    ccall((:SDL_cos, libSDL2_image), Cdouble, (Cdouble,), x)
end

function cosf(x::Cfloat)
    ccall((:SDL_cosf, libSDL2_image), Cfloat, (Cfloat,), x)
end

function fabs(x::Cdouble)
    ccall((:SDL_fabs, libSDL2_image), Cdouble, (Cdouble,), x)
end

function fabsf(x::Cfloat)
    ccall((:SDL_fabsf, libSDL2_image), Cfloat, (Cfloat,), x)
end

function floor(x::Cdouble)
    ccall((:SDL_floor, libSDL2_image), Cdouble, (Cdouble,), x)
end

function floorf(x::Cfloat)
    ccall((:SDL_floorf, libSDL2_image), Cfloat, (Cfloat,), x)
end

function fmod(x::Cdouble, y::Cdouble)
    ccall((:SDL_fmod, libSDL2_image), Cdouble, (Cdouble, Cdouble), x, y)
end

function fmodf(x::Cfloat, y::Cfloat)
    ccall((:SDL_fmodf, libSDL2_image), Cfloat, (Cfloat, Cfloat), x, y)
end

function log(x::Cdouble)
    ccall((:SDL_log, libSDL2_image), Cdouble, (Cdouble,), x)
end

function logf(x::Cfloat)
    ccall((:SDL_logf, libSDL2_image), Cfloat, (Cfloat,), x)
end

function log10(x::Cdouble)
    ccall((:SDL_log10, libSDL2_image), Cdouble, (Cdouble,), x)
end

function log10f(x::Cfloat)
    ccall((:SDL_log10f, libSDL2_image), Cfloat, (Cfloat,), x)
end

function pow(x::Cdouble, y::Cdouble)
    ccall((:SDL_pow, libSDL2_image), Cdouble, (Cdouble, Cdouble), x, y)
end

function powf(x::Cfloat, y::Cfloat)
    ccall((:SDL_powf, libSDL2_image), Cfloat, (Cfloat, Cfloat), x, y)
end

function scalbn(x::Cdouble, n::Cint)
    ccall((:SDL_scalbn, libSDL2_image), Cdouble, (Cdouble, Cint), x, n)
end

function scalbnf(x::Cfloat, n::Cint)
    ccall((:SDL_scalbnf, libSDL2_image), Cfloat, (Cfloat, Cint), x, n)
end

function sin(x::Cdouble)
    ccall((:SDL_sin, libSDL2_image), Cdouble, (Cdouble,), x)
end

function sinf(x::Cfloat)
    ccall((:SDL_sinf, libSDL2_image), Cfloat, (Cfloat,), x)
end

function sqrt(x::Cdouble)
    ccall((:SDL_sqrt, libSDL2_image), Cdouble, (Cdouble,), x)
end

function sqrtf(x::Cfloat)
    ccall((:SDL_sqrtf, libSDL2_image), Cfloat, (Cfloat,), x)
end

function tan(x::Cdouble)
    ccall((:SDL_tan, libSDL2_image), Cdouble, (Cdouble,), x)
end

function tanf(x::Cfloat)
    ccall((:SDL_tanf, libSDL2_image), Cfloat, (Cfloat,), x)
end

function iconv_open(tocode, fromcode)
    ccall((:SDL_iconv_open, libSDL2_image), SDL_iconv_t, (Cstring, Cstring), tocode, fromcode)
end

function iconv_close(cd::SDL_iconv_t)
    ccall((:SDL_iconv_close, libSDL2_image), Cint, (SDL_iconv_t,), cd)
end

function iconv(cd::SDL_iconv_t, inbuf, inbytesleft, outbuf, outbytesleft)
    ccall((:SDL_iconv, libSDL2_image), Csize_t, (SDL_iconv_t, Ptr{Cstring}, Ptr{Csize_t}, Ptr{Cstring}, Ptr{Csize_t}), cd, inbuf, inbytesleft, outbuf, outbytesleft)
end

function iconv_string(tocode, fromcode, inbuf, inbytesleft::Csize_t)
    ccall((:SDL_iconv_string, libSDL2_image), Cstring, (Cstring, Cstring, Cstring, Csize_t), tocode, fromcode, inbuf, inbytesleft)
end

function memcpy4(dst, src, dwords::Csize_t)
    ccall((:SDL_memcpy4, libSDL2_image), Ptr{Void}, (Ptr{Void}, Ptr{Void}, Csize_t), dst, src, dwords)
end

function main(argc::Cint, argv)
    ccall((:SDL_main, libSDL2_image), Cint, (Cint, Ptr{Cstring}), argc, argv)
end

function SetMainReady()
    ccall((:SDL_SetMainReady, libSDL2_image), Void, ())
end

function ReportAssertion(arg1, arg2, arg3, arg4::Cint)
    ccall((:SDL_ReportAssertion, libSDL2_image), SDL_AssertState, (Ptr{SDL_AssertData}, Cstring, Cstring, Cint), arg1, arg2, arg3, arg4)
end

function SetAssertionHandler(handler::SDL_AssertionHandler, userdata)
    ccall((:SDL_SetAssertionHandler, libSDL2_image), Void, (SDL_AssertionHandler, Ptr{Void}), handler, userdata)
end

function GetDefaultAssertionHandler()
    ccall((:SDL_GetDefaultAssertionHandler, libSDL2_image), SDL_AssertionHandler, ())
end

function GetAssertionHandler(puserdata)
    ccall((:SDL_GetAssertionHandler, libSDL2_image), SDL_AssertionHandler, (Ptr{Ptr{Void}},), puserdata)
end

function GetAssertionReport()
    ccall((:SDL_GetAssertionReport, libSDL2_image), Ptr{SDL_AssertData}, ())
end

function ResetAssertionReport()
    ccall((:SDL_ResetAssertionReport, libSDL2_image), Void, ())
end

function AtomicTryLock(lock)
    ccall((:SDL_AtomicTryLock, libSDL2_image), SDL_bool, (Ptr{SDL_SpinLock},), lock)
end

function AtomicLock(lock)
    ccall((:SDL_AtomicLock, libSDL2_image), Void, (Ptr{SDL_SpinLock},), lock)
end

function AtomicUnlock(lock)
    ccall((:SDL_AtomicUnlock, libSDL2_image), Void, (Ptr{SDL_SpinLock},), lock)
end

function MemoryBarrierReleaseFunction()
    ccall((:SDL_MemoryBarrierReleaseFunction, libSDL2_image), Void, ())
end

function MemoryBarrierAcquireFunction()
    ccall((:SDL_MemoryBarrierAcquireFunction, libSDL2_image), Void, ())
end

function AtomicCAS(a, oldval::Cint, newval::Cint)
    ccall((:SDL_AtomicCAS, libSDL2_image), SDL_bool, (Ptr{SDL_atomic_t}, Cint, Cint), a, oldval, newval)
end

function AtomicSet(a, v::Cint)
    ccall((:SDL_AtomicSet, libSDL2_image), Cint, (Ptr{SDL_atomic_t}, Cint), a, v)
end

function AtomicGet(a)
    ccall((:SDL_AtomicGet, libSDL2_image), Cint, (Ptr{SDL_atomic_t},), a)
end

function AtomicAdd(a, v::Cint)
    ccall((:SDL_AtomicAdd, libSDL2_image), Cint, (Ptr{SDL_atomic_t}, Cint), a, v)
end

function AtomicCASPtr(a, oldval, newval)
    ccall((:SDL_AtomicCASPtr, libSDL2_image), SDL_bool, (Ptr{Ptr{Void}}, Ptr{Void}, Ptr{Void}), a, oldval, newval)
end

function AtomicSetPtr(a, v)
    ccall((:SDL_AtomicSetPtr, libSDL2_image), Ptr{Void}, (Ptr{Ptr{Void}}, Ptr{Void}), a, v)
end

function AtomicGetPtr(a)
    ccall((:SDL_AtomicGetPtr, libSDL2_image), Ptr{Void}, (Ptr{Ptr{Void}},), a)
end

function GetError()
    ccall((:SDL_GetError, libSDL2_image), Cstring, ())
end

function ClearError()
    ccall((:SDL_ClearError, libSDL2_image), Void, ())
end

function Error(code::SDL_errorcode)
    ccall((:SDL_Error, libSDL2_image), Cint, (SDL_errorcode,), code)
end

function Swap16(x::Uint16)
    ccall((:SDL_Swap16, libSDL2_image), Uint16, (Uint16,), x)
end

function Swap32(x::Uint32)
    ccall((:SDL_Swap32, libSDL2_image), Uint32, (Uint32,), x)
end

function Swap64(x::Uint64)
    ccall((:SDL_Swap64, libSDL2_image), Uint64, (Uint64,), x)
end

function SwapFloat(x::Cfloat)
    ccall((:SDL_SwapFloat, libSDL2_image), Cfloat, (Cfloat,), x)
end

function CreateMutex()
    ccall((:SDL_CreateMutex, libSDL2_image), Ptr{SDL_mutex}, ())
end

function LockMutex(mutex)
    ccall((:SDL_LockMutex, libSDL2_image), Cint, (Ptr{SDL_mutex},), mutex)
end

function TryLockMutex(mutex)
    ccall((:SDL_TryLockMutex, libSDL2_image), Cint, (Ptr{SDL_mutex},), mutex)
end

function UnlockMutex(mutex)
    ccall((:SDL_UnlockMutex, libSDL2_image), Cint, (Ptr{SDL_mutex},), mutex)
end

function DestroyMutex(mutex)
    ccall((:SDL_DestroyMutex, libSDL2_image), Void, (Ptr{SDL_mutex},), mutex)
end

function CreateSemaphore(initial_value::Uint32)
    ccall((:SDL_CreateSemaphore, libSDL2_image), Ptr{SDL_sem}, (Uint32,), initial_value)
end

function DestroySemaphore(sem)
    ccall((:SDL_DestroySemaphore, libSDL2_image), Void, (Ptr{SDL_sem},), sem)
end

function SemWait(sem)
    ccall((:SDL_SemWait, libSDL2_image), Cint, (Ptr{SDL_sem},), sem)
end

function SemTryWait(sem)
    ccall((:SDL_SemTryWait, libSDL2_image), Cint, (Ptr{SDL_sem},), sem)
end

function SemWaitTimeout(sem, ms::Uint32)
    ccall((:SDL_SemWaitTimeout, libSDL2_image), Cint, (Ptr{SDL_sem}, Uint32), sem, ms)
end

function SemPost(sem)
    ccall((:SDL_SemPost, libSDL2_image), Cint, (Ptr{SDL_sem},), sem)
end

function SemValue(sem)
    ccall((:SDL_SemValue, libSDL2_image), Uint32, (Ptr{SDL_sem},), sem)
end

function CreateCond()
    ccall((:SDL_CreateCond, libSDL2_image), Ptr{SDL_cond}, ())
end

function DestroyCond(cond)
    ccall((:SDL_DestroyCond, libSDL2_image), Void, (Ptr{SDL_cond},), cond)
end

function CondSignal(cond)
    ccall((:SDL_CondSignal, libSDL2_image), Cint, (Ptr{SDL_cond},), cond)
end

function CondBroadcast(cond)
    ccall((:SDL_CondBroadcast, libSDL2_image), Cint, (Ptr{SDL_cond},), cond)
end

function CondWait(cond, mutex)
    ccall((:SDL_CondWait, libSDL2_image), Cint, (Ptr{SDL_cond}, Ptr{SDL_mutex}), cond, mutex)
end

function CondWaitTimeout(cond, mutex, ms::Uint32)
    ccall((:SDL_CondWaitTimeout, libSDL2_image), Cint, (Ptr{SDL_cond}, Ptr{SDL_mutex}, Uint32), cond, mutex, ms)
end

function CreateThread(fn::SDL_ThreadFunction, name, data)
    ccall((:SDL_CreateThread, libSDL2_image), Ptr{SDL_Thread}, (SDL_ThreadFunction, Cstring, Ptr{Void}), fn, name, data)
end

function GetThreadName(thread)
    ccall((:SDL_GetThreadName, libSDL2_image), Cstring, (Ptr{SDL_Thread},), thread)
end

function ThreadID()
    ccall((:SDL_ThreadID, libSDL2_image), SDL_threadID, ())
end

function GetThreadID(thread)
    ccall((:SDL_GetThreadID, libSDL2_image), SDL_threadID, (Ptr{SDL_Thread},), thread)
end

function SetThreadPriority(priority::SDL_ThreadPriority)
    ccall((:SDL_SetThreadPriority, libSDL2_image), Cint, (SDL_ThreadPriority,), priority)
end

function WaitThread(thread, status)
    ccall((:SDL_WaitThread, libSDL2_image), Void, (Ptr{SDL_Thread}, Ptr{Cint}), thread, status)
end

function DetachThread(thread)
    ccall((:SDL_DetachThread, libSDL2_image), Void, (Ptr{SDL_Thread},), thread)
end

function TLSCreate()
    ccall((:SDL_TLSCreate, libSDL2_image), SDL_TLSID, ())
end

function TLSGet(id::SDL_TLSID)
    ccall((:SDL_TLSGet, libSDL2_image), Ptr{Void}, (SDL_TLSID,), id)
end

function TLSSet(id::SDL_TLSID, value, destructor)
    ccall((:SDL_TLSSet, libSDL2_image), Cint, (SDL_TLSID, Ptr{Void}, Ptr{Void}), id, value, destructor)
end

function RWFromFile(file, mode)
    ccall((:SDL_RWFromFile, libSDL2_image), Ptr{SDL_RWops}, (Cstring, Cstring), file, mode)
end

function RWFromFP(fp, autoclose::SDL_bool)
    ccall((:SDL_RWFromFP, libSDL2_image), Ptr{SDL_RWops}, (Ptr{Cint}, SDL_bool), fp, autoclose)
end

function RWFromMem(mem, size::Cint)
    ccall((:SDL_RWFromMem, libSDL2_image), Ptr{SDL_RWops}, (Ptr{Void}, Cint), mem, size)
end

function RWFromConstMem(mem, size::Cint)
    ccall((:SDL_RWFromConstMem, libSDL2_image), Ptr{SDL_RWops}, (Ptr{Void}, Cint), mem, size)
end

function AllocRW()
    ccall((:SDL_AllocRW, libSDL2_image), Ptr{SDL_RWops}, ())
end

function FreeRW(area)
    ccall((:SDL_FreeRW, libSDL2_image), Void, (Ptr{SDL_RWops},), area)
end

function LoadFile_RW(src, datasize, freesrc::Cint)
    ccall((:SDL_LoadFile_RW, libSDL2_image), Ptr{Void}, (Ptr{SDL_RWops}, Ptr{Csize_t}, Cint), src, datasize, freesrc)
end

function ReadU8(src)
    ccall((:SDL_ReadU8, libSDL2_image), Uint8, (Ptr{SDL_RWops},), src)
end

function ReadLE16(src)
    ccall((:SDL_ReadLE16, libSDL2_image), Uint16, (Ptr{SDL_RWops},), src)
end

function ReadBE16(src)
    ccall((:SDL_ReadBE16, libSDL2_image), Uint16, (Ptr{SDL_RWops},), src)
end

function ReadLE32(src)
    ccall((:SDL_ReadLE32, libSDL2_image), Uint32, (Ptr{SDL_RWops},), src)
end

function ReadBE32(src)
    ccall((:SDL_ReadBE32, libSDL2_image), Uint32, (Ptr{SDL_RWops},), src)
end

function ReadLE64(src)
    ccall((:SDL_ReadLE64, libSDL2_image), Uint64, (Ptr{SDL_RWops},), src)
end

function ReadBE64(src)
    ccall((:SDL_ReadBE64, libSDL2_image), Uint64, (Ptr{SDL_RWops},), src)
end

function WriteU8(dst, value::Uint8)
    ccall((:SDL_WriteU8, libSDL2_image), Csize_t, (Ptr{SDL_RWops}, Uint8), dst, value)
end

function WriteLE16(dst, value::Uint16)
    ccall((:SDL_WriteLE16, libSDL2_image), Csize_t, (Ptr{SDL_RWops}, Uint16), dst, value)
end

function WriteBE16(dst, value::Uint16)
    ccall((:SDL_WriteBE16, libSDL2_image), Csize_t, (Ptr{SDL_RWops}, Uint16), dst, value)
end

function WriteLE32(dst, value::Uint32)
    ccall((:SDL_WriteLE32, libSDL2_image), Csize_t, (Ptr{SDL_RWops}, Uint32), dst, value)
end

function WriteBE32(dst, value::Uint32)
    ccall((:SDL_WriteBE32, libSDL2_image), Csize_t, (Ptr{SDL_RWops}, Uint32), dst, value)
end

function WriteLE64(dst, value::Uint64)
    ccall((:SDL_WriteLE64, libSDL2_image), Csize_t, (Ptr{SDL_RWops}, Uint64), dst, value)
end

function WriteBE64(dst, value::Uint64)
    ccall((:SDL_WriteBE64, libSDL2_image), Csize_t, (Ptr{SDL_RWops}, Uint64), dst, value)
end

function GetNumAudioDrivers()
    ccall((:SDL_GetNumAudioDrivers, libSDL2_image), Cint, ())
end

function GetAudioDriver(index::Cint)
    ccall((:SDL_GetAudioDriver, libSDL2_image), Cstring, (Cint,), index)
end

function AudioInit(driver_name)
    ccall((:SDL_AudioInit, libSDL2_image), Cint, (Cstring,), driver_name)
end

function AudioQuit()
    ccall((:SDL_AudioQuit, libSDL2_image), Void, ())
end

function GetCurrentAudioDriver()
    ccall((:SDL_GetCurrentAudioDriver, libSDL2_image), Cstring, ())
end

function OpenAudio(desired, obtained)
    ccall((:SDL_OpenAudio, libSDL2_image), Cint, (Ptr{SDL_AudioSpec}, Ptr{SDL_AudioSpec}), desired, obtained)
end

function GetNumAudioDevices(iscapture::Cint)
    ccall((:SDL_GetNumAudioDevices, libSDL2_image), Cint, (Cint,), iscapture)
end

function GetAudioDeviceName(index::Cint, iscapture::Cint)
    ccall((:SDL_GetAudioDeviceName, libSDL2_image), Cstring, (Cint, Cint), index, iscapture)
end

function OpenAudioDevice(device, iscapture::Cint, desired, obtained, allowed_changes::Cint)
    ccall((:SDL_OpenAudioDevice, libSDL2_image), SDL_AudioDeviceID, (Cstring, Cint, Ptr{SDL_AudioSpec}, Ptr{SDL_AudioSpec}, Cint), device, iscapture, desired, obtained, allowed_changes)
end

function GetAudioStatus()
    ccall((:SDL_GetAudioStatus, libSDL2_image), SDL_AudioStatus, ())
end

function GetAudioDeviceStatus(dev::SDL_AudioDeviceID)
    ccall((:SDL_GetAudioDeviceStatus, libSDL2_image), SDL_AudioStatus, (SDL_AudioDeviceID,), dev)
end

function PauseAudio(pause_on::Cint)
    ccall((:SDL_PauseAudio, libSDL2_image), Void, (Cint,), pause_on)
end

function PauseAudioDevice(dev::SDL_AudioDeviceID, pause_on::Cint)
    ccall((:SDL_PauseAudioDevice, libSDL2_image), Void, (SDL_AudioDeviceID, Cint), dev, pause_on)
end

function LoadWAV_RW(src, freesrc::Cint, spec, audio_buf, audio_len)
    ccall((:SDL_LoadWAV_RW, libSDL2_image), Ptr{SDL_AudioSpec}, (Ptr{SDL_RWops}, Cint, Ptr{SDL_AudioSpec}, Ptr{Ptr{Uint8}}, Ptr{Uint32}), src, freesrc, spec, audio_buf, audio_len)
end

function FreeWAV(audio_buf)
    ccall((:SDL_FreeWAV, libSDL2_image), Void, (Ptr{Uint8},), audio_buf)
end

function BuildAudioCVT(cvt, src_format::SDL_AudioFormat, src_channels::Uint8, src_rate::Cint, dst_format::SDL_AudioFormat, dst_channels::Uint8, dst_rate::Cint)
    ccall((:SDL_BuildAudioCVT, libSDL2_image), Cint, (Ptr{SDL_AudioCVT}, SDL_AudioFormat, Uint8, Cint, SDL_AudioFormat, Uint8, Cint), cvt, src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate)
end

function ConvertAudio(cvt)
    ccall((:SDL_ConvertAudio, libSDL2_image), Cint, (Ptr{SDL_AudioCVT},), cvt)
end

function NewAudioStream(src_format::SDL_AudioFormat, src_channels::Uint8, src_rate::Cint, dst_format::SDL_AudioFormat, dst_channels::Uint8, dst_rate::Cint)
    ccall((:SDL_NewAudioStream, libSDL2_image), Ptr{SDL_AudioStream}, (SDL_AudioFormat, Uint8, Cint, SDL_AudioFormat, Uint8, Cint), src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate)
end

function AudioStreamPut(stream, buf, len::Cint)
    ccall((:SDL_AudioStreamPut, libSDL2_image), Cint, (Ptr{SDL_AudioStream}, Ptr{Void}, Cint), stream, buf, len)
end

function AudioStreamGet(stream, buf, len::Cint)
    ccall((:SDL_AudioStreamGet, libSDL2_image), Cint, (Ptr{SDL_AudioStream}, Ptr{Void}, Cint), stream, buf, len)
end

function AudioStreamAvailable(stream)
    ccall((:SDL_AudioStreamAvailable, libSDL2_image), Cint, (Ptr{SDL_AudioStream},), stream)
end

function AudioStreamFlush(stream)
    ccall((:SDL_AudioStreamFlush, libSDL2_image), Cint, (Ptr{SDL_AudioStream},), stream)
end

function AudioStreamClear(stream)
    ccall((:SDL_AudioStreamClear, libSDL2_image), Void, (Ptr{SDL_AudioStream},), stream)
end

function FreeAudioStream(stream)
    ccall((:SDL_FreeAudioStream, libSDL2_image), Void, (Ptr{SDL_AudioStream},), stream)
end

function MixAudio(dst, src, len::Uint32, volume::Cint)
    ccall((:SDL_MixAudio, libSDL2_image), Void, (Ptr{Uint8}, Ptr{Uint8}, Uint32, Cint), dst, src, len, volume)
end

function MixAudioFormat(dst, src, format::SDL_AudioFormat, len::Uint32, volume::Cint)
    ccall((:SDL_MixAudioFormat, libSDL2_image), Void, (Ptr{Uint8}, Ptr{Uint8}, SDL_AudioFormat, Uint32, Cint), dst, src, format, len, volume)
end

function QueueAudio(dev::SDL_AudioDeviceID, data, len::Uint32)
    ccall((:SDL_QueueAudio, libSDL2_image), Cint, (SDL_AudioDeviceID, Ptr{Void}, Uint32), dev, data, len)
end

function DequeueAudio(dev::SDL_AudioDeviceID, data, len::Uint32)
    ccall((:SDL_DequeueAudio, libSDL2_image), Uint32, (SDL_AudioDeviceID, Ptr{Void}, Uint32), dev, data, len)
end

function GetQueuedAudioSize(dev::SDL_AudioDeviceID)
    ccall((:SDL_GetQueuedAudioSize, libSDL2_image), Uint32, (SDL_AudioDeviceID,), dev)
end

function ClearQueuedAudio(dev::SDL_AudioDeviceID)
    ccall((:SDL_ClearQueuedAudio, libSDL2_image), Void, (SDL_AudioDeviceID,), dev)
end

function LockAudio()
    ccall((:SDL_LockAudio, libSDL2_image), Void, ())
end

function LockAudioDevice(dev::SDL_AudioDeviceID)
    ccall((:SDL_LockAudioDevice, libSDL2_image), Void, (SDL_AudioDeviceID,), dev)
end

function UnlockAudio()
    ccall((:SDL_UnlockAudio, libSDL2_image), Void, ())
end

function UnlockAudioDevice(dev::SDL_AudioDeviceID)
    ccall((:SDL_UnlockAudioDevice, libSDL2_image), Void, (SDL_AudioDeviceID,), dev)
end

function CloseAudio()
    ccall((:SDL_CloseAudio, libSDL2_image), Void, ())
end

function CloseAudioDevice(dev::SDL_AudioDeviceID)
    ccall((:SDL_CloseAudioDevice, libSDL2_image), Void, (SDL_AudioDeviceID,), dev)
end

function SetClipboardText(text)
    ccall((:SDL_SetClipboardText, libSDL2_image), Cint, (Cstring,), text)
end

function GetClipboardText()
    ccall((:SDL_GetClipboardText, libSDL2_image), Cstring, ())
end

function HasClipboardText()
    ccall((:SDL_HasClipboardText, libSDL2_image), SDL_bool, ())
end

function _mm_empty()
    ccall((:_mm_empty, libSDL2_image), Void, ())
end

function _mm_cvtsi32_si64(__i::Cint)
    ccall((:_mm_cvtsi32_si64, libSDL2_image), __m64, (Cint,), __i)
end

function _mm_cvtsi64_si32(__m::__m64)
    ccall((:_mm_cvtsi64_si32, libSDL2_image), Cint, (__m64,), __m)
end

function _mm_cvtsi64_m64(__i::Clonglong)
    ccall((:_mm_cvtsi64_m64, libSDL2_image), __m64, (Clonglong,), __i)
end

function _mm_cvtm64_si64(__m::__m64)
    ccall((:_mm_cvtm64_si64, libSDL2_image), Clonglong, (__m64,), __m)
end

function _mm_packs_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_packs_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_packs_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_packs_pi32, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_packs_pu16(__m1::__m64, __m2::__m64)
    ccall((:_mm_packs_pu16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpackhi_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpackhi_pi8, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpackhi_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpackhi_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpackhi_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpackhi_pi32, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpacklo_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpacklo_pi8, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpacklo_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpacklo_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpacklo_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpacklo_pi32, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_add_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_add_pi8, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_add_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_add_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_add_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_add_pi32, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pi8, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pu8(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pu8, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pu16(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pu16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sub_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_sub_pi8, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sub_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_sub_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sub_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_sub_pi32, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pi8, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pu8(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pu8, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pu16(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pu16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_madd_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_madd_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_mulhi_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_mulhi_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_mullo_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_mullo_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sll_pi16(__m::__m64, __count::__m64)
    ccall((:_mm_sll_pi16, libSDL2_image), __m64, (__m64, __m64), __m, __count)
end

function _mm_slli_pi16(__m::__m64, __count::Cint)
    ccall((:_mm_slli_pi16, libSDL2_image), __m64, (__m64, Cint), __m, __count)
end

function _mm_sll_pi32(__m::__m64, __count::__m64)
    ccall((:_mm_sll_pi32, libSDL2_image), __m64, (__m64, __m64), __m, __count)
end

function _mm_slli_pi32(__m::__m64, __count::Cint)
    ccall((:_mm_slli_pi32, libSDL2_image), __m64, (__m64, Cint), __m, __count)
end

function _mm_sll_si64(__m::__m64, __count::__m64)
    ccall((:_mm_sll_si64, libSDL2_image), __m64, (__m64, __m64), __m, __count)
end

function _mm_slli_si64(__m::__m64, __count::Cint)
    ccall((:_mm_slli_si64, libSDL2_image), __m64, (__m64, Cint), __m, __count)
end

function _mm_sra_pi16(__m::__m64, __count::__m64)
    ccall((:_mm_sra_pi16, libSDL2_image), __m64, (__m64, __m64), __m, __count)
end

function _mm_srai_pi16(__m::__m64, __count::Cint)
    ccall((:_mm_srai_pi16, libSDL2_image), __m64, (__m64, Cint), __m, __count)
end

function _mm_sra_pi32(__m::__m64, __count::__m64)
    ccall((:_mm_sra_pi32, libSDL2_image), __m64, (__m64, __m64), __m, __count)
end

function _mm_srai_pi32(__m::__m64, __count::Cint)
    ccall((:_mm_srai_pi32, libSDL2_image), __m64, (__m64, Cint), __m, __count)
end

function _mm_srl_pi16(__m::__m64, __count::__m64)
    ccall((:_mm_srl_pi16, libSDL2_image), __m64, (__m64, __m64), __m, __count)
end

function _mm_srli_pi16(__m::__m64, __count::Cint)
    ccall((:_mm_srli_pi16, libSDL2_image), __m64, (__m64, Cint), __m, __count)
end

function _mm_srl_pi32(__m::__m64, __count::__m64)
    ccall((:_mm_srl_pi32, libSDL2_image), __m64, (__m64, __m64), __m, __count)
end

function _mm_srli_pi32(__m::__m64, __count::Cint)
    ccall((:_mm_srli_pi32, libSDL2_image), __m64, (__m64, Cint), __m, __count)
end

function _mm_srl_si64(__m::__m64, __count::__m64)
    ccall((:_mm_srl_si64, libSDL2_image), __m64, (__m64, __m64), __m, __count)
end

function _mm_srli_si64(__m::__m64, __count::Cint)
    ccall((:_mm_srli_si64, libSDL2_image), __m64, (__m64, Cint), __m, __count)
end

function _mm_and_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_and_si64, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_andnot_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_andnot_si64, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_or_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_or_si64, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_xor_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_xor_si64, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpeq_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpeq_pi8, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpeq_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpeq_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpeq_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpeq_pi32, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpgt_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpgt_pi8, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpgt_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpgt_pi16, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpgt_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpgt_pi32, libSDL2_image), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_setzero_si64()
    ccall((:_mm_setzero_si64, libSDL2_image), __m64, ())
end

function _mm_set_pi32(__i1::Cint, __i0::Cint)
    ccall((:_mm_set_pi32, libSDL2_image), __m64, (Cint, Cint), __i1, __i0)
end

function _mm_set_pi16(__s3::Int16, __s2::Int16, __s1::Int16, __s0::Int16)
    ccall((:_mm_set_pi16, libSDL2_image), __m64, (Int16, Int16, Int16, Int16), __s3, __s2, __s1, __s0)
end

function _mm_set_pi8(__b7::UInt8, __b6::UInt8, __b5::UInt8, __b4::UInt8, __b3::UInt8, __b2::UInt8, __b1::UInt8, __b0::UInt8)
    ccall((:_mm_set_pi8, libSDL2_image), __m64, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0)
end

function _mm_set1_pi32(__i::Cint)
    ccall((:_mm_set1_pi32, libSDL2_image), __m64, (Cint,), __i)
end

function _mm_set1_pi16(__w::Int16)
    ccall((:_mm_set1_pi16, libSDL2_image), __m64, (Int16,), __w)
end

function _mm_set1_pi8(__b::UInt8)
    ccall((:_mm_set1_pi8, libSDL2_image), __m64, (UInt8,), __b)
end

function _mm_setr_pi32(__i0::Cint, __i1::Cint)
    ccall((:_mm_setr_pi32, libSDL2_image), __m64, (Cint, Cint), __i0, __i1)
end

function _mm_setr_pi16(__w0::Int16, __w1::Int16, __w2::Int16, __w3::Int16)
    ccall((:_mm_setr_pi16, libSDL2_image), __m64, (Int16, Int16, Int16, Int16), __w0, __w1, __w2, __w3)
end

function _mm_setr_pi8(__b0::UInt8, __b1::UInt8, __b2::UInt8, __b3::UInt8, __b4::UInt8, __b5::UInt8, __b6::UInt8, __b7::UInt8)
    ccall((:_mm_setr_pi8, libSDL2_image), __m64, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b0, __b1, __b2, __b3, __b4, __b5, __b6, __b7)
end

function posix_memalign(__memptr, __alignment::Csize_t, __size::Csize_t)
    ccall((:posix_memalign, libSDL2_image), Cint, (Ptr{Ptr{Void}}, Csize_t, Csize_t), __memptr, __alignment, __size)
end

function _mm_malloc(__size::Csize_t, __align::Csize_t)
    ccall((:_mm_malloc, libSDL2_image), Ptr{Void}, (Csize_t, Csize_t), __size, __align)
end

function _mm_free(__p)
    ccall((:_mm_free, libSDL2_image), Void, (Ptr{Void},), __p)
end

function _mm_add_ss(__a::__m128, __b::__m128)
    ccall((:_mm_add_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_add_ps(__a::__m128, __b::__m128)
    ccall((:_mm_add_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_sub_ss(__a::__m128, __b::__m128)
    ccall((:_mm_sub_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_sub_ps(__a::__m128, __b::__m128)
    ccall((:_mm_sub_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_mul_ss(__a::__m128, __b::__m128)
    ccall((:_mm_mul_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_mul_ps(__a::__m128, __b::__m128)
    ccall((:_mm_mul_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_div_ss(__a::__m128, __b::__m128)
    ccall((:_mm_div_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_div_ps(__a::__m128, __b::__m128)
    ccall((:_mm_div_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_sqrt_ss(__a::__m128)
    ccall((:_mm_sqrt_ss, libSDL2_image), __m128, (__m128,), __a)
end

function _mm_sqrt_ps(__a::__m128)
    ccall((:_mm_sqrt_ps, libSDL2_image), __m128, (__m128,), __a)
end

function _mm_rcp_ss(__a::__m128)
    ccall((:_mm_rcp_ss, libSDL2_image), __m128, (__m128,), __a)
end

function _mm_rcp_ps(__a::__m128)
    ccall((:_mm_rcp_ps, libSDL2_image), __m128, (__m128,), __a)
end

function _mm_rsqrt_ss(__a::__m128)
    ccall((:_mm_rsqrt_ss, libSDL2_image), __m128, (__m128,), __a)
end

function _mm_rsqrt_ps(__a::__m128)
    ccall((:_mm_rsqrt_ps, libSDL2_image), __m128, (__m128,), __a)
end

function _mm_min_ss(__a::__m128, __b::__m128)
    ccall((:_mm_min_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_min_ps(__a::__m128, __b::__m128)
    ccall((:_mm_min_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_max_ss(__a::__m128, __b::__m128)
    ccall((:_mm_max_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_max_ps(__a::__m128, __b::__m128)
    ccall((:_mm_max_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_and_ps(__a::__m128, __b::__m128)
    ccall((:_mm_and_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_andnot_ps(__a::__m128, __b::__m128)
    ccall((:_mm_andnot_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_or_ps(__a::__m128, __b::__m128)
    ccall((:_mm_or_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_xor_ps(__a::__m128, __b::__m128)
    ccall((:_mm_xor_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpeq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpeq_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpeq_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpeq_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmplt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmplt_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmplt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmplt_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmple_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmple_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmple_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmple_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpgt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpgt_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpgt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpgt_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpge_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpge_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpge_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpge_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpneq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpneq_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpneq_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpneq_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnlt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnlt_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnlt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnlt_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnle_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnle_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnle_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnle_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpngt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpngt_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpngt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpngt_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnge_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnge_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnge_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnge_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpord_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpord_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpord_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpord_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpunord_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpunord_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpunord_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpunord_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_comieq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comieq_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_comilt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comilt_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_comile_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comile_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_comigt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comigt_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_comige_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comige_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_comineq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comineq_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomieq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomieq_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomilt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomilt_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomile_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomile_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomigt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomigt_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomige_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomige_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomineq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomineq_ss, libSDL2_image), Cint, (__m128, __m128), __a, __b)
end

function _mm_cvtss_si32(__a::__m128)
    ccall((:_mm_cvtss_si32, libSDL2_image), Cint, (__m128,), __a)
end

function _mm_cvt_ss2si(__a::__m128)
    ccall((:_mm_cvt_ss2si, libSDL2_image), Cint, (__m128,), __a)
end

function _mm_cvtss_si64(__a::__m128)
    ccall((:_mm_cvtss_si64, libSDL2_image), Clonglong, (__m128,), __a)
end

function _mm_cvtps_pi32(__a::__m128)
    ccall((:_mm_cvtps_pi32, libSDL2_image), __m64, (__m128,), __a)
end

function _mm_cvt_ps2pi(__a::__m128)
    ccall((:_mm_cvt_ps2pi, libSDL2_image), __m64, (__m128,), __a)
end

function _mm_cvttss_si32(__a::__m128)
    ccall((:_mm_cvttss_si32, libSDL2_image), Cint, (__m128,), __a)
end

function _mm_cvtt_ss2si(__a::__m128)
    ccall((:_mm_cvtt_ss2si, libSDL2_image), Cint, (__m128,), __a)
end

function _mm_cvttss_si64(__a::__m128)
    ccall((:_mm_cvttss_si64, libSDL2_image), Clonglong, (__m128,), __a)
end

function _mm_cvttps_pi32(__a::__m128)
    ccall((:_mm_cvttps_pi32, libSDL2_image), __m64, (__m128,), __a)
end

function _mm_cvtt_ps2pi(__a::__m128)
    ccall((:_mm_cvtt_ps2pi, libSDL2_image), __m64, (__m128,), __a)
end

function _mm_cvtsi32_ss(__a::__m128, __b::Cint)
    ccall((:_mm_cvtsi32_ss, libSDL2_image), __m128, (__m128, Cint), __a, __b)
end

function _mm_cvt_si2ss(__a::__m128, __b::Cint)
    ccall((:_mm_cvt_si2ss, libSDL2_image), __m128, (__m128, Cint), __a, __b)
end

function _mm_cvtsi64_ss(__a::__m128, __b::Clonglong)
    ccall((:_mm_cvtsi64_ss, libSDL2_image), __m128, (__m128, Clonglong), __a, __b)
end

function _mm_cvtpi32_ps(__a::__m128, __b::__m64)
    ccall((:_mm_cvtpi32_ps, libSDL2_image), __m128, (__m128, __m64), __a, __b)
end

function _mm_cvt_pi2ps(__a::__m128, __b::__m64)
    ccall((:_mm_cvt_pi2ps, libSDL2_image), __m128, (__m128, __m64), __a, __b)
end

function _mm_cvtss_f32(__a::__m128)
    ccall((:_mm_cvtss_f32, libSDL2_image), Cfloat, (__m128,), __a)
end

function _mm_loadh_pi(__a::__m128, __p)
    ccall((:_mm_loadh_pi, libSDL2_image), __m128, (__m128, Ptr{__m64}), __a, __p)
end

function _mm_loadl_pi(__a::__m128, __p)
    ccall((:_mm_loadl_pi, libSDL2_image), __m128, (__m128, Ptr{__m64}), __a, __p)
end

function _mm_load_ss(__p)
    ccall((:_mm_load_ss, libSDL2_image), __m128, (Ptr{Cfloat},), __p)
end

function _mm_load1_ps(__p)
    ccall((:_mm_load1_ps, libSDL2_image), __m128, (Ptr{Cfloat},), __p)
end

function _mm_load_ps(__p)
    ccall((:_mm_load_ps, libSDL2_image), __m128, (Ptr{Cfloat},), __p)
end

function _mm_loadu_ps(__p)
    ccall((:_mm_loadu_ps, libSDL2_image), __m128, (Ptr{Cfloat},), __p)
end

function _mm_loadr_ps(__p)
    ccall((:_mm_loadr_ps, libSDL2_image), __m128, (Ptr{Cfloat},), __p)
end

function _mm_undefined_ps()
    ccall((:_mm_undefined_ps, libSDL2_image), __m128, ())
end

function _mm_set_ss(__w::Cfloat)
    ccall((:_mm_set_ss, libSDL2_image), __m128, (Cfloat,), __w)
end

function _mm_set1_ps(__w::Cfloat)
    ccall((:_mm_set1_ps, libSDL2_image), __m128, (Cfloat,), __w)
end

function _mm_set_ps1(__w::Cfloat)
    ccall((:_mm_set_ps1, libSDL2_image), __m128, (Cfloat,), __w)
end

function _mm_set_ps(__z::Cfloat, __y::Cfloat, __x::Cfloat, __w::Cfloat)
    ccall((:_mm_set_ps, libSDL2_image), __m128, (Cfloat, Cfloat, Cfloat, Cfloat), __z, __y, __x, __w)
end

function _mm_setr_ps(__z::Cfloat, __y::Cfloat, __x::Cfloat, __w::Cfloat)
    ccall((:_mm_setr_ps, libSDL2_image), __m128, (Cfloat, Cfloat, Cfloat, Cfloat), __z, __y, __x, __w)
end

function _mm_setzero_ps()
    ccall((:_mm_setzero_ps, libSDL2_image), __m128, ())
end

function _mm_storeh_pi(__p, __a::__m128)
    ccall((:_mm_storeh_pi, libSDL2_image), Void, (Ptr{__m64}, __m128), __p, __a)
end

function _mm_storel_pi(__p, __a::__m128)
    ccall((:_mm_storel_pi, libSDL2_image), Void, (Ptr{__m64}, __m128), __p, __a)
end

function _mm_store_ss(__p, __a::__m128)
    ccall((:_mm_store_ss, libSDL2_image), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_storeu_ps(__p, __a::__m128)
    ccall((:_mm_storeu_ps, libSDL2_image), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_store_ps(__p, __a::__m128)
    ccall((:_mm_store_ps, libSDL2_image), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_store1_ps(__p, __a::__m128)
    ccall((:_mm_store1_ps, libSDL2_image), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_store_ps1(__p, __a::__m128)
    ccall((:_mm_store_ps1, libSDL2_image), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_storer_ps(__p, __a::__m128)
    ccall((:_mm_storer_ps, libSDL2_image), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_stream_pi(__p, __a::__m64)
    ccall((:_mm_stream_pi, libSDL2_image), Void, (Ptr{__m64}, __m64), __p, __a)
end

function _mm_stream_ps(__p, __a::__m128)
    ccall((:_mm_stream_ps, libSDL2_image), Void, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_sfence()
    ccall((:_mm_sfence, libSDL2_image), Void, ())
end

function _mm_max_pi16(__a::__m64, __b::__m64)
    ccall((:_mm_max_pi16, libSDL2_image), __m64, (__m64, __m64), __a, __b)
end

function _mm_max_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_max_pu8, libSDL2_image), __m64, (__m64, __m64), __a, __b)
end

function _mm_min_pi16(__a::__m64, __b::__m64)
    ccall((:_mm_min_pi16, libSDL2_image), __m64, (__m64, __m64), __a, __b)
end

function _mm_min_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_min_pu8, libSDL2_image), __m64, (__m64, __m64), __a, __b)
end

function _mm_movemask_pi8(__a::__m64)
    ccall((:_mm_movemask_pi8, libSDL2_image), Cint, (__m64,), __a)
end

function _mm_mulhi_pu16(__a::__m64, __b::__m64)
    ccall((:_mm_mulhi_pu16, libSDL2_image), __m64, (__m64, __m64), __a, __b)
end

function _mm_maskmove_si64(__d::__m64, __n::__m64, __p)
    ccall((:_mm_maskmove_si64, libSDL2_image), Void, (__m64, __m64, Cstring), __d, __n, __p)
end

function _mm_avg_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_avg_pu8, libSDL2_image), __m64, (__m64, __m64), __a, __b)
end

function _mm_avg_pu16(__a::__m64, __b::__m64)
    ccall((:_mm_avg_pu16, libSDL2_image), __m64, (__m64, __m64), __a, __b)
end

function _mm_sad_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_sad_pu8, libSDL2_image), __m64, (__m64, __m64), __a, __b)
end

function _mm_getcsr()
    ccall((:_mm_getcsr, libSDL2_image), UInt32, ())
end

function _mm_setcsr(__i::UInt32)
    ccall((:_mm_setcsr, libSDL2_image), Void, (UInt32,), __i)
end

function _mm_unpackhi_ps(__a::__m128, __b::__m128)
    ccall((:_mm_unpackhi_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_unpacklo_ps(__a::__m128, __b::__m128)
    ccall((:_mm_unpacklo_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_move_ss(__a::__m128, __b::__m128)
    ccall((:_mm_move_ss, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_movehl_ps(__a::__m128, __b::__m128)
    ccall((:_mm_movehl_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_movelh_ps(__a::__m128, __b::__m128)
    ccall((:_mm_movelh_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_cvtpi16_ps(__a::__m64)
    ccall((:_mm_cvtpi16_ps, libSDL2_image), __m128, (__m64,), __a)
end

function _mm_cvtpu16_ps(__a::__m64)
    ccall((:_mm_cvtpu16_ps, libSDL2_image), __m128, (__m64,), __a)
end

function _mm_cvtpi8_ps(__a::__m64)
    ccall((:_mm_cvtpi8_ps, libSDL2_image), __m128, (__m64,), __a)
end

function _mm_cvtpu8_ps(__a::__m64)
    ccall((:_mm_cvtpu8_ps, libSDL2_image), __m128, (__m64,), __a)
end

function _mm_cvtpi32x2_ps(__a::__m64, __b::__m64)
    ccall((:_mm_cvtpi32x2_ps, libSDL2_image), __m128, (__m64, __m64), __a, __b)
end

function _mm_cvtps_pi16(__a::__m128)
    ccall((:_mm_cvtps_pi16, libSDL2_image), __m64, (__m128,), __a)
end

function _mm_cvtps_pi8(__a::__m128)
    ccall((:_mm_cvtps_pi8, libSDL2_image), __m64, (__m128,), __a)
end

function _mm_movemask_ps(__a::__m128)
    ccall((:_mm_movemask_ps, libSDL2_image), Cint, (__m128,), __a)
end

function _cvtsh_ss(__a::UInt16)
    ccall((:_cvtsh_ss, libSDL2_image), Cfloat, (UInt16,), __a)
end

function _mm_cvtph_ps(__a::__m128i)
    ccall((:_mm_cvtph_ps, libSDL2_image), __m128, (__m128i,), __a)
end

function _mm_add_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_add_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_add_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_add_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sub_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_sub_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sub_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_sub_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_mul_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_mul_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_mul_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_mul_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_div_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_div_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_div_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_div_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sqrt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_sqrt_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sqrt_pd(__a::__m128d)
    ccall((:_mm_sqrt_pd, libSDL2_image), __m128d, (__m128d,), __a)
end

function _mm_min_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_min_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_min_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_min_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_max_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_max_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_max_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_max_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_and_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_and_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_andnot_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_andnot_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_or_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_or_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_xor_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_xor_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpeq_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpeq_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmplt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmplt_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmple_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmple_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpgt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpgt_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpge_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpge_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpord_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpord_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpunord_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpunord_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpneq_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpneq_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnlt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnlt_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnle_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnle_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpngt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpngt_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnge_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnge_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpeq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpeq_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmplt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmplt_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmple_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmple_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpgt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpgt_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpge_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpge_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpord_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpord_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpunord_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpunord_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpneq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpneq_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnlt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnlt_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnle_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnle_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpngt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpngt_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnge_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnge_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_comieq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comieq_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comilt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comilt_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comile_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comile_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comigt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comigt_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comige_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comige_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comineq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comineq_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomieq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomieq_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomilt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomilt_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomile_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomile_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomigt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomigt_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomige_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomige_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomineq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomineq_sd, libSDL2_image), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_cvtpd_ps(__a::__m128d)
    ccall((:_mm_cvtpd_ps, libSDL2_image), __m128, (__m128d,), __a)
end

function _mm_cvtps_pd(__a::__m128)
    ccall((:_mm_cvtps_pd, libSDL2_image), __m128d, (__m128,), __a)
end

function _mm_cvtepi32_pd(__a::__m128i)
    ccall((:_mm_cvtepi32_pd, libSDL2_image), __m128d, (__m128i,), __a)
end

function _mm_cvtpd_epi32(__a::__m128d)
    ccall((:_mm_cvtpd_epi32, libSDL2_image), __m128i, (__m128d,), __a)
end

function _mm_cvtsd_si32(__a::__m128d)
    ccall((:_mm_cvtsd_si32, libSDL2_image), Cint, (__m128d,), __a)
end

function _mm_cvtsd_ss(__a::__m128, __b::__m128d)
    ccall((:_mm_cvtsd_ss, libSDL2_image), __m128, (__m128, __m128d), __a, __b)
end

function _mm_cvtsi32_sd(__a::__m128d, __b::Cint)
    ccall((:_mm_cvtsi32_sd, libSDL2_image), __m128d, (__m128d, Cint), __a, __b)
end

function _mm_cvtss_sd(__a::__m128d, __b::__m128)
    ccall((:_mm_cvtss_sd, libSDL2_image), __m128d, (__m128d, __m128), __a, __b)
end

function _mm_cvttpd_epi32(__a::__m128d)
    ccall((:_mm_cvttpd_epi32, libSDL2_image), __m128i, (__m128d,), __a)
end

function _mm_cvttsd_si32(__a::__m128d)
    ccall((:_mm_cvttsd_si32, libSDL2_image), Cint, (__m128d,), __a)
end

function _mm_cvtpd_pi32(__a::__m128d)
    ccall((:_mm_cvtpd_pi32, libSDL2_image), __m64, (__m128d,), __a)
end

function _mm_cvttpd_pi32(__a::__m128d)
    ccall((:_mm_cvttpd_pi32, libSDL2_image), __m64, (__m128d,), __a)
end

function _mm_cvtpi32_pd(__a::__m64)
    ccall((:_mm_cvtpi32_pd, libSDL2_image), __m128d, (__m64,), __a)
end

function _mm_cvtsd_f64(__a::__m128d)
    ccall((:_mm_cvtsd_f64, libSDL2_image), Cdouble, (__m128d,), __a)
end

function _mm_load_pd(__dp)
    ccall((:_mm_load_pd, libSDL2_image), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_load1_pd(__dp)
    ccall((:_mm_load1_pd, libSDL2_image), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadr_pd(__dp)
    ccall((:_mm_loadr_pd, libSDL2_image), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadu_pd(__dp)
    ccall((:_mm_loadu_pd, libSDL2_image), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadu_si64(__a)
    ccall((:_mm_loadu_si64, libSDL2_image), __m128i, (Ptr{Void},), __a)
end

function _mm_load_sd(__dp)
    ccall((:_mm_load_sd, libSDL2_image), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadh_pd(__a::__m128d, __dp)
    ccall((:_mm_loadh_pd, libSDL2_image), __m128d, (__m128d, Ptr{Cdouble}), __a, __dp)
end

function _mm_loadl_pd(__a::__m128d, __dp)
    ccall((:_mm_loadl_pd, libSDL2_image), __m128d, (__m128d, Ptr{Cdouble}), __a, __dp)
end

function _mm_undefined_pd()
    ccall((:_mm_undefined_pd, libSDL2_image), __m128d, ())
end

function _mm_set_sd(__w::Cdouble)
    ccall((:_mm_set_sd, libSDL2_image), __m128d, (Cdouble,), __w)
end

function _mm_set1_pd(__w::Cdouble)
    ccall((:_mm_set1_pd, libSDL2_image), __m128d, (Cdouble,), __w)
end

function _mm_set_pd1(__w::Cdouble)
    ccall((:_mm_set_pd1, libSDL2_image), __m128d, (Cdouble,), __w)
end

function _mm_set_pd(__w::Cdouble, __x::Cdouble)
    ccall((:_mm_set_pd, libSDL2_image), __m128d, (Cdouble, Cdouble), __w, __x)
end

function _mm_setr_pd(__w::Cdouble, __x::Cdouble)
    ccall((:_mm_setr_pd, libSDL2_image), __m128d, (Cdouble, Cdouble), __w, __x)
end

function _mm_setzero_pd()
    ccall((:_mm_setzero_pd, libSDL2_image), __m128d, ())
end

function _mm_move_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_move_sd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_store_sd(__dp, __a::__m128d)
    ccall((:_mm_store_sd, libSDL2_image), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_store_pd(__dp, __a::__m128d)
    ccall((:_mm_store_pd, libSDL2_image), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_store1_pd(__dp, __a::__m128d)
    ccall((:_mm_store1_pd, libSDL2_image), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_store_pd1(__dp, __a::__m128d)
    ccall((:_mm_store_pd1, libSDL2_image), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storeu_pd(__dp, __a::__m128d)
    ccall((:_mm_storeu_pd, libSDL2_image), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storer_pd(__dp, __a::__m128d)
    ccall((:_mm_storer_pd, libSDL2_image), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storeh_pd(__dp, __a::__m128d)
    ccall((:_mm_storeh_pd, libSDL2_image), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storel_pd(__dp, __a::__m128d)
    ccall((:_mm_storel_pd, libSDL2_image), Void, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_add_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_add_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_add_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_add_si64(__a::__m64, __b::__m64)
    ccall((:_mm_add_si64, libSDL2_image), __m64, (__m64, __m64), __a, __b)
end

function _mm_add_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi64, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epi8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epu8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epu16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_avg_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_avg_epu8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_avg_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_avg_epu16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_madd_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_madd_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_max_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_max_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_max_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_max_epu8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_min_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_min_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_min_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_min_epu8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mulhi_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_mulhi_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mulhi_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_mulhi_epu16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mullo_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_mullo_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mul_su32(__a::__m64, __b::__m64)
    ccall((:_mm_mul_su32, libSDL2_image), __m64, (__m64, __m64), __a, __b)
end

function _mm_mul_epu32(__a::__m128i, __b::__m128i)
    ccall((:_mm_mul_epu32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sad_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_sad_epu8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_si64(__a::__m64, __b::__m64)
    ccall((:_mm_sub_si64, libSDL2_image), __m64, (__m64, __m64), __a, __b)
end

function _mm_sub_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi64, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epi8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epu8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epu16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_and_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_and_si128, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_andnot_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_andnot_si128, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_or_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_or_si128, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_xor_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_xor_si128, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_slli_epi16(__a::__m128i, __count::Cint)
    ccall((:_mm_slli_epi16, libSDL2_image), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sll_epi16(__a::__m128i, __count::__m128i)
    ccall((:_mm_sll_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_slli_epi32(__a::__m128i, __count::Cint)
    ccall((:_mm_slli_epi32, libSDL2_image), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sll_epi32(__a::__m128i, __count::__m128i)
    ccall((:_mm_sll_epi32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_slli_epi64(__a::__m128i, __count::Cint)
    ccall((:_mm_slli_epi64, libSDL2_image), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sll_epi64(__a::__m128i, __count::__m128i)
    ccall((:_mm_sll_epi64, libSDL2_image), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srai_epi16(__a::__m128i, __count::Cint)
    ccall((:_mm_srai_epi16, libSDL2_image), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sra_epi16(__a::__m128i, __count::__m128i)
    ccall((:_mm_sra_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srai_epi32(__a::__m128i, __count::Cint)
    ccall((:_mm_srai_epi32, libSDL2_image), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sra_epi32(__a::__m128i, __count::__m128i)
    ccall((:_mm_sra_epi32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srli_epi16(__a::__m128i, __count::Cint)
    ccall((:_mm_srli_epi16, libSDL2_image), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_srl_epi16(__a::__m128i, __count::__m128i)
    ccall((:_mm_srl_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srli_epi32(__a::__m128i, __count::Cint)
    ccall((:_mm_srli_epi32, libSDL2_image), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_srl_epi32(__a::__m128i, __count::__m128i)
    ccall((:_mm_srl_epi32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srli_epi64(__a::__m128i, __count::Cint)
    ccall((:_mm_srli_epi64, libSDL2_image), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_srl_epi64(__a::__m128i, __count::__m128i)
    ccall((:_mm_srl_epi64, libSDL2_image), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_cmpeq_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpeq_epi8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpeq_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpeq_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpeq_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpeq_epi32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpgt_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpgt_epi8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpgt_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpgt_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpgt_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpgt_epi32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmplt_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmplt_epi8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmplt_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmplt_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmplt_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmplt_epi32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cvtsi64_sd(__a::__m128d, __b::Clonglong)
    ccall((:_mm_cvtsi64_sd, libSDL2_image), __m128d, (__m128d, Clonglong), __a, __b)
end

function _mm_cvtsd_si64(__a::__m128d)
    ccall((:_mm_cvtsd_si64, libSDL2_image), Clonglong, (__m128d,), __a)
end

function _mm_cvttsd_si64(__a::__m128d)
    ccall((:_mm_cvttsd_si64, libSDL2_image), Clonglong, (__m128d,), __a)
end

function _mm_cvtepi32_ps(__a::__m128i)
    ccall((:_mm_cvtepi32_ps, libSDL2_image), __m128, (__m128i,), __a)
end

function _mm_cvtps_epi32(__a::__m128)
    ccall((:_mm_cvtps_epi32, libSDL2_image), __m128i, (__m128,), __a)
end

function _mm_cvttps_epi32(__a::__m128)
    ccall((:_mm_cvttps_epi32, libSDL2_image), __m128i, (__m128,), __a)
end

function _mm_cvtsi32_si128(__a::Cint)
    ccall((:_mm_cvtsi32_si128, libSDL2_image), __m128i, (Cint,), __a)
end

function _mm_cvtsi64_si128(__a::Clonglong)
    ccall((:_mm_cvtsi64_si128, libSDL2_image), __m128i, (Clonglong,), __a)
end

function _mm_cvtsi128_si32(__a::__m128i)
    ccall((:_mm_cvtsi128_si32, libSDL2_image), Cint, (__m128i,), __a)
end

function _mm_cvtsi128_si64(__a::__m128i)
    ccall((:_mm_cvtsi128_si64, libSDL2_image), Clonglong, (__m128i,), __a)
end

function _mm_load_si128(__p)
    ccall((:_mm_load_si128, libSDL2_image), __m128i, (Ptr{__m128i},), __p)
end

function _mm_loadu_si128(__p)
    ccall((:_mm_loadu_si128, libSDL2_image), __m128i, (Ptr{__m128i},), __p)
end

function _mm_loadl_epi64(__p)
    ccall((:_mm_loadl_epi64, libSDL2_image), __m128i, (Ptr{__m128i},), __p)
end

function _mm_undefined_si128()
    ccall((:_mm_undefined_si128, libSDL2_image), __m128i, ())
end

function _mm_set_epi64x(__q1::Clonglong, __q0::Clonglong)
    ccall((:_mm_set_epi64x, libSDL2_image), __m128i, (Clonglong, Clonglong), __q1, __q0)
end

function _mm_set_epi64(__q1::__m64, __q0::__m64)
    ccall((:_mm_set_epi64, libSDL2_image), __m128i, (__m64, __m64), __q1, __q0)
end

function _mm_set_epi32(__i3::Cint, __i2::Cint, __i1::Cint, __i0::Cint)
    ccall((:_mm_set_epi32, libSDL2_image), __m128i, (Cint, Cint, Cint, Cint), __i3, __i2, __i1, __i0)
end

function _mm_set_epi16(__w7::Int16, __w6::Int16, __w5::Int16, __w4::Int16, __w3::Int16, __w2::Int16, __w1::Int16, __w0::Int16)
    ccall((:_mm_set_epi16, libSDL2_image), __m128i, (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), __w7, __w6, __w5, __w4, __w3, __w2, __w1, __w0)
end

function _mm_set_epi8(__b15::UInt8, __b14::UInt8, __b13::UInt8, __b12::UInt8, __b11::UInt8, __b10::UInt8, __b9::UInt8, __b8::UInt8, __b7::UInt8, __b6::UInt8, __b5::UInt8, __b4::UInt8, __b3::UInt8, __b2::UInt8, __b1::UInt8, __b0::UInt8)
    ccall((:_mm_set_epi8, libSDL2_image), __m128i, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b15, __b14, __b13, __b12, __b11, __b10, __b9, __b8, __b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0)
end

function _mm_set1_epi64x(__q::Clonglong)
    ccall((:_mm_set1_epi64x, libSDL2_image), __m128i, (Clonglong,), __q)
end

function _mm_set1_epi64(__q::__m64)
    ccall((:_mm_set1_epi64, libSDL2_image), __m128i, (__m64,), __q)
end

function _mm_set1_epi32(__i::Cint)
    ccall((:_mm_set1_epi32, libSDL2_image), __m128i, (Cint,), __i)
end

function _mm_set1_epi16(__w::Int16)
    ccall((:_mm_set1_epi16, libSDL2_image), __m128i, (Int16,), __w)
end

function _mm_set1_epi8(__b::UInt8)
    ccall((:_mm_set1_epi8, libSDL2_image), __m128i, (UInt8,), __b)
end

function _mm_setr_epi64(__q0::__m64, __q1::__m64)
    ccall((:_mm_setr_epi64, libSDL2_image), __m128i, (__m64, __m64), __q0, __q1)
end

function _mm_setr_epi32(__i0::Cint, __i1::Cint, __i2::Cint, __i3::Cint)
    ccall((:_mm_setr_epi32, libSDL2_image), __m128i, (Cint, Cint, Cint, Cint), __i0, __i1, __i2, __i3)
end

function _mm_setr_epi16(__w0::Int16, __w1::Int16, __w2::Int16, __w3::Int16, __w4::Int16, __w5::Int16, __w6::Int16, __w7::Int16)
    ccall((:_mm_setr_epi16, libSDL2_image), __m128i, (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), __w0, __w1, __w2, __w3, __w4, __w5, __w6, __w7)
end

function _mm_setr_epi8(__b0::UInt8, __b1::UInt8, __b2::UInt8, __b3::UInt8, __b4::UInt8, __b5::UInt8, __b6::UInt8, __b7::UInt8, __b8::UInt8, __b9::UInt8, __b10::UInt8, __b11::UInt8, __b12::UInt8, __b13::UInt8, __b14::UInt8, __b15::UInt8)
    ccall((:_mm_setr_epi8, libSDL2_image), __m128i, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b0, __b1, __b2, __b3, __b4, __b5, __b6, __b7, __b8, __b9, __b10, __b11, __b12, __b13, __b14, __b15)
end

function _mm_setzero_si128()
    ccall((:_mm_setzero_si128, libSDL2_image), __m128i, ())
end

function _mm_store_si128(__p, __b::__m128i)
    ccall((:_mm_store_si128, libSDL2_image), Void, (Ptr{__m128i}, __m128i), __p, __b)
end

function _mm_storeu_si128(__p, __b::__m128i)
    ccall((:_mm_storeu_si128, libSDL2_image), Void, (Ptr{__m128i}, __m128i), __p, __b)
end

function _mm_maskmoveu_si128(__d::__m128i, __n::__m128i, __p)
    ccall((:_mm_maskmoveu_si128, libSDL2_image), Void, (__m128i, __m128i, Cstring), __d, __n, __p)
end

function _mm_storel_epi64(__p, __a::__m128i)
    ccall((:_mm_storel_epi64, libSDL2_image), Void, (Ptr{__m128i}, __m128i), __p, __a)
end

function _mm_stream_pd(__p, __a::__m128d)
    ccall((:_mm_stream_pd, libSDL2_image), Void, (Ptr{Cdouble}, __m128d), __p, __a)
end

function _mm_stream_si128(__p, __a::__m128i)
    ccall((:_mm_stream_si128, libSDL2_image), Void, (Ptr{__m128i}, __m128i), __p, __a)
end

function _mm_stream_si32(__p, __a::Cint)
    ccall((:_mm_stream_si32, libSDL2_image), Void, (Ptr{Cint}, Cint), __p, __a)
end

function _mm_stream_si64(__p, __a::Clonglong)
    ccall((:_mm_stream_si64, libSDL2_image), Void, (Ptr{Clonglong}, Clonglong), __p, __a)
end

function _mm_clflush(__p)
    ccall((:_mm_clflush, libSDL2_image), Void, (Ptr{Void},), __p)
end

function _mm_lfence()
    ccall((:_mm_lfence, libSDL2_image), Void, ())
end

function _mm_mfence()
    ccall((:_mm_mfence, libSDL2_image), Void, ())
end

function _mm_packs_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_packs_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_packs_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_packs_epi32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_packus_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_packus_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_extract_epi16(__a::__m128i, __imm::Cint)
    ccall((:_mm_extract_epi16, libSDL2_image), Cint, (__m128i, Cint), __a, __imm)
end

function _mm_insert_epi16(__a::__m128i, __b::Cint, __imm::Cint)
    ccall((:_mm_insert_epi16, libSDL2_image), __m128i, (__m128i, Cint, Cint), __a, __b, __imm)
end

function _mm_movemask_epi8(__a::__m128i)
    ccall((:_mm_movemask_epi8, libSDL2_image), Cint, (__m128i,), __a)
end

function _mm_unpackhi_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpackhi_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpackhi_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpackhi_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi64, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi8, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi16, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi32, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi64, libSDL2_image), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_movepi64_pi64(__a::__m128i)
    ccall((:_mm_movepi64_pi64, libSDL2_image), __m64, (__m128i,), __a)
end

function _mm_movpi64_epi64(__a::__m64)
    ccall((:_mm_movpi64_epi64, libSDL2_image), __m128i, (__m64,), __a)
end

function _mm_move_epi64(__a::__m128i)
    ccall((:_mm_move_epi64, libSDL2_image), __m128i, (__m128i,), __a)
end

function _mm_unpackhi_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_unpackhi_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_unpacklo_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_unpacklo_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_movemask_pd(__a::__m128d)
    ccall((:_mm_movemask_pd, libSDL2_image), Cint, (__m128d,), __a)
end

function _mm_castpd_ps(__a::__m128d)
    ccall((:_mm_castpd_ps, libSDL2_image), __m128, (__m128d,), __a)
end

function _mm_castpd_si128(__a::__m128d)
    ccall((:_mm_castpd_si128, libSDL2_image), __m128i, (__m128d,), __a)
end

function _mm_castps_pd(__a::__m128)
    ccall((:_mm_castps_pd, libSDL2_image), __m128d, (__m128,), __a)
end

function _mm_castps_si128(__a::__m128)
    ccall((:_mm_castps_si128, libSDL2_image), __m128i, (__m128,), __a)
end

function _mm_castsi128_ps(__a::__m128i)
    ccall((:_mm_castsi128_ps, libSDL2_image), __m128, (__m128i,), __a)
end

function _mm_castsi128_pd(__a::__m128i)
    ccall((:_mm_castsi128_pd, libSDL2_image), __m128d, (__m128i,), __a)
end

function _mm_pause()
    ccall((:_mm_pause, libSDL2_image), Void, ())
end

function _mm_lddqu_si128(__p)
    ccall((:_mm_lddqu_si128, libSDL2_image), __m128i, (Ptr{__m128i},), __p)
end

function _mm_addsub_ps(__a::__m128, __b::__m128)
    ccall((:_mm_addsub_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_hadd_ps(__a::__m128, __b::__m128)
    ccall((:_mm_hadd_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_hsub_ps(__a::__m128, __b::__m128)
    ccall((:_mm_hsub_ps, libSDL2_image), __m128, (__m128, __m128), __a, __b)
end

function _mm_movehdup_ps(__a::__m128)
    ccall((:_mm_movehdup_ps, libSDL2_image), __m128, (__m128,), __a)
end

function _mm_moveldup_ps(__a::__m128)
    ccall((:_mm_moveldup_ps, libSDL2_image), __m128, (__m128,), __a)
end

function _mm_addsub_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_addsub_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_hadd_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_hadd_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_hsub_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_hsub_pd, libSDL2_image), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_movedup_pd(__a::__m128d)
    ccall((:_mm_movedup_pd, libSDL2_image), __m128d, (__m128d,), __a)
end

function _mm_monitor(__p, __extensions::UInt32, __hints::UInt32)
    ccall((:_mm_monitor, libSDL2_image), Void, (Ptr{Void}, UInt32, UInt32), __p, __extensions, __hints)
end

function _mm_mwait(__extensions::UInt32, __hints::UInt32)
    ccall((:_mm_mwait, libSDL2_image), Void, (UInt32, UInt32), __extensions, __hints)
end

function GetCPUCount()
    ccall((:SDL_GetCPUCount, libSDL2_image), Cint, ())
end

function GetCPUCacheLineSize()
    ccall((:SDL_GetCPUCacheLineSize, libSDL2_image), Cint, ())
end

function HasRDTSC()
    ccall((:SDL_HasRDTSC, libSDL2_image), SDL_bool, ())
end

function HasAltiVec()
    ccall((:SDL_HasAltiVec, libSDL2_image), SDL_bool, ())
end

function HasMMX()
    ccall((:SDL_HasMMX, libSDL2_image), SDL_bool, ())
end

function Has3DNow()
    ccall((:SDL_Has3DNow, libSDL2_image), SDL_bool, ())
end

function HasSSE()
    ccall((:SDL_HasSSE, libSDL2_image), SDL_bool, ())
end

function HasSSE2()
    ccall((:SDL_HasSSE2, libSDL2_image), SDL_bool, ())
end

function HasSSE3()
    ccall((:SDL_HasSSE3, libSDL2_image), SDL_bool, ())
end

function HasSSE41()
    ccall((:SDL_HasSSE41, libSDL2_image), SDL_bool, ())
end

function HasSSE42()
    ccall((:SDL_HasSSE42, libSDL2_image), SDL_bool, ())
end

function HasAVX()
    ccall((:SDL_HasAVX, libSDL2_image), SDL_bool, ())
end

function HasAVX2()
    ccall((:SDL_HasAVX2, libSDL2_image), SDL_bool, ())
end

function HasNEON()
    ccall((:SDL_HasNEON, libSDL2_image), SDL_bool, ())
end

function GetSystemRAM()
    ccall((:SDL_GetSystemRAM, libSDL2_image), Cint, ())
end

function GetPixelFormatName(format::Uint32)
    ccall((:SDL_GetPixelFormatName, libSDL2_image), Cstring, (Uint32,), format)
end

function PixelFormatEnumToMasks(format::Uint32, bpp, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_PixelFormatEnumToMasks, libSDL2_image), SDL_bool, (Uint32, Ptr{Cint}, Ptr{Uint32}, Ptr{Uint32}, Ptr{Uint32}, Ptr{Uint32}), format, bpp, Rmask, Gmask, Bmask, Amask)
end

function MasksToPixelFormatEnum(bpp::Cint, Rmask::Uint32, Gmask::Uint32, Bmask::Uint32, Amask::Uint32)
    ccall((:SDL_MasksToPixelFormatEnum, libSDL2_image), Uint32, (Cint, Uint32, Uint32, Uint32, Uint32), bpp, Rmask, Gmask, Bmask, Amask)
end

function AllocFormat(pixel_format::Uint32)
    ccall((:SDL_AllocFormat, libSDL2_image), Ptr{SDL_PixelFormat}, (Uint32,), pixel_format)
end

function FreeFormat(format)
    ccall((:SDL_FreeFormat, libSDL2_image), Void, (Ptr{SDL_PixelFormat},), format)
end

function AllocPalette(ncolors::Cint)
    ccall((:SDL_AllocPalette, libSDL2_image), Ptr{SDL_Palette}, (Cint,), ncolors)
end

function SetPixelFormatPalette(format, palette)
    ccall((:SDL_SetPixelFormatPalette, libSDL2_image), Cint, (Ptr{SDL_PixelFormat}, Ptr{SDL_Palette}), format, palette)
end

function SetPaletteColors(palette, colors, firstcolor::Cint, ncolors::Cint)
    ccall((:SDL_SetPaletteColors, libSDL2_image), Cint, (Ptr{SDL_Palette}, Ptr{SDL_Color}, Cint, Cint), palette, colors, firstcolor, ncolors)
end

function FreePalette(palette)
    ccall((:SDL_FreePalette, libSDL2_image), Void, (Ptr{SDL_Palette},), palette)
end

function MapRGB(format, r::Uint8, g::Uint8, b::Uint8)
    ccall((:SDL_MapRGB, libSDL2_image), Uint32, (Ptr{SDL_PixelFormat}, Uint8, Uint8, Uint8), format, r, g, b)
end

function MapRGBA(format, r::Uint8, g::Uint8, b::Uint8, a::Uint8)
    ccall((:SDL_MapRGBA, libSDL2_image), Uint32, (Ptr{SDL_PixelFormat}, Uint8, Uint8, Uint8, Uint8), format, r, g, b, a)
end

function GetRGB(pixel::Uint32, format, r, g, b)
    ccall((:SDL_GetRGB, libSDL2_image), Void, (Uint32, Ptr{SDL_PixelFormat}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), pixel, format, r, g, b)
end

function GetRGBA(pixel::Uint32, format, r, g, b, a)
    ccall((:SDL_GetRGBA, libSDL2_image), Void, (Uint32, Ptr{SDL_PixelFormat}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), pixel, format, r, g, b, a)
end

function CalculateGammaRamp(gamma::Cfloat, ramp)
    ccall((:SDL_CalculateGammaRamp, libSDL2_image), Void, (Cfloat, Ptr{Uint16}), gamma, ramp)
end

function PointInRect(p, r)
    ccall((:SDL_PointInRect, libSDL2_image), SDL_bool, (Ptr{SDL_Point}, Ptr{SDL_Rect}), p, r)
end

function RectEmpty(r)
    ccall((:SDL_RectEmpty, libSDL2_image), SDL_bool, (Ptr{SDL_Rect},), r)
end

function RectEquals(a, b)
    ccall((:SDL_RectEquals, libSDL2_image), SDL_bool, (Ptr{SDL_Rect}, Ptr{SDL_Rect}), a, b)
end

function HasIntersection(A, B)
    ccall((:SDL_HasIntersection, libSDL2_image), SDL_bool, (Ptr{SDL_Rect}, Ptr{SDL_Rect}), A, B)
end

function IntersectRect(A, B, result)
    ccall((:SDL_IntersectRect, libSDL2_image), SDL_bool, (Ptr{SDL_Rect}, Ptr{SDL_Rect}, Ptr{SDL_Rect}), A, B, result)
end

function UnionRect(A, B, result)
    ccall((:SDL_UnionRect, libSDL2_image), Void, (Ptr{SDL_Rect}, Ptr{SDL_Rect}, Ptr{SDL_Rect}), A, B, result)
end

function EnclosePoints(points, count::Cint, clip, result)
    ccall((:SDL_EnclosePoints, libSDL2_image), SDL_bool, (Ptr{SDL_Point}, Cint, Ptr{SDL_Rect}, Ptr{SDL_Rect}), points, count, clip, result)
end

function IntersectRectAndLine(rect, X1, Y1, X2, Y2)
    ccall((:SDL_IntersectRectAndLine, libSDL2_image), SDL_bool, (Ptr{SDL_Rect}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), rect, X1, Y1, X2, Y2)
end

function ComposeCustomBlendMode(srcColorFactor::SDL_BlendFactor, dstColorFactor::SDL_BlendFactor, colorOperation::SDL_BlendOperation, srcAlphaFactor::SDL_BlendFactor, dstAlphaFactor::SDL_BlendFactor, alphaOperation::SDL_BlendOperation)
    ccall((:SDL_ComposeCustomBlendMode, libSDL2_image), SDL_BlendMode, (SDL_BlendFactor, SDL_BlendFactor, SDL_BlendOperation, SDL_BlendFactor, SDL_BlendFactor, SDL_BlendOperation), srcColorFactor, dstColorFactor, colorOperation, srcAlphaFactor, dstAlphaFactor, alphaOperation)
end

function CreateRGBSurface(flags::Uint32, width::Cint, height::Cint, depth::Cint, Rmask::Uint32, Gmask::Uint32, Bmask::Uint32, Amask::Uint32)
    ccall((:SDL_CreateRGBSurface, libSDL2_image), Ptr{SDL_Surface}, (Uint32, Cint, Cint, Cint, Uint32, Uint32, Uint32, Uint32), flags, width, height, depth, Rmask, Gmask, Bmask, Amask)
end

function CreateRGBSurfaceWithFormat(flags::Uint32, width::Cint, height::Cint, depth::Cint, format::Uint32)
    ccall((:SDL_CreateRGBSurfaceWithFormat, libSDL2_image), Ptr{SDL_Surface}, (Uint32, Cint, Cint, Cint, Uint32), flags, width, height, depth, format)
end

function CreateRGBSurfaceFrom(pixels, width::Cint, height::Cint, depth::Cint, pitch::Cint, Rmask::Uint32, Gmask::Uint32, Bmask::Uint32, Amask::Uint32)
    ccall((:SDL_CreateRGBSurfaceFrom, libSDL2_image), Ptr{SDL_Surface}, (Ptr{Void}, Cint, Cint, Cint, Cint, Uint32, Uint32, Uint32, Uint32), pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask)
end

function CreateRGBSurfaceWithFormatFrom(pixels, width::Cint, height::Cint, depth::Cint, pitch::Cint, format::Uint32)
    ccall((:SDL_CreateRGBSurfaceWithFormatFrom, libSDL2_image), Ptr{SDL_Surface}, (Ptr{Void}, Cint, Cint, Cint, Cint, Uint32), pixels, width, height, depth, pitch, format)
end

function FreeSurface(surface)
    ccall((:SDL_FreeSurface, libSDL2_image), Void, (Ptr{SDL_Surface},), surface)
end

function SetSurfacePalette(surface, palette)
    ccall((:SDL_SetSurfacePalette, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Palette}), surface, palette)
end

function LockSurface(surface)
    ccall((:SDL_LockSurface, libSDL2_image), Cint, (Ptr{SDL_Surface},), surface)
end

function UnlockSurface(surface)
    ccall((:SDL_UnlockSurface, libSDL2_image), Void, (Ptr{SDL_Surface},), surface)
end

function LoadBMP_RW(src, freesrc::Cint)
    ccall((:SDL_LoadBMP_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops}, Cint), src, freesrc)
end

function SaveBMP_RW(surface, dst, freedst::Cint)
    ccall((:SDL_SaveBMP_RW, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_RWops}, Cint), surface, dst, freedst)
end

function SetSurfaceRLE(surface, flag::Cint)
    ccall((:SDL_SetSurfaceRLE, libSDL2_image), Cint, (Ptr{SDL_Surface}, Cint), surface, flag)
end

function SetColorKey(surface, flag::Cint, key::Uint32)
    ccall((:SDL_SetColorKey, libSDL2_image), Cint, (Ptr{SDL_Surface}, Cint, Uint32), surface, flag, key)
end

function GetColorKey(surface, key)
    ccall((:SDL_GetColorKey, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{Uint32}), surface, key)
end

function SetSurfaceColorMod(surface, r::Uint8, g::Uint8, b::Uint8)
    ccall((:SDL_SetSurfaceColorMod, libSDL2_image), Cint, (Ptr{SDL_Surface}, Uint8, Uint8, Uint8), surface, r, g, b)
end

function GetSurfaceColorMod(surface, r, g, b)
    ccall((:SDL_GetSurfaceColorMod, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), surface, r, g, b)
end

function SetSurfaceAlphaMod(surface, alpha::Uint8)
    ccall((:SDL_SetSurfaceAlphaMod, libSDL2_image), Cint, (Ptr{SDL_Surface}, Uint8), surface, alpha)
end

function GetSurfaceAlphaMod(surface, alpha)
    ccall((:SDL_GetSurfaceAlphaMod, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{Uint8}), surface, alpha)
end

function SetSurfaceBlendMode(surface, blendMode::SDL_BlendMode)
    ccall((:SDL_SetSurfaceBlendMode, libSDL2_image), Cint, (Ptr{SDL_Surface}, SDL_BlendMode), surface, blendMode)
end

function GetSurfaceBlendMode(surface, blendMode)
    ccall((:SDL_GetSurfaceBlendMode, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_BlendMode}), surface, blendMode)
end

function SetClipRect(surface, rect)
    ccall((:SDL_SetClipRect, libSDL2_image), SDL_bool, (Ptr{SDL_Surface}, Ptr{SDL_Rect}), surface, rect)
end

function GetClipRect(surface, rect)
    ccall((:SDL_GetClipRect, libSDL2_image), Void, (Ptr{SDL_Surface}, Ptr{SDL_Rect}), surface, rect)
end

function DuplicateSurface(surface)
    ccall((:SDL_DuplicateSurface, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_Surface},), surface)
end

function ConvertSurface(src, fmt, flags::Uint32)
    ccall((:SDL_ConvertSurface, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_Surface}, Ptr{SDL_PixelFormat}, Uint32), src, fmt, flags)
end

function ConvertSurfaceFormat(src, pixel_format::Uint32, flags::Uint32)
    ccall((:SDL_ConvertSurfaceFormat, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_Surface}, Uint32, Uint32), src, pixel_format, flags)
end

function ConvertPixels(width::Cint, height::Cint, src_format::Uint32, src, src_pitch::Cint, dst_format::Uint32, dst, dst_pitch::Cint)
    ccall((:SDL_ConvertPixels, libSDL2_image), Cint, (Cint, Cint, Uint32, Ptr{Void}, Cint, Uint32, Ptr{Void}, Cint), width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch)
end

function FillRect(dst, rect, color::Uint32)
    ccall((:SDL_FillRect, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Uint32), dst, rect, color)
end

function FillRects(dst, rects, count::Cint, color::Uint32)
    ccall((:SDL_FillRects, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Cint, Uint32), dst, rects, count, color)
end

function UpperBlit(src, srcrect, dst, dstrect)
    ccall((:SDL_UpperBlit, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function LowerBlit(src, srcrect, dst, dstrect)
    ccall((:SDL_LowerBlit, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SoftStretch(src, srcrect, dst, dstrect)
    ccall((:SDL_SoftStretch, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function UpperBlitScaled(src, srcrect, dst, dstrect)
    ccall((:SDL_UpperBlitScaled, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function LowerBlitScaled(src, srcrect, dst, dstrect)
    ccall((:SDL_LowerBlitScaled, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_Rect}, Ptr{SDL_Surface}, Ptr{SDL_Rect}), src, srcrect, dst, dstrect)
end

function SetYUVConversionMode(mode::SDL_YUV_CONVERSION_MODE)
    ccall((:SDL_SetYUVConversionMode, libSDL2_image), Void, (SDL_YUV_CONVERSION_MODE,), mode)
end

function GetYUVConversionMode()
    ccall((:SDL_GetYUVConversionMode, libSDL2_image), SDL_YUV_CONVERSION_MODE, ())
end

function GetYUVConversionModeForResolution(width::Cint, height::Cint)
    ccall((:SDL_GetYUVConversionModeForResolution, libSDL2_image), SDL_YUV_CONVERSION_MODE, (Cint, Cint), width, height)
end

function GetNumVideoDrivers()
    ccall((:SDL_GetNumVideoDrivers, libSDL2_image), Cint, ())
end

function GetVideoDriver(index::Cint)
    ccall((:SDL_GetVideoDriver, libSDL2_image), Cstring, (Cint,), index)
end

function VideoInit(driver_name)
    ccall((:SDL_VideoInit, libSDL2_image), Cint, (Cstring,), driver_name)
end

function VideoQuit()
    ccall((:SDL_VideoQuit, libSDL2_image), Void, ())
end

function GetCurrentVideoDriver()
    ccall((:SDL_GetCurrentVideoDriver, libSDL2_image), Cstring, ())
end

function GetNumVideoDisplays()
    ccall((:SDL_GetNumVideoDisplays, libSDL2_image), Cint, ())
end

function GetDisplayName(displayIndex::Cint)
    ccall((:SDL_GetDisplayName, libSDL2_image), Cstring, (Cint,), displayIndex)
end

function GetDisplayBounds(displayIndex::Cint, rect)
    ccall((:SDL_GetDisplayBounds, libSDL2_image), Cint, (Cint, Ptr{SDL_Rect}), displayIndex, rect)
end

function GetDisplayDPI(displayIndex::Cint, ddpi, hdpi, vdpi)
    ccall((:SDL_GetDisplayDPI, libSDL2_image), Cint, (Cint, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), displayIndex, ddpi, hdpi, vdpi)
end

function GetDisplayUsableBounds(displayIndex::Cint, rect)
    ccall((:SDL_GetDisplayUsableBounds, libSDL2_image), Cint, (Cint, Ptr{SDL_Rect}), displayIndex, rect)
end

function GetNumDisplayModes(displayIndex::Cint)
    ccall((:SDL_GetNumDisplayModes, libSDL2_image), Cint, (Cint,), displayIndex)
end

function GetDisplayMode(displayIndex::Cint, modeIndex::Cint, mode)
    ccall((:SDL_GetDisplayMode, libSDL2_image), Cint, (Cint, Cint, Ptr{SDL_DisplayMode}), displayIndex, modeIndex, mode)
end

function GetDesktopDisplayMode(displayIndex::Cint, mode)
    ccall((:SDL_GetDesktopDisplayMode, libSDL2_image), Cint, (Cint, Ptr{SDL_DisplayMode}), displayIndex, mode)
end

function GetCurrentDisplayMode(displayIndex::Cint, mode)
    ccall((:SDL_GetCurrentDisplayMode, libSDL2_image), Cint, (Cint, Ptr{SDL_DisplayMode}), displayIndex, mode)
end

function GetClosestDisplayMode(displayIndex::Cint, mode, closest)
    ccall((:SDL_GetClosestDisplayMode, libSDL2_image), Ptr{SDL_DisplayMode}, (Cint, Ptr{SDL_DisplayMode}, Ptr{SDL_DisplayMode}), displayIndex, mode, closest)
end

function GetWindowDisplayIndex(window)
    ccall((:SDL_GetWindowDisplayIndex, libSDL2_image), Cint, (Ptr{SDL_Window},), window)
end

function SetWindowDisplayMode(window, mode)
    ccall((:SDL_SetWindowDisplayMode, libSDL2_image), Cint, (Ptr{SDL_Window}, Ptr{SDL_DisplayMode}), window, mode)
end

function GetWindowDisplayMode(window, mode)
    ccall((:SDL_GetWindowDisplayMode, libSDL2_image), Cint, (Ptr{SDL_Window}, Ptr{SDL_DisplayMode}), window, mode)
end

function GetWindowPixelFormat(window)
    ccall((:SDL_GetWindowPixelFormat, libSDL2_image), Uint32, (Ptr{SDL_Window},), window)
end

function CreateWindow(title, x::Cint, y::Cint, w::Cint, h::Cint, flags::Uint32)
    ccall((:SDL_CreateWindow, libSDL2_image), Ptr{SDL_Window}, (Cstring, Cint, Cint, Cint, Cint, Uint32), title, x, y, w, h, flags)
end

function CreateWindowFrom(data)
    ccall((:SDL_CreateWindowFrom, libSDL2_image), Ptr{SDL_Window}, (Ptr{Void},), data)
end

function GetWindowID(window)
    ccall((:SDL_GetWindowID, libSDL2_image), Uint32, (Ptr{SDL_Window},), window)
end

function GetWindowFromID(id::Uint32)
    ccall((:SDL_GetWindowFromID, libSDL2_image), Ptr{SDL_Window}, (Uint32,), id)
end

function GetWindowFlags(window)
    ccall((:SDL_GetWindowFlags, libSDL2_image), Uint32, (Ptr{SDL_Window},), window)
end

function SetWindowTitle(window, title)
    ccall((:SDL_SetWindowTitle, libSDL2_image), Void, (Ptr{SDL_Window}, Cstring), window, title)
end

function GetWindowTitle(window)
    ccall((:SDL_GetWindowTitle, libSDL2_image), Cstring, (Ptr{SDL_Window},), window)
end

function SetWindowIcon(window, icon)
    ccall((:SDL_SetWindowIcon, libSDL2_image), Void, (Ptr{SDL_Window}, Ptr{SDL_Surface}), window, icon)
end

function SetWindowData(window, name, userdata)
    ccall((:SDL_SetWindowData, libSDL2_image), Ptr{Void}, (Ptr{SDL_Window}, Cstring, Ptr{Void}), window, name, userdata)
end

function GetWindowData(window, name)
    ccall((:SDL_GetWindowData, libSDL2_image), Ptr{Void}, (Ptr{SDL_Window}, Cstring), window, name)
end

function SetWindowPosition(window, x::Cint, y::Cint)
    ccall((:SDL_SetWindowPosition, libSDL2_image), Void, (Ptr{SDL_Window}, Cint, Cint), window, x, y)
end

function GetWindowPosition(window, x, y)
    ccall((:SDL_GetWindowPosition, libSDL2_image), Void, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, x, y)
end

function SetWindowSize(window, w::Cint, h::Cint)
    ccall((:SDL_SetWindowSize, libSDL2_image), Void, (Ptr{SDL_Window}, Cint, Cint), window, w, h)
end

function GetWindowSize(window, w, h)
    ccall((:SDL_GetWindowSize, libSDL2_image), Void, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function GetWindowBordersSize(window, top, left, bottom, right)
    ccall((:SDL_GetWindowBordersSize, libSDL2_image), Cint, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), window, top, left, bottom, right)
end

function SetWindowMinimumSize(window, min_w::Cint, min_h::Cint)
    ccall((:SDL_SetWindowMinimumSize, libSDL2_image), Void, (Ptr{SDL_Window}, Cint, Cint), window, min_w, min_h)
end

function GetWindowMinimumSize(window, w, h)
    ccall((:SDL_GetWindowMinimumSize, libSDL2_image), Void, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SetWindowMaximumSize(window, max_w::Cint, max_h::Cint)
    ccall((:SDL_SetWindowMaximumSize, libSDL2_image), Void, (Ptr{SDL_Window}, Cint, Cint), window, max_w, max_h)
end

function GetWindowMaximumSize(window, w, h)
    ccall((:SDL_GetWindowMaximumSize, libSDL2_image), Void, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SetWindowBordered(window, bordered::SDL_bool)
    ccall((:SDL_SetWindowBordered, libSDL2_image), Void, (Ptr{SDL_Window}, SDL_bool), window, bordered)
end

function SetWindowResizable(window, resizable::SDL_bool)
    ccall((:SDL_SetWindowResizable, libSDL2_image), Void, (Ptr{SDL_Window}, SDL_bool), window, resizable)
end

function ShowWindow(window)
    ccall((:SDL_ShowWindow, libSDL2_image), Void, (Ptr{SDL_Window},), window)
end

function HideWindow(window)
    ccall((:SDL_HideWindow, libSDL2_image), Void, (Ptr{SDL_Window},), window)
end

function RaiseWindow(window)
    ccall((:SDL_RaiseWindow, libSDL2_image), Void, (Ptr{SDL_Window},), window)
end

function MaximizeWindow(window)
    ccall((:SDL_MaximizeWindow, libSDL2_image), Void, (Ptr{SDL_Window},), window)
end

function MinimizeWindow(window)
    ccall((:SDL_MinimizeWindow, libSDL2_image), Void, (Ptr{SDL_Window},), window)
end

function RestoreWindow(window)
    ccall((:SDL_RestoreWindow, libSDL2_image), Void, (Ptr{SDL_Window},), window)
end

function SetWindowFullscreen(window, flags::Uint32)
    ccall((:SDL_SetWindowFullscreen, libSDL2_image), Cint, (Ptr{SDL_Window}, Uint32), window, flags)
end

function GetWindowSurface(window)
    ccall((:SDL_GetWindowSurface, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_Window},), window)
end

function UpdateWindowSurface(window)
    ccall((:SDL_UpdateWindowSurface, libSDL2_image), Cint, (Ptr{SDL_Window},), window)
end

function UpdateWindowSurfaceRects(window, rects, numrects::Cint)
    ccall((:SDL_UpdateWindowSurfaceRects, libSDL2_image), Cint, (Ptr{SDL_Window}, Ptr{SDL_Rect}, Cint), window, rects, numrects)
end

function SetWindowGrab(window, grabbed::SDL_bool)
    ccall((:SDL_SetWindowGrab, libSDL2_image), Void, (Ptr{SDL_Window}, SDL_bool), window, grabbed)
end

function GetWindowGrab(window)
    ccall((:SDL_GetWindowGrab, libSDL2_image), SDL_bool, (Ptr{SDL_Window},), window)
end

function GetGrabbedWindow()
    ccall((:SDL_GetGrabbedWindow, libSDL2_image), Ptr{SDL_Window}, ())
end

function SetWindowBrightness(window, brightness::Cfloat)
    ccall((:SDL_SetWindowBrightness, libSDL2_image), Cint, (Ptr{SDL_Window}, Cfloat), window, brightness)
end

function GetWindowBrightness(window)
    ccall((:SDL_GetWindowBrightness, libSDL2_image), Cfloat, (Ptr{SDL_Window},), window)
end

function SetWindowOpacity(window, opacity::Cfloat)
    ccall((:SDL_SetWindowOpacity, libSDL2_image), Cint, (Ptr{SDL_Window}, Cfloat), window, opacity)
end

function GetWindowOpacity(window, out_opacity)
    ccall((:SDL_GetWindowOpacity, libSDL2_image), Cint, (Ptr{SDL_Window}, Ptr{Cfloat}), window, out_opacity)
end

function SetWindowModalFor(modal_window, parent_window)
    ccall((:SDL_SetWindowModalFor, libSDL2_image), Cint, (Ptr{SDL_Window}, Ptr{SDL_Window}), modal_window, parent_window)
end

function SetWindowInputFocus(window)
    ccall((:SDL_SetWindowInputFocus, libSDL2_image), Cint, (Ptr{SDL_Window},), window)
end

function SetWindowGammaRamp(window, red, green, blue)
    ccall((:SDL_SetWindowGammaRamp, libSDL2_image), Cint, (Ptr{SDL_Window}, Ptr{Uint16}, Ptr{Uint16}, Ptr{Uint16}), window, red, green, blue)
end

function GetWindowGammaRamp(window, red, green, blue)
    ccall((:SDL_GetWindowGammaRamp, libSDL2_image), Cint, (Ptr{SDL_Window}, Ptr{Uint16}, Ptr{Uint16}, Ptr{Uint16}), window, red, green, blue)
end

function SetWindowHitTest(window, callback::SDL_HitTest, callback_data)
    ccall((:SDL_SetWindowHitTest, libSDL2_image), Cint, (Ptr{SDL_Window}, SDL_HitTest, Ptr{Void}), window, callback, callback_data)
end

function DestroyWindow(window)
    ccall((:SDL_DestroyWindow, libSDL2_image), Void, (Ptr{SDL_Window},), window)
end

function IsScreenSaverEnabled()
    ccall((:SDL_IsScreenSaverEnabled, libSDL2_image), SDL_bool, ())
end

function EnableScreenSaver()
    ccall((:SDL_EnableScreenSaver, libSDL2_image), Void, ())
end

function DisableScreenSaver()
    ccall((:SDL_DisableScreenSaver, libSDL2_image), Void, ())
end

function GL_LoadLibrary(path)
    ccall((:SDL_GL_LoadLibrary, libSDL2_image), Cint, (Cstring,), path)
end

function GL_GetProcAddress(proc)
    ccall((:SDL_GL_GetProcAddress, libSDL2_image), Ptr{Void}, (Cstring,), proc)
end

function GL_UnloadLibrary()
    ccall((:SDL_GL_UnloadLibrary, libSDL2_image), Void, ())
end

function GL_ExtensionSupported(extension)
    ccall((:SDL_GL_ExtensionSupported, libSDL2_image), SDL_bool, (Cstring,), extension)
end

function GL_ResetAttributes()
    ccall((:SDL_GL_ResetAttributes, libSDL2_image), Void, ())
end

function GL_SetAttribute(attr::SDL_GLattr, value::Cint)
    ccall((:SDL_GL_SetAttribute, libSDL2_image), Cint, (SDL_GLattr, Cint), attr, value)
end

function GL_GetAttribute(attr::SDL_GLattr, value)
    ccall((:SDL_GL_GetAttribute, libSDL2_image), Cint, (SDL_GLattr, Ptr{Cint}), attr, value)
end

function GL_CreateContext(window)
    ccall((:SDL_GL_CreateContext, libSDL2_image), SDL_GLContext, (Ptr{SDL_Window},), window)
end

function GL_MakeCurrent(window, context::SDL_GLContext)
    ccall((:SDL_GL_MakeCurrent, libSDL2_image), Cint, (Ptr{SDL_Window}, SDL_GLContext), window, context)
end

function GL_GetCurrentWindow()
    ccall((:SDL_GL_GetCurrentWindow, libSDL2_image), Ptr{SDL_Window}, ())
end

function GL_GetCurrentContext()
    ccall((:SDL_GL_GetCurrentContext, libSDL2_image), SDL_GLContext, ())
end

function GL_GetDrawableSize(window, w, h)
    ccall((:SDL_GL_GetDrawableSize, libSDL2_image), Void, (Ptr{SDL_Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function GL_SetSwapInterval(interval::Cint)
    ccall((:SDL_GL_SetSwapInterval, libSDL2_image), Cint, (Cint,), interval)
end

function GL_GetSwapInterval()
    ccall((:SDL_GL_GetSwapInterval, libSDL2_image), Cint, ())
end

function GL_SwapWindow(window)
    ccall((:SDL_GL_SwapWindow, libSDL2_image), Void, (Ptr{SDL_Window},), window)
end

function GL_DeleteContext(context::SDL_GLContext)
    ccall((:SDL_GL_DeleteContext, libSDL2_image), Void, (SDL_GLContext,), context)
end

function GetKeyboardFocus()
    ccall((:SDL_GetKeyboardFocus, libSDL2_image), Ptr{SDL_Window}, ())
end

function GetKeyboardState(numkeys)
    ccall((:SDL_GetKeyboardState, libSDL2_image), Ptr{Uint8}, (Ptr{Cint},), numkeys)
end

function GetModState()
    ccall((:SDL_GetModState, libSDL2_image), SDL_Keymod, ())
end

function SetModState(modstate::SDL_Keymod)
    ccall((:SDL_SetModState, libSDL2_image), Void, (SDL_Keymod,), modstate)
end

function GetKeyFromScancode(scancode::SDL_Scancode)
    ccall((:SDL_GetKeyFromScancode, libSDL2_image), SDL_Keycode, (SDL_Scancode,), scancode)
end

function GetScancodeFromKey(key::SDL_Keycode)
    ccall((:SDL_GetScancodeFromKey, libSDL2_image), SDL_Scancode, (SDL_Keycode,), key)
end

function GetScancodeName(scancode::SDL_Scancode)
    ccall((:SDL_GetScancodeName, libSDL2_image), Cstring, (SDL_Scancode,), scancode)
end

function GetScancodeFromName(name)
    ccall((:SDL_GetScancodeFromName, libSDL2_image), SDL_Scancode, (Cstring,), name)
end

function GetKeyName(key::SDL_Keycode)
    ccall((:SDL_GetKeyName, libSDL2_image), Cstring, (SDL_Keycode,), key)
end

function GetKeyFromName(name)
    ccall((:SDL_GetKeyFromName, libSDL2_image), SDL_Keycode, (Cstring,), name)
end

function StartTextInput()
    ccall((:SDL_StartTextInput, libSDL2_image), Void, ())
end

function IsTextInputActive()
    ccall((:SDL_IsTextInputActive, libSDL2_image), SDL_bool, ())
end

function StopTextInput()
    ccall((:SDL_StopTextInput, libSDL2_image), Void, ())
end

function SetTextInputRect(rect)
    ccall((:SDL_SetTextInputRect, libSDL2_image), Void, (Ptr{SDL_Rect},), rect)
end

function HasScreenKeyboardSupport()
    ccall((:SDL_HasScreenKeyboardSupport, libSDL2_image), SDL_bool, ())
end

function IsScreenKeyboardShown(window)
    ccall((:SDL_IsScreenKeyboardShown, libSDL2_image), SDL_bool, (Ptr{SDL_Window},), window)
end

function GetMouseFocus()
    ccall((:SDL_GetMouseFocus, libSDL2_image), Ptr{SDL_Window}, ())
end

function GetMouseState(x, y)
    ccall((:SDL_GetMouseState, libSDL2_image), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function GetGlobalMouseState(x, y)
    ccall((:SDL_GetGlobalMouseState, libSDL2_image), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function GetRelativeMouseState(x, y)
    ccall((:SDL_GetRelativeMouseState, libSDL2_image), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function WarpMouseInWindow(window, x::Cint, y::Cint)
    ccall((:SDL_WarpMouseInWindow, libSDL2_image), Void, (Ptr{SDL_Window}, Cint, Cint), window, x, y)
end

function WarpMouseGlobal(x::Cint, y::Cint)
    ccall((:SDL_WarpMouseGlobal, libSDL2_image), Cint, (Cint, Cint), x, y)
end

function SetRelativeMouseMode(enabled::SDL_bool)
    ccall((:SDL_SetRelativeMouseMode, libSDL2_image), Cint, (SDL_bool,), enabled)
end

function CaptureMouse(enabled::SDL_bool)
    ccall((:SDL_CaptureMouse, libSDL2_image), Cint, (SDL_bool,), enabled)
end

function GetRelativeMouseMode()
    ccall((:SDL_GetRelativeMouseMode, libSDL2_image), SDL_bool, ())
end

function CreateCursor(data, mask, w::Cint, h::Cint, hot_x::Cint, hot_y::Cint)
    ccall((:SDL_CreateCursor, libSDL2_image), Ptr{SDL_Cursor}, (Ptr{Uint8}, Ptr{Uint8}, Cint, Cint, Cint, Cint), data, mask, w, h, hot_x, hot_y)
end

function CreateColorCursor(surface, hot_x::Cint, hot_y::Cint)
    ccall((:SDL_CreateColorCursor, libSDL2_image), Ptr{SDL_Cursor}, (Ptr{SDL_Surface}, Cint, Cint), surface, hot_x, hot_y)
end

function CreateSystemCursor(id::SDL_SystemCursor)
    ccall((:SDL_CreateSystemCursor, libSDL2_image), Ptr{SDL_Cursor}, (SDL_SystemCursor,), id)
end

function SetCursor(cursor)
    ccall((:SDL_SetCursor, libSDL2_image), Void, (Ptr{SDL_Cursor},), cursor)
end

function GetCursor()
    ccall((:SDL_GetCursor, libSDL2_image), Ptr{SDL_Cursor}, ())
end

function GetDefaultCursor()
    ccall((:SDL_GetDefaultCursor, libSDL2_image), Ptr{SDL_Cursor}, ())
end

function FreeCursor(cursor)
    ccall((:SDL_FreeCursor, libSDL2_image), Void, (Ptr{SDL_Cursor},), cursor)
end

function ShowCursor(toggle::Cint)
    ccall((:SDL_ShowCursor, libSDL2_image), Cint, (Cint,), toggle)
end

function LockJoysticks()
    ccall((:SDL_LockJoysticks, libSDL2_image), Void, ())
end

function UnlockJoysticks()
    ccall((:SDL_UnlockJoysticks, libSDL2_image), Void, ())
end

function NumJoysticks()
    ccall((:SDL_NumJoysticks, libSDL2_image), Cint, ())
end

function JoystickNameForIndex(device_index::Cint)
    ccall((:SDL_JoystickNameForIndex, libSDL2_image), Cstring, (Cint,), device_index)
end

function JoystickGetDeviceGUID(device_index::Cint)
    ccall((:SDL_JoystickGetDeviceGUID, libSDL2_image), SDL_JoystickGUID, (Cint,), device_index)
end

function JoystickGetDeviceVendor(device_index::Cint)
    ccall((:SDL_JoystickGetDeviceVendor, libSDL2_image), Uint16, (Cint,), device_index)
end

function JoystickGetDeviceProduct(device_index::Cint)
    ccall((:SDL_JoystickGetDeviceProduct, libSDL2_image), Uint16, (Cint,), device_index)
end

function JoystickGetDeviceProductVersion(device_index::Cint)
    ccall((:SDL_JoystickGetDeviceProductVersion, libSDL2_image), Uint16, (Cint,), device_index)
end

function JoystickGetDeviceType(device_index::Cint)
    ccall((:SDL_JoystickGetDeviceType, libSDL2_image), SDL_JoystickType, (Cint,), device_index)
end

function JoystickGetDeviceInstanceID(device_index::Cint)
    ccall((:SDL_JoystickGetDeviceInstanceID, libSDL2_image), SDL_JoystickID, (Cint,), device_index)
end

function JoystickOpen(device_index::Cint)
    ccall((:SDL_JoystickOpen, libSDL2_image), Ptr{SDL_Joystick}, (Cint,), device_index)
end

function JoystickFromInstanceID(joyid::SDL_JoystickID)
    ccall((:SDL_JoystickFromInstanceID, libSDL2_image), Ptr{SDL_Joystick}, (SDL_JoystickID,), joyid)
end

function JoystickName(joystick)
    ccall((:SDL_JoystickName, libSDL2_image), Cstring, (Ptr{SDL_Joystick},), joystick)
end

function JoystickGetGUID(joystick)
    ccall((:SDL_JoystickGetGUID, libSDL2_image), SDL_JoystickGUID, (Ptr{SDL_Joystick},), joystick)
end

function JoystickGetVendor(joystick)
    ccall((:SDL_JoystickGetVendor, libSDL2_image), Uint16, (Ptr{SDL_Joystick},), joystick)
end

function JoystickGetProduct(joystick)
    ccall((:SDL_JoystickGetProduct, libSDL2_image), Uint16, (Ptr{SDL_Joystick},), joystick)
end

function JoystickGetProductVersion(joystick)
    ccall((:SDL_JoystickGetProductVersion, libSDL2_image), Uint16, (Ptr{SDL_Joystick},), joystick)
end

function JoystickGetType(joystick)
    ccall((:SDL_JoystickGetType, libSDL2_image), SDL_JoystickType, (Ptr{SDL_Joystick},), joystick)
end

function JoystickGetGUIDString(guid::SDL_JoystickGUID, pszGUID, cbGUID::Cint)
    ccall((:SDL_JoystickGetGUIDString, libSDL2_image), Void, (SDL_JoystickGUID, Cstring, Cint), guid, pszGUID, cbGUID)
end

function JoystickGetGUIDFromString(pchGUID)
    ccall((:SDL_JoystickGetGUIDFromString, libSDL2_image), SDL_JoystickGUID, (Cstring,), pchGUID)
end

function JoystickGetAttached(joystick)
    ccall((:SDL_JoystickGetAttached, libSDL2_image), SDL_bool, (Ptr{SDL_Joystick},), joystick)
end

function JoystickInstanceID(joystick)
    ccall((:SDL_JoystickInstanceID, libSDL2_image), SDL_JoystickID, (Ptr{SDL_Joystick},), joystick)
end

function JoystickNumAxes(joystick)
    ccall((:SDL_JoystickNumAxes, libSDL2_image), Cint, (Ptr{SDL_Joystick},), joystick)
end

function JoystickNumBalls(joystick)
    ccall((:SDL_JoystickNumBalls, libSDL2_image), Cint, (Ptr{SDL_Joystick},), joystick)
end

function JoystickNumHats(joystick)
    ccall((:SDL_JoystickNumHats, libSDL2_image), Cint, (Ptr{SDL_Joystick},), joystick)
end

function JoystickNumButtons(joystick)
    ccall((:SDL_JoystickNumButtons, libSDL2_image), Cint, (Ptr{SDL_Joystick},), joystick)
end

function JoystickUpdate()
    ccall((:SDL_JoystickUpdate, libSDL2_image), Void, ())
end

function JoystickEventState(state::Cint)
    ccall((:SDL_JoystickEventState, libSDL2_image), Cint, (Cint,), state)
end

function JoystickGetAxis(joystick, axis::Cint)
    ccall((:SDL_JoystickGetAxis, libSDL2_image), Sint16, (Ptr{SDL_Joystick}, Cint), joystick, axis)
end

function JoystickGetAxisInitialState(joystick, axis::Cint, state)
    ccall((:SDL_JoystickGetAxisInitialState, libSDL2_image), SDL_bool, (Ptr{SDL_Joystick}, Cint, Ptr{Sint16}), joystick, axis, state)
end

function JoystickGetHat(joystick, hat::Cint)
    ccall((:SDL_JoystickGetHat, libSDL2_image), Uint8, (Ptr{SDL_Joystick}, Cint), joystick, hat)
end

function JoystickGetBall(joystick, ball::Cint, dx, dy)
    ccall((:SDL_JoystickGetBall, libSDL2_image), Cint, (Ptr{SDL_Joystick}, Cint, Ptr{Cint}, Ptr{Cint}), joystick, ball, dx, dy)
end

function JoystickGetButton(joystick, button::Cint)
    ccall((:SDL_JoystickGetButton, libSDL2_image), Uint8, (Ptr{SDL_Joystick}, Cint), joystick, button)
end

function JoystickClose(joystick)
    ccall((:SDL_JoystickClose, libSDL2_image), Void, (Ptr{SDL_Joystick},), joystick)
end

function JoystickCurrentPowerLevel(joystick)
    ccall((:SDL_JoystickCurrentPowerLevel, libSDL2_image), SDL_JoystickPowerLevel, (Ptr{SDL_Joystick},), joystick)
end

function GameControllerAddMappingsFromRW(rw, freerw::Cint)
    ccall((:SDL_GameControllerAddMappingsFromRW, libSDL2_image), Cint, (Ptr{SDL_RWops}, Cint), rw, freerw)
end

function GameControllerAddMapping(mappingString)
    ccall((:SDL_GameControllerAddMapping, libSDL2_image), Cint, (Cstring,), mappingString)
end

function GameControllerNumMappings()
    ccall((:SDL_GameControllerNumMappings, libSDL2_image), Cint, ())
end

function GameControllerMappingForIndex(mapping_index::Cint)
    ccall((:SDL_GameControllerMappingForIndex, libSDL2_image), Cstring, (Cint,), mapping_index)
end

function GameControllerMappingForGUID(guid::SDL_JoystickGUID)
    ccall((:SDL_GameControllerMappingForGUID, libSDL2_image), Cstring, (SDL_JoystickGUID,), guid)
end

function GameControllerMapping(gamecontroller)
    ccall((:SDL_GameControllerMapping, libSDL2_image), Cstring, (Ptr{SDL_GameController},), gamecontroller)
end

function IsGameController(joystick_index::Cint)
    ccall((:SDL_IsGameController, libSDL2_image), SDL_bool, (Cint,), joystick_index)
end

function GameControllerNameForIndex(joystick_index::Cint)
    ccall((:SDL_GameControllerNameForIndex, libSDL2_image), Cstring, (Cint,), joystick_index)
end

function GameControllerOpen(joystick_index::Cint)
    ccall((:SDL_GameControllerOpen, libSDL2_image), Ptr{SDL_GameController}, (Cint,), joystick_index)
end

function GameControllerFromInstanceID(joyid::SDL_JoystickID)
    ccall((:SDL_GameControllerFromInstanceID, libSDL2_image), Ptr{SDL_GameController}, (SDL_JoystickID,), joyid)
end

function GameControllerName(gamecontroller)
    ccall((:SDL_GameControllerName, libSDL2_image), Cstring, (Ptr{SDL_GameController},), gamecontroller)
end

function GameControllerGetVendor(gamecontroller)
    ccall((:SDL_GameControllerGetVendor, libSDL2_image), Uint16, (Ptr{SDL_GameController},), gamecontroller)
end

function GameControllerGetProduct(gamecontroller)
    ccall((:SDL_GameControllerGetProduct, libSDL2_image), Uint16, (Ptr{SDL_GameController},), gamecontroller)
end

function GameControllerGetProductVersion(gamecontroller)
    ccall((:SDL_GameControllerGetProductVersion, libSDL2_image), Uint16, (Ptr{SDL_GameController},), gamecontroller)
end

function GameControllerGetAttached(gamecontroller)
    ccall((:SDL_GameControllerGetAttached, libSDL2_image), SDL_bool, (Ptr{SDL_GameController},), gamecontroller)
end

function GameControllerGetJoystick(gamecontroller)
    ccall((:SDL_GameControllerGetJoystick, libSDL2_image), Ptr{SDL_Joystick}, (Ptr{SDL_GameController},), gamecontroller)
end

function GameControllerEventState(state::Cint)
    ccall((:SDL_GameControllerEventState, libSDL2_image), Cint, (Cint,), state)
end

function GameControllerUpdate()
    ccall((:SDL_GameControllerUpdate, libSDL2_image), Void, ())
end

function GameControllerGetAxisFromString(pchString)
    ccall((:SDL_GameControllerGetAxisFromString, libSDL2_image), SDL_GameControllerAxis, (Cstring,), pchString)
end

function GameControllerGetStringForAxis(axis::SDL_GameControllerAxis)
    ccall((:SDL_GameControllerGetStringForAxis, libSDL2_image), Cstring, (SDL_GameControllerAxis,), axis)
end

function GameControllerGetBindForAxis(gamecontroller, axis::SDL_GameControllerAxis)
    ccall((:SDL_GameControllerGetBindForAxis, libSDL2_image), SDL_GameControllerButtonBind, (Ptr{SDL_GameController}, SDL_GameControllerAxis), gamecontroller, axis)
end

function GameControllerGetAxis(gamecontroller, axis::SDL_GameControllerAxis)
    ccall((:SDL_GameControllerGetAxis, libSDL2_image), Sint16, (Ptr{SDL_GameController}, SDL_GameControllerAxis), gamecontroller, axis)
end

function GameControllerGetButtonFromString(pchString)
    ccall((:SDL_GameControllerGetButtonFromString, libSDL2_image), SDL_GameControllerButton, (Cstring,), pchString)
end

function GameControllerGetStringForButton(button::SDL_GameControllerButton)
    ccall((:SDL_GameControllerGetStringForButton, libSDL2_image), Cstring, (SDL_GameControllerButton,), button)
end

function GameControllerGetBindForButton(gamecontroller, button::SDL_GameControllerButton)
    ccall((:SDL_GameControllerGetBindForButton, libSDL2_image), SDL_GameControllerButtonBind, (Ptr{SDL_GameController}, SDL_GameControllerButton), gamecontroller, button)
end

function GameControllerGetButton(gamecontroller, button::SDL_GameControllerButton)
    ccall((:SDL_GameControllerGetButton, libSDL2_image), Uint8, (Ptr{SDL_GameController}, SDL_GameControllerButton), gamecontroller, button)
end

function GameControllerClose(gamecontroller)
    ccall((:SDL_GameControllerClose, libSDL2_image), Void, (Ptr{SDL_GameController},), gamecontroller)
end

function GetNumTouchDevices()
    ccall((:SDL_GetNumTouchDevices, libSDL2_image), Cint, ())
end

function GetTouchDevice(index::Cint)
    ccall((:SDL_GetTouchDevice, libSDL2_image), SDL_TouchID, (Cint,), index)
end

function GetNumTouchFingers(touchID::SDL_TouchID)
    ccall((:SDL_GetNumTouchFingers, libSDL2_image), Cint, (SDL_TouchID,), touchID)
end

function GetTouchFinger(touchID::SDL_TouchID, index::Cint)
    ccall((:SDL_GetTouchFinger, libSDL2_image), Ptr{SDL_Finger}, (SDL_TouchID, Cint), touchID, index)
end

function RecordGesture(touchId::SDL_TouchID)
    ccall((:SDL_RecordGesture, libSDL2_image), Cint, (SDL_TouchID,), touchId)
end

function SaveAllDollarTemplates(dst)
    ccall((:SDL_SaveAllDollarTemplates, libSDL2_image), Cint, (Ptr{SDL_RWops},), dst)
end

function SaveDollarTemplate(gestureId::SDL_GestureID, dst)
    ccall((:SDL_SaveDollarTemplate, libSDL2_image), Cint, (SDL_GestureID, Ptr{SDL_RWops}), gestureId, dst)
end

function LoadDollarTemplates(touchId::SDL_TouchID, src)
    ccall((:SDL_LoadDollarTemplates, libSDL2_image), Cint, (SDL_TouchID, Ptr{SDL_RWops}), touchId, src)
end

function PumpEvents()
    ccall((:SDL_PumpEvents, libSDL2_image), Void, ())
end

function PeepEvents(events, numevents::Cint, action::SDL_eventaction, minType::Uint32, maxType::Uint32)
    ccall((:SDL_PeepEvents, libSDL2_image), Cint, (Ptr{SDL_Event}, Cint, SDL_eventaction, Uint32, Uint32), events, numevents, action, minType, maxType)
end

function HasEvent(_type::Uint32)
    ccall((:SDL_HasEvent, libSDL2_image), SDL_bool, (Uint32,), _type)
end

function HasEvents(minType::Uint32, maxType::Uint32)
    ccall((:SDL_HasEvents, libSDL2_image), SDL_bool, (Uint32, Uint32), minType, maxType)
end

function FlushEvent(_type::Uint32)
    ccall((:SDL_FlushEvent, libSDL2_image), Void, (Uint32,), _type)
end

function FlushEvents(minType::Uint32, maxType::Uint32)
    ccall((:SDL_FlushEvents, libSDL2_image), Void, (Uint32, Uint32), minType, maxType)
end

function PollEvent(event)
    ccall((:SDL_PollEvent, libSDL2_image), Cint, (Ptr{SDL_Event},), event)
end

function WaitEvent(event)
    ccall((:SDL_WaitEvent, libSDL2_image), Cint, (Ptr{SDL_Event},), event)
end

function WaitEventTimeout(event, timeout::Cint)
    ccall((:SDL_WaitEventTimeout, libSDL2_image), Cint, (Ptr{SDL_Event}, Cint), event, timeout)
end

function PushEvent(event)
    ccall((:SDL_PushEvent, libSDL2_image), Cint, (Ptr{SDL_Event},), event)
end

function SetEventFilter(filter::SDL_EventFilter, userdata)
    ccall((:SDL_SetEventFilter, libSDL2_image), Void, (SDL_EventFilter, Ptr{Void}), filter, userdata)
end

function GetEventFilter(filter, userdata)
    ccall((:SDL_GetEventFilter, libSDL2_image), SDL_bool, (Ptr{SDL_EventFilter}, Ptr{Ptr{Void}}), filter, userdata)
end

function AddEventWatch(filter::SDL_EventFilter, userdata)
    ccall((:SDL_AddEventWatch, libSDL2_image), Void, (SDL_EventFilter, Ptr{Void}), filter, userdata)
end

function DelEventWatch(filter::SDL_EventFilter, userdata)
    ccall((:SDL_DelEventWatch, libSDL2_image), Void, (SDL_EventFilter, Ptr{Void}), filter, userdata)
end

function FilterEvents(filter::SDL_EventFilter, userdata)
    ccall((:SDL_FilterEvents, libSDL2_image), Void, (SDL_EventFilter, Ptr{Void}), filter, userdata)
end

function EventState(_type::Uint32, state::Cint)
    ccall((:SDL_EventState, libSDL2_image), Uint8, (Uint32, Cint), _type, state)
end

function RegisterEvents(numevents::Cint)
    ccall((:SDL_RegisterEvents, libSDL2_image), Uint32, (Cint,), numevents)
end

function GetBasePath()
    ccall((:SDL_GetBasePath, libSDL2_image), Cstring, ())
end

function GetPrefPath(org, app)
    ccall((:SDL_GetPrefPath, libSDL2_image), Cstring, (Cstring, Cstring), org, app)
end

function NumHaptics()
    ccall((:SDL_NumHaptics, libSDL2_image), Cint, ())
end

function HapticName(device_index::Cint)
    ccall((:SDL_HapticName, libSDL2_image), Cstring, (Cint,), device_index)
end

function HapticOpen(device_index::Cint)
    ccall((:SDL_HapticOpen, libSDL2_image), Ptr{SDL_Haptic}, (Cint,), device_index)
end

function HapticOpened(device_index::Cint)
    ccall((:SDL_HapticOpened, libSDL2_image), Cint, (Cint,), device_index)
end

function HapticIndex(haptic)
    ccall((:SDL_HapticIndex, libSDL2_image), Cint, (Ptr{SDL_Haptic},), haptic)
end

function MouseIsHaptic()
    ccall((:SDL_MouseIsHaptic, libSDL2_image), Cint, ())
end

function HapticOpenFromMouse()
    ccall((:SDL_HapticOpenFromMouse, libSDL2_image), Ptr{SDL_Haptic}, ())
end

function JoystickIsHaptic(joystick)
    ccall((:SDL_JoystickIsHaptic, libSDL2_image), Cint, (Ptr{SDL_Joystick},), joystick)
end

function HapticOpenFromJoystick(joystick)
    ccall((:SDL_HapticOpenFromJoystick, libSDL2_image), Ptr{SDL_Haptic}, (Ptr{SDL_Joystick},), joystick)
end

function HapticClose(haptic)
    ccall((:SDL_HapticClose, libSDL2_image), Void, (Ptr{SDL_Haptic},), haptic)
end

function HapticNumEffects(haptic)
    ccall((:SDL_HapticNumEffects, libSDL2_image), Cint, (Ptr{SDL_Haptic},), haptic)
end

function HapticNumEffectsPlaying(haptic)
    ccall((:SDL_HapticNumEffectsPlaying, libSDL2_image), Cint, (Ptr{SDL_Haptic},), haptic)
end

function HapticQuery(haptic)
    ccall((:SDL_HapticQuery, libSDL2_image), UInt32, (Ptr{SDL_Haptic},), haptic)
end

function HapticNumAxes(haptic)
    ccall((:SDL_HapticNumAxes, libSDL2_image), Cint, (Ptr{SDL_Haptic},), haptic)
end

function HapticEffectSupported(haptic, effect)
    ccall((:SDL_HapticEffectSupported, libSDL2_image), Cint, (Ptr{SDL_Haptic}, Ptr{SDL_HapticEffect}), haptic, effect)
end

function HapticNewEffect(haptic, effect)
    ccall((:SDL_HapticNewEffect, libSDL2_image), Cint, (Ptr{SDL_Haptic}, Ptr{SDL_HapticEffect}), haptic, effect)
end

function HapticUpdateEffect(haptic, effect::Cint, data)
    ccall((:SDL_HapticUpdateEffect, libSDL2_image), Cint, (Ptr{SDL_Haptic}, Cint, Ptr{SDL_HapticEffect}), haptic, effect, data)
end

function HapticRunEffect(haptic, effect::Cint, iterations::Uint32)
    ccall((:SDL_HapticRunEffect, libSDL2_image), Cint, (Ptr{SDL_Haptic}, Cint, Uint32), haptic, effect, iterations)
end

function HapticStopEffect(haptic, effect::Cint)
    ccall((:SDL_HapticStopEffect, libSDL2_image), Cint, (Ptr{SDL_Haptic}, Cint), haptic, effect)
end

function HapticDestroyEffect(haptic, effect::Cint)
    ccall((:SDL_HapticDestroyEffect, libSDL2_image), Void, (Ptr{SDL_Haptic}, Cint), haptic, effect)
end

function HapticGetEffectStatus(haptic, effect::Cint)
    ccall((:SDL_HapticGetEffectStatus, libSDL2_image), Cint, (Ptr{SDL_Haptic}, Cint), haptic, effect)
end

function HapticSetGain(haptic, gain::Cint)
    ccall((:SDL_HapticSetGain, libSDL2_image), Cint, (Ptr{SDL_Haptic}, Cint), haptic, gain)
end

function HapticSetAutocenter(haptic, autocenter::Cint)
    ccall((:SDL_HapticSetAutocenter, libSDL2_image), Cint, (Ptr{SDL_Haptic}, Cint), haptic, autocenter)
end

function HapticPause(haptic)
    ccall((:SDL_HapticPause, libSDL2_image), Cint, (Ptr{SDL_Haptic},), haptic)
end

function HapticUnpause(haptic)
    ccall((:SDL_HapticUnpause, libSDL2_image), Cint, (Ptr{SDL_Haptic},), haptic)
end

function HapticStopAll(haptic)
    ccall((:SDL_HapticStopAll, libSDL2_image), Cint, (Ptr{SDL_Haptic},), haptic)
end

function HapticRumbleSupported(haptic)
    ccall((:SDL_HapticRumbleSupported, libSDL2_image), Cint, (Ptr{SDL_Haptic},), haptic)
end

function HapticRumbleInit(haptic)
    ccall((:SDL_HapticRumbleInit, libSDL2_image), Cint, (Ptr{SDL_Haptic},), haptic)
end

function HapticRumblePlay(haptic, strength::Cfloat, length::Uint32)
    ccall((:SDL_HapticRumblePlay, libSDL2_image), Cint, (Ptr{SDL_Haptic}, Cfloat, Uint32), haptic, strength, length)
end

function HapticRumbleStop(haptic)
    ccall((:SDL_HapticRumbleStop, libSDL2_image), Cint, (Ptr{SDL_Haptic},), haptic)
end

function SetHintWithPriority(name, value, priority::SDL_HintPriority)
    ccall((:SDL_SetHintWithPriority, libSDL2_image), SDL_bool, (Cstring, Cstring, SDL_HintPriority), name, value, priority)
end

function SetHint(name, value)
    ccall((:SDL_SetHint, libSDL2_image), SDL_bool, (Cstring, Cstring), name, value)
end

function GetHint(name)
    ccall((:SDL_GetHint, libSDL2_image), Cstring, (Cstring,), name)
end

function GetHintBoolean(name, default_value::SDL_bool)
    ccall((:SDL_GetHintBoolean, libSDL2_image), SDL_bool, (Cstring, SDL_bool), name, default_value)
end

function AddHintCallback(name, callback::SDL_HintCallback, userdata)
    ccall((:SDL_AddHintCallback, libSDL2_image), Void, (Cstring, SDL_HintCallback, Ptr{Void}), name, callback, userdata)
end

function DelHintCallback(name, callback::SDL_HintCallback, userdata)
    ccall((:SDL_DelHintCallback, libSDL2_image), Void, (Cstring, SDL_HintCallback, Ptr{Void}), name, callback, userdata)
end

function ClearHints()
    ccall((:SDL_ClearHints, libSDL2_image), Void, ())
end

function LoadObject(sofile)
    ccall((:SDL_LoadObject, libSDL2_image), Ptr{Void}, (Cstring,), sofile)
end

function LoadFunction(handle, name)
    ccall((:SDL_LoadFunction, libSDL2_image), Ptr{Void}, (Ptr{Void}, Cstring), handle, name)
end

function UnloadObject(handle)
    ccall((:SDL_UnloadObject, libSDL2_image), Void, (Ptr{Void},), handle)
end

function LogSetAllPriority(priority::SDL_LogPriority)
    ccall((:SDL_LogSetAllPriority, libSDL2_image), Void, (SDL_LogPriority,), priority)
end

function LogSetPriority(category::Cint, priority::SDL_LogPriority)
    ccall((:SDL_LogSetPriority, libSDL2_image), Void, (Cint, SDL_LogPriority), category, priority)
end

function LogGetPriority(category::Cint)
    ccall((:SDL_LogGetPriority, libSDL2_image), SDL_LogPriority, (Cint,), category)
end

function LogResetPriorities()
    ccall((:SDL_LogResetPriorities, libSDL2_image), Void, ())
end

function LogMessageV(category::Cint, priority::SDL_LogPriority, fmt, ap::va_list)
    ccall((:SDL_LogMessageV, libSDL2_image), Void, (Cint, SDL_LogPriority, Cstring, va_list), category, priority, fmt, ap)
end

function LogGetOutputFunction(callback, userdata)
    ccall((:SDL_LogGetOutputFunction, libSDL2_image), Void, (Ptr{SDL_LogOutputFunction}, Ptr{Ptr{Void}}), callback, userdata)
end

function LogSetOutputFunction(callback::SDL_LogOutputFunction, userdata)
    ccall((:SDL_LogSetOutputFunction, libSDL2_image), Void, (SDL_LogOutputFunction, Ptr{Void}), callback, userdata)
end

function ShowMessageBox(messageboxdata, buttonid)
    ccall((:SDL_ShowMessageBox, libSDL2_image), Cint, (Ptr{SDL_MessageBoxData}, Ptr{Cint}), messageboxdata, buttonid)
end

function ShowSimpleMessageBox(flags::Uint32, title, message, window)
    ccall((:SDL_ShowSimpleMessageBox, libSDL2_image), Cint, (Uint32, Cstring, Cstring, Ptr{SDL_Window}), flags, title, message, window)
end

function GetPowerInfo(secs, pct)
    ccall((:SDL_GetPowerInfo, libSDL2_image), SDL_PowerState, (Ptr{Cint}, Ptr{Cint}), secs, pct)
end

function GetNumRenderDrivers()
    ccall((:SDL_GetNumRenderDrivers, libSDL2_image), Cint, ())
end

function GetRenderDriverInfo(index::Cint, info)
    ccall((:SDL_GetRenderDriverInfo, libSDL2_image), Cint, (Cint, Ptr{SDL_RendererInfo}), index, info)
end

function CreateWindowAndRenderer(width::Cint, height::Cint, window_flags::Uint32, window, renderer)
    ccall((:SDL_CreateWindowAndRenderer, libSDL2_image), Cint, (Cint, Cint, Uint32, Ptr{Ptr{SDL_Window}}, Ptr{Ptr{SDL_Renderer}}), width, height, window_flags, window, renderer)
end

function CreateRenderer(window, index::Cint, flags::Uint32)
    ccall((:SDL_CreateRenderer, libSDL2_image), Ptr{SDL_Renderer}, (Ptr{SDL_Window}, Cint, Uint32), window, index, flags)
end

function CreateSoftwareRenderer(surface)
    ccall((:SDL_CreateSoftwareRenderer, libSDL2_image), Ptr{SDL_Renderer}, (Ptr{SDL_Surface},), surface)
end

function GetRenderer(window)
    ccall((:SDL_GetRenderer, libSDL2_image), Ptr{SDL_Renderer}, (Ptr{SDL_Window},), window)
end

function GetRendererInfo(renderer, info)
    ccall((:SDL_GetRendererInfo, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_RendererInfo}), renderer, info)
end

function GetRendererOutputSize(renderer, w, h)
    ccall((:SDL_GetRendererOutputSize, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{Cint}, Ptr{Cint}), renderer, w, h)
end

function CreateTexture(renderer, format::Uint32, access::Cint, w::Cint, h::Cint)
    ccall((:SDL_CreateTexture, libSDL2_image), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Uint32, Cint, Cint, Cint), renderer, format, access, w, h)
end

function CreateTextureFromSurface(renderer, surface)
    ccall((:SDL_CreateTextureFromSurface, libSDL2_image), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Ptr{SDL_Surface}), renderer, surface)
end

function QueryTexture(texture, format, access, w, h)
    ccall((:SDL_QueryTexture, libSDL2_image), Cint, (Ptr{SDL_Texture}, Ptr{Uint32}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), texture, format, access, w, h)
end

function SetTextureColorMod(texture, r::Uint8, g::Uint8, b::Uint8)
    ccall((:SDL_SetTextureColorMod, libSDL2_image), Cint, (Ptr{SDL_Texture}, Uint8, Uint8, Uint8), texture, r, g, b)
end

function GetTextureColorMod(texture, r, g, b)
    ccall((:SDL_GetTextureColorMod, libSDL2_image), Cint, (Ptr{SDL_Texture}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), texture, r, g, b)
end

function SetTextureAlphaMod(texture, alpha::Uint8)
    ccall((:SDL_SetTextureAlphaMod, libSDL2_image), Cint, (Ptr{SDL_Texture}, Uint8), texture, alpha)
end

function GetTextureAlphaMod(texture, alpha)
    ccall((:SDL_GetTextureAlphaMod, libSDL2_image), Cint, (Ptr{SDL_Texture}, Ptr{Uint8}), texture, alpha)
end

function SetTextureBlendMode(texture, blendMode::SDL_BlendMode)
    ccall((:SDL_SetTextureBlendMode, libSDL2_image), Cint, (Ptr{SDL_Texture}, SDL_BlendMode), texture, blendMode)
end

function GetTextureBlendMode(texture, blendMode)
    ccall((:SDL_GetTextureBlendMode, libSDL2_image), Cint, (Ptr{SDL_Texture}, Ptr{SDL_BlendMode}), texture, blendMode)
end

function UpdateTexture(texture, rect, pixels, pitch::Cint)
    ccall((:SDL_UpdateTexture, libSDL2_image), Cint, (Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{Void}, Cint), texture, rect, pixels, pitch)
end

function UpdateYUVTexture(texture, rect, Yplane, Ypitch::Cint, Uplane, Upitch::Cint, Vplane, Vpitch::Cint)
    ccall((:SDL_UpdateYUVTexture, libSDL2_image), Cint, (Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{Uint8}, Cint, Ptr{Uint8}, Cint, Ptr{Uint8}, Cint), texture, rect, Yplane, Ypitch, Uplane, Upitch, Vplane, Vpitch)
end

function LockTexture(texture, rect, pixels, pitch)
    ccall((:SDL_LockTexture, libSDL2_image), Cint, (Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{Ptr{Void}}, Ptr{Cint}), texture, rect, pixels, pitch)
end

function UnlockTexture(texture)
    ccall((:SDL_UnlockTexture, libSDL2_image), Void, (Ptr{SDL_Texture},), texture)
end

function RenderTargetSupported(renderer)
    ccall((:SDL_RenderTargetSupported, libSDL2_image), SDL_bool, (Ptr{SDL_Renderer},), renderer)
end

function SetRenderTarget(renderer, texture)
    ccall((:SDL_SetRenderTarget, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}), renderer, texture)
end

function GetRenderTarget(renderer)
    ccall((:SDL_GetRenderTarget, libSDL2_image), Ptr{SDL_Texture}, (Ptr{SDL_Renderer},), renderer)
end

function RenderSetLogicalSize(renderer, w::Cint, h::Cint)
    ccall((:SDL_RenderSetLogicalSize, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Cint, Cint), renderer, w, h)
end

function RenderGetLogicalSize(renderer, w, h)
    ccall((:SDL_RenderGetLogicalSize, libSDL2_image), Void, (Ptr{SDL_Renderer}, Ptr{Cint}, Ptr{Cint}), renderer, w, h)
end

function RenderSetIntegerScale(renderer, enable::SDL_bool)
    ccall((:SDL_RenderSetIntegerScale, libSDL2_image), Cint, (Ptr{SDL_Renderer}, SDL_bool), renderer, enable)
end

function RenderGetIntegerScale(renderer)
    ccall((:SDL_RenderGetIntegerScale, libSDL2_image), SDL_bool, (Ptr{SDL_Renderer},), renderer)
end

function RenderSetViewport(renderer, rect)
    ccall((:SDL_RenderSetViewport, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function RenderGetViewport(renderer, rect)
    ccall((:SDL_RenderGetViewport, libSDL2_image), Void, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function RenderSetClipRect(renderer, rect)
    ccall((:SDL_RenderSetClipRect, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function RenderGetClipRect(renderer, rect)
    ccall((:SDL_RenderGetClipRect, libSDL2_image), Void, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function RenderIsClipEnabled(renderer)
    ccall((:SDL_RenderIsClipEnabled, libSDL2_image), SDL_bool, (Ptr{SDL_Renderer},), renderer)
end

function RenderSetScale(renderer, scaleX::Cfloat, scaleY::Cfloat)
    ccall((:SDL_RenderSetScale, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Cfloat, Cfloat), renderer, scaleX, scaleY)
end

function RenderGetScale(renderer, scaleX, scaleY)
    ccall((:SDL_RenderGetScale, libSDL2_image), Void, (Ptr{SDL_Renderer}, Ptr{Cfloat}, Ptr{Cfloat}), renderer, scaleX, scaleY)
end

function SetRenderDrawColor(renderer, r::Uint8, g::Uint8, b::Uint8, a::Uint8)
    ccall((:SDL_SetRenderDrawColor, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Uint8, Uint8, Uint8, Uint8), renderer, r, g, b, a)
end

function GetRenderDrawColor(renderer, r, g, b, a)
    ccall((:SDL_GetRenderDrawColor, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), renderer, r, g, b, a)
end

function SetRenderDrawBlendMode(renderer, blendMode::SDL_BlendMode)
    ccall((:SDL_SetRenderDrawBlendMode, libSDL2_image), Cint, (Ptr{SDL_Renderer}, SDL_BlendMode), renderer, blendMode)
end

function GetRenderDrawBlendMode(renderer, blendMode)
    ccall((:SDL_GetRenderDrawBlendMode, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_BlendMode}), renderer, blendMode)
end

function RenderClear(renderer)
    ccall((:SDL_RenderClear, libSDL2_image), Cint, (Ptr{SDL_Renderer},), renderer)
end

function RenderDrawPoint(renderer, x::Cint, y::Cint)
    ccall((:SDL_RenderDrawPoint, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Cint, Cint), renderer, x, y)
end

function RenderDrawPoints(renderer, points, count::Cint)
    ccall((:SDL_RenderDrawPoints, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Point}, Cint), renderer, points, count)
end

function RenderDrawLine(renderer, x1::Cint, y1::Cint, x2::Cint, y2::Cint)
    ccall((:SDL_RenderDrawLine, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Cint, Cint, Cint, Cint), renderer, x1, y1, x2, y2)
end

function RenderDrawLines(renderer, points, count::Cint)
    ccall((:SDL_RenderDrawLines, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Point}, Cint), renderer, points, count)
end

function RenderDrawRect(renderer, rect)
    ccall((:SDL_RenderDrawRect, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function RenderDrawRects(renderer, rects, count::Cint)
    ccall((:SDL_RenderDrawRects, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}, Cint), renderer, rects, count)
end

function RenderFillRect(renderer, rect)
    ccall((:SDL_RenderFillRect, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}), renderer, rect)
end

function RenderFillRects(renderer, rects, count::Cint)
    ccall((:SDL_RenderFillRects, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}, Cint), renderer, rects, count)
end

function RenderCopy(renderer, texture, srcrect, dstrect)
    ccall((:SDL_RenderCopy, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{SDL_Rect}), renderer, texture, srcrect, dstrect)
end

function RenderCopyEx(renderer, texture, srcrect, dstrect, angle::Cdouble, center, flip::SDL_RendererFlip)
    ccall((:SDL_RenderCopyEx, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Texture}, Ptr{SDL_Rect}, Ptr{SDL_Rect}, Cdouble, Ptr{SDL_Point}, SDL_RendererFlip), renderer, texture, srcrect, dstrect, angle, center, flip)
end

function RenderReadPixels(renderer, rect, format::Uint32, pixels, pitch::Cint)
    ccall((:SDL_RenderReadPixels, libSDL2_image), Cint, (Ptr{SDL_Renderer}, Ptr{SDL_Rect}, Uint32, Ptr{Void}, Cint), renderer, rect, format, pixels, pitch)
end

function RenderPresent(renderer)
    ccall((:SDL_RenderPresent, libSDL2_image), Void, (Ptr{SDL_Renderer},), renderer)
end

function DestroyTexture(texture)
    ccall((:SDL_DestroyTexture, libSDL2_image), Void, (Ptr{SDL_Texture},), texture)
end

function DestroyRenderer(renderer)
    ccall((:SDL_DestroyRenderer, libSDL2_image), Void, (Ptr{SDL_Renderer},), renderer)
end

function GL_BindTexture(texture, texw, texh)
    ccall((:SDL_GL_BindTexture, libSDL2_image), Cint, (Ptr{SDL_Texture}, Ptr{Cfloat}, Ptr{Cfloat}), texture, texw, texh)
end

function GL_UnbindTexture(texture)
    ccall((:SDL_GL_UnbindTexture, libSDL2_image), Cint, (Ptr{SDL_Texture},), texture)
end

function RenderGetMetalLayer(renderer)
    ccall((:SDL_RenderGetMetalLayer, libSDL2_image), Ptr{Void}, (Ptr{SDL_Renderer},), renderer)
end

function RenderGetMetalCommandEncoder(renderer)
    ccall((:SDL_RenderGetMetalCommandEncoder, libSDL2_image), Ptr{Void}, (Ptr{SDL_Renderer},), renderer)
end

function CreateShapedWindow(title, x::UInt32, y::UInt32, w::UInt32, h::UInt32, flags::Uint32)
    ccall((:SDL_CreateShapedWindow, libSDL2_image), Ptr{SDL_Window}, (Cstring, UInt32, UInt32, UInt32, UInt32, Uint32), title, x, y, w, h, flags)
end

function IsShapedWindow(window)
    ccall((:SDL_IsShapedWindow, libSDL2_image), SDL_bool, (Ptr{SDL_Window},), window)
end

function SetWindowShape(window, shape, shape_mode)
    ccall((:SDL_SetWindowShape, libSDL2_image), Cint, (Ptr{SDL_Window}, Ptr{SDL_Surface}, Ptr{SDL_WindowShapeMode}), window, shape, shape_mode)
end

function GetShapedWindowMode(window, shape_mode)
    ccall((:SDL_GetShapedWindowMode, libSDL2_image), Cint, (Ptr{SDL_Window}, Ptr{SDL_WindowShapeMode}), window, shape_mode)
end

function GetTicks()
    ccall((:SDL_GetTicks, libSDL2_image), Uint32, ())
end

function GetPerformanceCounter()
    ccall((:SDL_GetPerformanceCounter, libSDL2_image), Uint64, ())
end

function GetPerformanceFrequency()
    ccall((:SDL_GetPerformanceFrequency, libSDL2_image), Uint64, ())
end

function Delay(ms::Uint32)
    ccall((:SDL_Delay, libSDL2_image), Void, (Uint32,), ms)
end

function AddTimer(interval::Uint32, callback::SDL_TimerCallback, param)
    ccall((:SDL_AddTimer, libSDL2_image), SDL_TimerID, (Uint32, SDL_TimerCallback, Ptr{Void}), interval, callback, param)
end

function RemoveTimer(id::SDL_TimerID)
    ccall((:SDL_RemoveTimer, libSDL2_image), SDL_bool, (SDL_TimerID,), id)
end

function GetVersion(ver)
    ccall((:SDL_GetVersion, libSDL2_image), Void, (Ptr{SDL_version},), ver)
end

function GetRevision()
    ccall((:SDL_GetRevision, libSDL2_image), Cstring, ())
end

function GetRevisionNumber()
    ccall((:SDL_GetRevisionNumber, libSDL2_image), Cint, ())
end

function Init(flags::Uint32)
    ccall((:SDL_Init, libSDL2_image), Cint, (Uint32,), flags)
end

function InitSubSystem(flags::Uint32)
    ccall((:SDL_InitSubSystem, libSDL2_image), Cint, (Uint32,), flags)
end

function QuitSubSystem(flags::Uint32)
    ccall((:SDL_QuitSubSystem, libSDL2_image), Void, (Uint32,), flags)
end

function WasInit(flags::Uint32)
    ccall((:SDL_WasInit, libSDL2_image), Uint32, (Uint32,), flags)
end

function Quit()
    ccall((:SDL_Quit, libSDL2_image), Void, ())
end

function IMG_Linked_Version()
    ccall((:IMG_Linked_Version, libSDL2_image), Ptr{SDL_version}, ())
end

function IMG_Init(flags::Cint)
    ccall((:IMG_Init, libSDL2_image), Cint, (Cint,), flags)
end

function IMG_Quit()
    ccall((:IMG_Quit, libSDL2_image), Void, ())
end

function IMG_LoadTyped_RW(src, freesrc::Cint, _type)
    ccall((:IMG_LoadTyped_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops}, Cint, Cstring), src, freesrc, _type)
end

function IMG_Load(file)
    ccall((:IMG_Load, libSDL2_image), Ptr{SDL_Surface}, (Cstring,), file)
end

function IMG_Load_RW(src, freesrc::Cint)
    ccall((:IMG_Load_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops}, Cint), src, freesrc)
end

function IMG_LoadTexture(renderer, file)
    ccall((:IMG_LoadTexture, libSDL2_image), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Cstring), renderer, file)
end

function IMG_LoadTexture_RW(renderer, src, freesrc::Cint)
    ccall((:IMG_LoadTexture_RW, libSDL2_image), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Ptr{SDL_RWops}, Cint), renderer, src, freesrc)
end

function IMG_LoadTextureTyped_RW(renderer, src, freesrc::Cint, _type)
    ccall((:IMG_LoadTextureTyped_RW, libSDL2_image), Ptr{SDL_Texture}, (Ptr{SDL_Renderer}, Ptr{SDL_RWops}, Cint, Cstring), renderer, src, freesrc, _type)
end

function IMG_isICO(src)
    ccall((:IMG_isICO, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isCUR(src)
    ccall((:IMG_isCUR, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isBMP(src)
    ccall((:IMG_isBMP, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isGIF(src)
    ccall((:IMG_isGIF, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isJPG(src)
    ccall((:IMG_isJPG, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isLBM(src)
    ccall((:IMG_isLBM, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isPCX(src)
    ccall((:IMG_isPCX, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isPNG(src)
    ccall((:IMG_isPNG, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isPNM(src)
    ccall((:IMG_isPNM, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isSVG(src)
    ccall((:IMG_isSVG, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isTIF(src)
    ccall((:IMG_isTIF, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isXCF(src)
    ccall((:IMG_isXCF, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isXPM(src)
    ccall((:IMG_isXPM, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isXV(src)
    ccall((:IMG_isXV, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_isWEBP(src)
    ccall((:IMG_isWEBP, libSDL2_image), Cint, (Ptr{SDL_RWops},), src)
end

function IMG_LoadICO_RW(src)
    ccall((:IMG_LoadICO_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadCUR_RW(src)
    ccall((:IMG_LoadCUR_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadBMP_RW(src)
    ccall((:IMG_LoadBMP_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadGIF_RW(src)
    ccall((:IMG_LoadGIF_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadJPG_RW(src)
    ccall((:IMG_LoadJPG_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadLBM_RW(src)
    ccall((:IMG_LoadLBM_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadPCX_RW(src)
    ccall((:IMG_LoadPCX_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadPNG_RW(src)
    ccall((:IMG_LoadPNG_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadPNM_RW(src)
    ccall((:IMG_LoadPNM_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadSVG_RW(src)
    ccall((:IMG_LoadSVG_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadTGA_RW(src)
    ccall((:IMG_LoadTGA_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadTIF_RW(src)
    ccall((:IMG_LoadTIF_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadXCF_RW(src)
    ccall((:IMG_LoadXCF_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadXPM_RW(src)
    ccall((:IMG_LoadXPM_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadXV_RW(src)
    ccall((:IMG_LoadXV_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_LoadWEBP_RW(src)
    ccall((:IMG_LoadWEBP_RW, libSDL2_image), Ptr{SDL_Surface}, (Ptr{SDL_RWops},), src)
end

function IMG_ReadXPMFromArray(xpm)
    ccall((:IMG_ReadXPMFromArray, libSDL2_image), Ptr{SDL_Surface}, (Ptr{Cstring},), xpm)
end

function IMG_SavePNG(surface, file)
    ccall((:IMG_SavePNG, libSDL2_image), Cint, (Ptr{SDL_Surface}, Cstring), surface, file)
end

function IMG_SavePNG_RW(surface, dst, freedst::Cint)
    ccall((:IMG_SavePNG_RW, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_RWops}, Cint), surface, dst, freedst)
end

function IMG_SaveJPG(surface, file, quality::Cint)
    ccall((:IMG_SaveJPG, libSDL2_image), Cint, (Ptr{SDL_Surface}, Cstring, Cint), surface, file, quality)
end

function IMG_SaveJPG_RW(surface, dst, freedst::Cint, quality::Cint)
    ccall((:IMG_SaveJPG_RW, libSDL2_image), Cint, (Ptr{SDL_Surface}, Ptr{SDL_RWops}, Cint, Cint), surface, dst, freedst, quality)
end
