# Julia wrapper for header: /Users/bieler/Downloads/SDL2-2.0.5/include/SDL.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0
include("SDL_h.jl")

const va_list = Ptr{Cvoid}#FIXME

function GetPlatform()
    ccall((:SDL_GetPlatform, libSDL2), Cstring, ())
end

function malloc(size::Csize_t)
    ccall((:SDL_malloc, libSDL2), Ptr{Cvoid}, (Csize_t,), size)
end

function calloc(nmemb::Csize_t, size::Csize_t)
    ccall((:SDL_calloc, libSDL2), Ptr{Cvoid}, (Csize_t, Csize_t), nmemb, size)
end

function realloc(mem, size::Csize_t)
    ccall((:SDL_realloc, libSDL2), Ptr{Cvoid}, (Ptr{Cvoid}, Csize_t), mem, size)
end

function free(mem)
    ccall((:SDL_free, libSDL2), Cvoid, (Ptr{Cvoid},), mem)
end

function getenv(name)
    ccall((:SDL_getenv, libSDL2), Cstring, (Cstring,), name)
end

function setenv(name, value, overwrite::Cint)
    ccall((:SDL_setenv, libSDL2), Cint, (Cstring, Cstring, Cint), name, value, overwrite)
end

function qsort(base, nmemb::Csize_t, size::Csize_t, compare)
    ccall((:SDL_qsort, libSDL2), Cvoid, (Ptr{Cvoid}, Csize_t, Csize_t, Ptr{Cvoid}), base, nmemb, size, compare)
end

function abs(x::Cint)
    ccall((:SDL_abs, libSDL2), Cint, (Cint,), x)
end

function isdigit(x::Cint)
    ccall((:SDL_isdigit, libSDL2), Cint, (Cint,), x)
end

function isspace(x::Cint)
    ccall((:SDL_isspace, libSDL2), Cint, (Cint,), x)
end

function toupper(x::Cint)
    ccall((:SDL_toupper, libSDL2), Cint, (Cint,), x)
end

function tolower(x::Cint)
    ccall((:SDL_tolower, libSDL2), Cint, (Cint,), x)
end

function memset(dst, c::Cint, len::Csize_t)
    ccall((:SDL_memset, libSDL2), Ptr{Cvoid}, (Ptr{Cvoid}, Cint, Csize_t), dst, c, len)
end

function memset4(dst, val::Uint32, dwords::Csize_t)
    ccall((:SDL_memset4, libSDL2), Cvoid, (Ptr{Cvoid}, Uint32, Csize_t), dst, val, dwords)
end

function memcpy(dst, src, len::Csize_t)
    ccall((:SDL_memcpy, libSDL2), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), dst, src, len)
end

function memmove(dst, src, len::Csize_t)
    ccall((:SDL_memmove, libSDL2), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), dst, src, len)
end

function memcmp(s1, s2, len::Csize_t)
    ccall((:SDL_memcmp, libSDL2), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), s1, s2, len)
end

function wcslen(wstr)
    ccall((:SDL_wcslen, libSDL2), Csize_t, (Ptr{wchar_t},), wstr)
end

function wcslcpy(dst, src, maxlen::Csize_t)
    ccall((:SDL_wcslcpy, libSDL2), Csize_t, (Ptr{wchar_t}, Ptr{wchar_t}, Csize_t), dst, src, maxlen)
end

function wcslcat(dst, src, maxlen::Csize_t)
    ccall((:SDL_wcslcat, libSDL2), Csize_t, (Ptr{wchar_t}, Ptr{wchar_t}, Csize_t), dst, src, maxlen)
end

function strlen(str)
    ccall((:SDL_strlen, libSDL2), Csize_t, (Cstring,), str)
end

function strlcpy(dst, src, maxlen::Csize_t)
    ccall((:SDL_strlcpy, libSDL2), Csize_t, (Cstring, Cstring, Csize_t), dst, src, maxlen)
end

function utf8strlcpy(dst, src, dst_bytes::Csize_t)
    ccall((:SDL_utf8strlcpy, libSDL2), Csize_t, (Cstring, Cstring, Csize_t), dst, src, dst_bytes)
end

function strlcat(dst, src, maxlen::Csize_t)
    ccall((:SDL_strlcat, libSDL2), Csize_t, (Cstring, Cstring, Csize_t), dst, src, maxlen)
end

function strdup(str)
    ccall((:SDL_strdup, libSDL2), Cstring, (Cstring,), str)
end

function strrev(str)
    ccall((:SDL_strrev, libSDL2), Cstring, (Cstring,), str)
end

function strupr(str)
    ccall((:SDL_strupr, libSDL2), Cstring, (Cstring,), str)
end

function strlwr(str)
    ccall((:SDL_strlwr, libSDL2), Cstring, (Cstring,), str)
end

function strchr(str, c::Cint)
    ccall((:SDL_strchr, libSDL2), Cstring, (Cstring, Cint), str, c)
end

function strrchr(str, c::Cint)
    ccall((:SDL_strrchr, libSDL2), Cstring, (Cstring, Cint), str, c)
end

function strstr(haystack, needle)
    ccall((:SDL_strstr, libSDL2), Cstring, (Cstring, Cstring), haystack, needle)
end

function itoa(value::Cint, str, radix::Cint)
    ccall((:SDL_itoa, libSDL2), Cstring, (Cint, Cstring, Cint), value, str, radix)
end

function uitoa(value::UInt32, str, radix::Cint)
    ccall((:SDL_uitoa, libSDL2), Cstring, (UInt32, Cstring, Cint), value, str, radix)
end

function ltoa(value::Clong, str, radix::Cint)
    ccall((:SDL_ltoa, libSDL2), Cstring, (Clong, Cstring, Cint), value, str, radix)
end

function ultoa(value::Culong, str, radix::Cint)
    ccall((:SDL_ultoa, libSDL2), Cstring, (Culong, Cstring, Cint), value, str, radix)
end

function lltoa(value::Sint64, str, radix::Cint)
    ccall((:SDL_lltoa, libSDL2), Cstring, (Sint64, Cstring, Cint), value, str, radix)
end

function ulltoa(value::Uint64, str, radix::Cint)
    ccall((:SDL_ulltoa, libSDL2), Cstring, (Uint64, Cstring, Cint), value, str, radix)
end

function atoi(str)
    ccall((:SDL_atoi, libSDL2), Cint, (Cstring,), str)
end

function atof(str)
    ccall((:SDL_atof, libSDL2), Cdouble, (Cstring,), str)
end

function strtol(str, endp, base::Cint)
    ccall((:SDL_strtol, libSDL2), Clong, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtoul(str, endp, base::Cint)
    ccall((:SDL_strtoul, libSDL2), Culong, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtoll(str, endp, base::Cint)
    ccall((:SDL_strtoll, libSDL2), Sint64, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtoull(str, endp, base::Cint)
    ccall((:SDL_strtoull, libSDL2), Uint64, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtod(str, endp)
    ccall((:SDL_strtod, libSDL2), Cdouble, (Cstring, Ptr{Cstring}), str, endp)
end

function strcmp(str1, str2)
    ccall((:SDL_strcmp, libSDL2), Cint, (Cstring, Cstring), str1, str2)
end

function strncmp(str1, str2, maxlen::Csize_t)
    ccall((:SDL_strncmp, libSDL2), Cint, (Cstring, Cstring, Csize_t), str1, str2, maxlen)
end

function strcasecmp(str1, str2)
    ccall((:SDL_strcasecmp, libSDL2), Cint, (Cstring, Cstring), str1, str2)
end

function strncasecmp(str1, str2, len::Csize_t)
    ccall((:SDL_strncasecmp, libSDL2), Cint, (Cstring, Cstring, Csize_t), str1, str2, len)
end

function vsscanf(text, fmt, ap::va_list)
    ccall((:SDL_vsscanf, libSDL2), Cint, (Cstring, Cstring, va_list), text, fmt, ap)
end

function vsnprintf(text, maxlen::Csize_t, fmt, ap::va_list)
    ccall((:SDL_vsnprintf, libSDL2), Cint, (Cstring, Csize_t, Cstring, va_list), text, maxlen, fmt, ap)
end

function acos(x::Cdouble)
    ccall((:SDL_acos, libSDL2), Cdouble, (Cdouble,), x)
end

function asin(x::Cdouble)
    ccall((:SDL_asin, libSDL2), Cdouble, (Cdouble,), x)
end

function atan(x::Cdouble)
    ccall((:SDL_atan, libSDL2), Cdouble, (Cdouble,), x)
end

function atan2(x::Cdouble, y::Cdouble)
    ccall((:SDL_atan2, libSDL2), Cdouble, (Cdouble, Cdouble), x, y)
end

function ceil(x::Cdouble)
    ccall((:SDL_ceil, libSDL2), Cdouble, (Cdouble,), x)
end

function copysign(x::Cdouble, y::Cdouble)
    ccall((:SDL_copysign, libSDL2), Cdouble, (Cdouble, Cdouble), x, y)
end

function cos(x::Cdouble)
    ccall((:SDL_cos, libSDL2), Cdouble, (Cdouble,), x)
end

function cosf(x::Cfloat)
    ccall((:SDL_cosf, libSDL2), Cfloat, (Cfloat,), x)
end

function fabs(x::Cdouble)
    ccall((:SDL_fabs, libSDL2), Cdouble, (Cdouble,), x)
end

function floor(x::Cdouble)
    ccall((:SDL_floor, libSDL2), Cdouble, (Cdouble,), x)
end

function log(x::Cdouble)
    ccall((:SDL_log, libSDL2), Cdouble, (Cdouble,), x)
end

function pow(x::Cdouble, y::Cdouble)
    ccall((:SDL_pow, libSDL2), Cdouble, (Cdouble, Cdouble), x, y)
end

function scalbn(x::Cdouble, n::Cint)
    ccall((:SDL_scalbn, libSDL2), Cdouble, (Cdouble, Cint), x, n)
end

function sin(x::Cdouble)
    ccall((:SDL_sin, libSDL2), Cdouble, (Cdouble,), x)
end

function sinf(x::Cfloat)
    ccall((:SDL_sinf, libSDL2), Cfloat, (Cfloat,), x)
end

function sqrt(x::Cdouble)
    ccall((:SDL_sqrt, libSDL2), Cdouble, (Cdouble,), x)
end

function sqrtf(x::Cfloat)
    ccall((:SDL_sqrtf, libSDL2), Cfloat, (Cfloat,), x)
end

function tan(x::Cdouble)
    ccall((:SDL_tan, libSDL2), Cdouble, (Cdouble,), x)
end

function tanf(x::Cfloat)
    ccall((:SDL_tanf, libSDL2), Cfloat, (Cfloat,), x)
end

function iconv_open(tocode, fromcode)
    ccall((:SDL_iconv_open, libSDL2), iconv_t, (Cstring, Cstring), tocode, fromcode)
end

function iconv_close(cd::iconv_t)
    ccall((:SDL_iconv_close, libSDL2), Cint, (iconv_t,), cd)
end

function iconv(cd::iconv_t, inbuf, inbytesleft, outbuf, outbytesleft)
    ccall((:SDL_iconv, libSDL2), Csize_t, (iconv_t, Ptr{Cstring}, Ptr{Csize_t}, Ptr{Cstring}, Ptr{Csize_t}), cd, inbuf, inbytesleft, outbuf, outbytesleft)
end

function iconv_string(tocode, fromcode, inbuf, inbytesleft::Csize_t)
    ccall((:SDL_iconv_string, libSDL2), Cstring, (Cstring, Cstring, Cstring, Csize_t), tocode, fromcode, inbuf, inbytesleft)
end

function memcpy4(dst, src, dwords::Csize_t)
    ccall((:SDL_memcpy4, libSDL2), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), dst, src, dwords)
end

function main(argc::Cint, argv)
    ccall((:SDL_main, libSDL2), Cint, (Cint, Ptr{Cstring}), argc, argv)
end

function SetMainReady()
    ccall((:SDL_SetMainReady, libSDL2), Cvoid, ())
end

#function ReportAssertion(arg1, arg2, arg3, arg4::Cint)
#    ccall((:SDL_ReportAssertion, libSDL2), SDL_AssertState, (Ptr{AssertData}, Cstring, Cstring, Cint), arg1, arg2, arg3, arg4)
#end

function SetAssertionHandler(handler::AssertionHandler, userdata)
    ccall((:SDL_SetAssertionHandler, libSDL2), Cvoid, (AssertionHandler, Ptr{Cvoid}), handler, userdata)
end

function GetDefaultAssertionHandler()
    ccall((:SDL_GetDefaultAssertionHandler, libSDL2), AssertionHandler, ())
end

function GetAssertionHandler(puserdata)
    ccall((:SDL_GetAssertionHandler, libSDL2), AssertionHandler, (Ptr{Ptr{Cvoid}},), puserdata)
end

function GetAssertionReport()
    ccall((:SDL_GetAssertionReport, libSDL2), Ptr{AssertData}, ())
end

function ResetAssertionReport()
    ccall((:SDL_ResetAssertionReport, libSDL2), Cvoid, ())
end

function AtomicTryLock(lock)
    ccall((:SDL_AtomicTryLock, libSDL2), bool, (Ptr{SpinLock},), lock)
end

function AtomicLock(lock)
    ccall((:SDL_AtomicLock, libSDL2), Cvoid, (Ptr{SpinLock},), lock)
end

function AtomicUnlock(lock)
    ccall((:SDL_AtomicUnlock, libSDL2), Cvoid, (Ptr{SpinLock},), lock)
end

function AtomicCAS(a, oldval::Cint, newval::Cint)
    ccall((:SDL_AtomicCAS, libSDL2), bool, (Ptr{atomic_t}, Cint, Cint), a, oldval, newval)
end

function AtomicSet(a, v::Cint)
    ccall((:SDL_AtomicSet, libSDL2), Cint, (Ptr{atomic_t}, Cint), a, v)
end

function AtomicGet(a)
    ccall((:SDL_AtomicGet, libSDL2), Cint, (Ptr{atomic_t},), a)
end

function AtomicAdd(a, v::Cint)
    ccall((:SDL_AtomicAdd, libSDL2), Cint, (Ptr{atomic_t}, Cint), a, v)
end

function AtomicCASPtr(a, oldval, newval)
    ccall((:SDL_AtomicCASPtr, libSDL2), bool, (Ptr{Ptr{Cvoid}}, Ptr{Cvoid}, Ptr{Cvoid}), a, oldval, newval)
end

function AtomicSetPtr(a, v)
    ccall((:SDL_AtomicSetPtr, libSDL2), Ptr{Cvoid}, (Ptr{Ptr{Cvoid}}, Ptr{Cvoid}), a, v)
end

function AtomicGetPtr(a)
    ccall((:SDL_AtomicGetPtr, libSDL2), Ptr{Cvoid}, (Ptr{Ptr{Cvoid}},), a)
end

function GetError()
    ccall((:SDL_GetError, libSDL2), Cstring, ())
end

function ClearError()
    ccall((:SDL_ClearError, libSDL2), Cvoid, ())
end

function Error(code::errorcode)
    ccall((:SDL_Error, libSDL2), Cint, (errorcode,), code)
end

function Swap16(x::Uint16)
    ccall((:SDL_Swap16, libSDL2), Uint16, (Uint16,), x)
end

function Swap32(x::Uint32)
    ccall((:SDL_Swap32, libSDL2), Uint32, (Uint32,), x)
end

function Swap64(x::Uint64)
    ccall((:SDL_Swap64, libSDL2), Uint64, (Uint64,), x)
end

function SwapFloat(x::Cfloat)
    ccall((:SDL_SwapFloat, libSDL2), Cfloat, (Cfloat,), x)
end

function CreateMutex()
    ccall((:SDL_CreateMutex, libSDL2), Ptr{Mutex}, ())
end

function LockMutex(mutex)
    ccall((:SDL_LockMutex, libSDL2), Cint, (Ptr{Mutex},), mutex)
end

function TryLockMutex(mutex)
    ccall((:SDL_TryLockMutex, libSDL2), Cint, (Ptr{Mutex},), mutex)
end

function UnlockMutex(mutex)
    ccall((:SDL_UnlockMutex, libSDL2), Cint, (Ptr{Mutex},), mutex)
end

function DestroyMutex(mutex)
    ccall((:SDL_DestroyMutex, libSDL2), Cvoid, (Ptr{Mutex},), mutex)
end

function CreateSemaphore(initial_value::Uint32)
    ccall((:SDL_CreateSemaphore, libSDL2), Ptr{Sem}, (Uint32,), initial_value)
end

function DestroySemaphore(sem)
    ccall((:SDL_DestroySemaphore, libSDL2), Cvoid, (Ptr{Sem},), sem)
end

function SemWait(sem)
    ccall((:SDL_SemWait, libSDL2), Cint, (Ptr{Sem},), sem)
end

function SemTryWait(sem)
    ccall((:SDL_SemTryWait, libSDL2), Cint, (Ptr{Sem},), sem)
end

function SemWaitTimeout(sem, ms::Uint32)
    ccall((:SDL_SemWaitTimeout, libSDL2), Cint, (Ptr{Sem}, Uint32), sem, ms)
end

function SemPost(sem)
    ccall((:SDL_SemPost, libSDL2), Cint, (Ptr{Sem},), sem)
end

function SemValue(sem)
    ccall((:SDL_SemValue, libSDL2), Uint32, (Ptr{Sem},), sem)
end

function CreateCond()
    ccall((:SDL_CreateCond, libSDL2), Ptr{Cond}, ())
end

function DestroyCond(cond)
    ccall((:SDL_DestroyCond, libSDL2), Cvoid, (Ptr{Cond},), cond)
end

function CondSignal(cond)
    ccall((:SDL_CondSignal, libSDL2), Cint, (Ptr{Cond},), cond)
end

function CondBroadcast(cond)
    ccall((:SDL_CondBroadcast, libSDL2), Cint, (Ptr{Cond},), cond)
end

function CondWait(cond, mutex)
    ccall((:SDL_CondWait, libSDL2), Cint, (Ptr{Cond}, Ptr{Mutex}), cond, mutex)
end

function CondWaitTimeout(cond, mutex, ms::Uint32)
    ccall((:SDL_CondWaitTimeout, libSDL2), Cint, (Ptr{Cond}, Ptr{Mutex}, Uint32), cond, mutex, ms)
end

function CreateThread(fn::ThreadFunction, name, data)
    ccall((:SDL_CreateThread, libSDL2), Ptr{Thread}, (ThreadFunction, Cstring, Ptr{Cvoid}), fn, name, data)
end

function GetThreadName(thread)
    ccall((:SDL_GetThreadName, libSDL2), Cstring, (Ptr{Thread},), thread)
end

function ThreadID()
    ccall((:SDL_ThreadID, libSDL2), SDL_threadID, ())
end

function GetThreadID(thread)
    ccall((:SDL_GetThreadID, libSDL2), SDL_threadID, (Ptr{Thread},), thread)
end

function SetThreadPriority(priority::ThreadPriority)
    ccall((:SDL_SetThreadPriority, libSDL2), Cint, (ThreadPriority,), priority)
end

function WaitThread(thread, status)
    ccall((:SDL_WaitThread, libSDL2), Cvoid, (Ptr{Thread}, Ptr{Cint}), thread, status)
end

function DetachThread(thread)
    ccall((:SDL_DetachThread, libSDL2), Cvoid, (Ptr{Thread},), thread)
end

function TLSCreate()
    ccall((:SDL_TLSCreate, libSDL2), TLSID, ())
end

function TLSGet(id::TLSID)
    ccall((:SDL_TLSGet, libSDL2), Ptr{Cvoid}, (TLSID,), id)
end

function TLSSet(id::TLSID, value, destructor)
    ccall((:SDL_TLSSet, libSDL2), Cint, (TLSID, Ptr{Cvoid}, Ptr{Cvoid}), id, value, destructor)
end

function RWFromFile(file, mode)
    ccall((:SDL_RWFromFile, libSDL2), Ptr{RWops}, (Cstring, Cstring), file, mode)
end

function RWFromFP(fp, autoclose::bool)
    ccall((:SDL_RWFromFP, libSDL2), Ptr{RWops}, (Ptr{Cint}, bool), fp, autoclose)
end

function RWFromMem(mem, size::Cint)
    ccall((:SDL_RWFromMem, libSDL2), Ptr{RWops}, (Ptr{Cvoid}, Cint), mem, size)
end

function RWFromConstMem(mem, size::Cint)
    ccall((:SDL_RWFromConstMem, libSDL2), Ptr{RWops}, (Ptr{Cvoid}, Cint), mem, size)
end

function AllocRW()
    ccall((:SDL_AllocRW, libSDL2), Ptr{RWops}, ())
end

function FreeRW(area)
    ccall((:SDL_FreeRW, libSDL2), Cvoid, (Ptr{RWops},), area)
end

function ReadU8(src)
    ccall((:SDL_ReadU8, libSDL2), Uint8, (Ptr{RWops},), src)
end

function ReadLE16(src)
    ccall((:SDL_ReadLE16, libSDL2), Uint16, (Ptr{RWops},), src)
end

function ReadBE16(src)
    ccall((:SDL_ReadBE16, libSDL2), Uint16, (Ptr{RWops},), src)
end

function ReadLE32(src)
    ccall((:SDL_ReadLE32, libSDL2), Uint32, (Ptr{RWops},), src)
end

function ReadBE32(src)
    ccall((:SDL_ReadBE32, libSDL2), Uint32, (Ptr{RWops},), src)
end

function ReadLE64(src)
    ccall((:SDL_ReadLE64, libSDL2), Uint64, (Ptr{RWops},), src)
end

function ReadBE64(src)
    ccall((:SDL_ReadBE64, libSDL2), Uint64, (Ptr{RWops},), src)
end

function WriteU8(dst, value::Uint8)
    ccall((:SDL_WriteU8, libSDL2), Csize_t, (Ptr{RWops}, Uint8), dst, value)
end

function WriteLE16(dst, value::Uint16)
    ccall((:SDL_WriteLE16, libSDL2), Csize_t, (Ptr{RWops}, Uint16), dst, value)
end

function WriteBE16(dst, value::Uint16)
    ccall((:SDL_WriteBE16, libSDL2), Csize_t, (Ptr{RWops}, Uint16), dst, value)
end

function WriteLE32(dst, value::Uint32)
    ccall((:SDL_WriteLE32, libSDL2), Csize_t, (Ptr{RWops}, Uint32), dst, value)
end

function WriteBE32(dst, value::Uint32)
    ccall((:SDL_WriteBE32, libSDL2), Csize_t, (Ptr{RWops}, Uint32), dst, value)
end

function WriteLE64(dst, value::Uint64)
    ccall((:SDL_WriteLE64, libSDL2), Csize_t, (Ptr{RWops}, Uint64), dst, value)
end

function WriteBE64(dst, value::Uint64)
    ccall((:SDL_WriteBE64, libSDL2), Csize_t, (Ptr{RWops}, Uint64), dst, value)
end

function GetNumAudioDrivers()
    ccall((:SDL_GetNumAudioDrivers, libSDL2), Cint, ())
end

function GetAudioDriver(index::Cint)
    ccall((:SDL_GetAudioDriver, libSDL2), Cstring, (Cint,), index)
end

function AudioInit(driver_name)
    ccall((:SDL_AudioInit, libSDL2), Cint, (Cstring,), driver_name)
end

function AudioQuit()
    ccall((:SDL_AudioQuit, libSDL2), Cvoid, ())
end

function GetCurrentAudioDriver()
    ccall((:SDL_GetCurrentAudioDriver, libSDL2), Cstring, ())
end

function OpenAudio(desired, obtained)
    ccall((:SDL_OpenAudio, libSDL2), Cint, (Ptr{AudioSpec}, Ptr{AudioSpec}), desired, obtained)
end

function GetNumAudioDevices(iscapture::Cint)
    ccall((:SDL_GetNumAudioDevices, libSDL2), Cint, (Cint,), iscapture)
end

function GetAudioDeviceName(index::Cint, iscapture::Cint)
    ccall((:SDL_GetAudioDeviceName, libSDL2), Cstring, (Cint, Cint), index, iscapture)
end

function OpenAudioDevice(device, iscapture::Cint, desired, obtained, allowed_changes::Cint)
    ccall((:SDL_OpenAudioDevice, libSDL2), AudioDeviceID, (Cstring, Cint, Ptr{AudioSpec}, Ptr{AudioSpec}, Cint), device, iscapture, desired, obtained, allowed_changes)
end

function GetAudioStatus()
    ccall((:SDL_GetAudioStatus, libSDL2), AudioStatus, ())
end

function GetAudioDeviceStatus(dev::AudioDeviceID)
    ccall((:SDL_GetAudioDeviceStatus, libSDL2), AudioStatus, (AudioDeviceID,), dev)
end

function PauseAudio(pause_on::Cint)
    ccall((:SDL_PauseAudio, libSDL2), Cvoid, (Cint,), pause_on)
end

function PauseAudioDevice(dev::AudioDeviceID, pause_on::Cint)
    ccall((:SDL_PauseAudioDevice, libSDL2), Cvoid, (AudioDeviceID, Cint), dev, pause_on)
end

function LoadWAV_RW(src, freesrc::Cint, spec, audio_buf, audio_len)
    ccall((:SDL_LoadWAV_RW, libSDL2), Ptr{AudioSpec}, (Ptr{RWops}, Cint, Ptr{AudioSpec}, Ptr{Ptr{Uint8}}, Ptr{Uint32}), src, freesrc, spec, audio_buf, audio_len)
end

function FreeWAV(audio_buf)
    ccall((:SDL_FreeWAV, libSDL2), Cvoid, (Ptr{Uint8},), audio_buf)
end

#function BuildAudioCVT(cvt, src_format::AudioFormat, src_channels::Uint8, src_rate::Cint, dst_format::AudioFormat, dst_channels::Uint8, dst_rate::Cint)
#    ccall((:SDL_BuildAudioCVT, libSDL2), Cint, (Ptr{AudioCVT}, AudioFormat, Uint8, Cint, AudioFormat, Uint8, Cint), cvt, src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate)
#end

#function ConvertAudio(cvt)
#    ccall((:SDL_ConvertAudio, libSDL2), Cint, (Ptr{AudioCVT},), cvt)
#end

function MixAudio(dst, src, len::Uint32, volume::Cint)
    ccall((:SDL_MixAudio, libSDL2), Cvoid, (Ptr{Uint8}, Ptr{Uint8}, Uint32, Cint), dst, src, len, volume)
end

function MixAudioFormat(dst, src, format::AudioFormat, len::Uint32, volume::Cint)
    ccall((:SDL_MixAudioFormat, libSDL2), Cvoid, (Ptr{Uint8}, Ptr{Uint8}, AudioFormat, Uint32, Cint), dst, src, format, len, volume)
end

function QueueAudio(dev::AudioDeviceID, data, len::Uint32)
    ccall((:SDL_QueueAudio, libSDL2), Cint, (AudioDeviceID, Ptr{Cvoid}, Uint32), dev, data, len)
end

function DequeueAudio(dev::AudioDeviceID, data, len::Uint32)
    ccall((:SDL_DequeueAudio, libSDL2), Uint32, (AudioDeviceID, Ptr{Cvoid}, Uint32), dev, data, len)
end

function GetQueuedAudioSize(dev::AudioDeviceID)
    ccall((:SDL_GetQueuedAudioSize, libSDL2), Uint32, (AudioDeviceID,), dev)
end

function ClearQueuedAudio(dev::AudioDeviceID)
    ccall((:SDL_ClearQueuedAudio, libSDL2), Cvoid, (AudioDeviceID,), dev)
end

function LockAudio()
    ccall((:SDL_LockAudio, libSDL2), Cvoid, ())
end

function LockAudioDevice(dev::AudioDeviceID)
    ccall((:SDL_LockAudioDevice, libSDL2), Cvoid, (AudioDeviceID,), dev)
end

function UnlockAudio()
    ccall((:SDL_UnlockAudio, libSDL2), Cvoid, ())
end

function UnlockAudioDevice(dev::AudioDeviceID)
    ccall((:SDL_UnlockAudioDevice, libSDL2), Cvoid, (AudioDeviceID,), dev)
end

function CloseAudio()
    ccall((:SDL_CloseAudio, libSDL2), Cvoid, ())
end

function CloseAudioDevice(dev::AudioDeviceID)
    ccall((:SDL_CloseAudioDevice, libSDL2), Cvoid, (AudioDeviceID,), dev)
end

function SetClipboardText(text)
    ccall((:SDL_SetClipboardText, libSDL2), Cint, (Cstring,), text)
end

function GetClipboardText()
    ccall((:SDL_GetClipboardText, libSDL2), Cstring, ())
end

function HasClipboardText()
    ccall((:SDL_HasClipboardText, libSDL2), bool, ())
end

function _mm_empty()
    ccall((:_mm_empty, libSDL2), Cvoid, ())
end

#=
function _mm_cvtsi32_si64(__i::Cint)
    ccall((:_mm_cvtsi32_si64, libSDL2), __m64, (Cint,), __i)
end

function _mm_cvtsi64_si32(__m::__m64)
    ccall((:_mm_cvtsi64_si32, libSDL2), Cint, (__m64,), __m)
end

function _mm_cvtsi64_m64(__i::Clonglong)
    ccall((:_mm_cvtsi64_m64, libSDL2), __m64, (Clonglong,), __i)
end

function _mm_cvtm64_si64(__m::__m64)
    ccall((:_mm_cvtm64_si64, libSDL2), Clonglong, (__m64,), __m)
end

function _mm_packs_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_packs_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_packs_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_packs_pi32, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_packs_pu16(__m1::__m64, __m2::__m64)
    ccall((:_mm_packs_pu16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpackhi_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpackhi_pi8, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpackhi_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpackhi_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpackhi_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpackhi_pi32, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpacklo_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpacklo_pi8, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpacklo_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpacklo_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_unpacklo_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_unpacklo_pi32, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_add_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_add_pi8, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_add_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_add_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_add_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_add_pi32, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pi8, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pu8(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pu8, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_adds_pu16(__m1::__m64, __m2::__m64)
    ccall((:_mm_adds_pu16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sub_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_sub_pi8, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sub_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_sub_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sub_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_sub_pi32, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pi8, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pu8(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pu8, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_subs_pu16(__m1::__m64, __m2::__m64)
    ccall((:_mm_subs_pu16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_madd_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_madd_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_mulhi_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_mulhi_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_mullo_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_mullo_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_sll_pi16(__m::__m64, __count::__m64)
    ccall((:_mm_sll_pi16, libSDL2), __m64, (__m64, __m64), __m, __count)
end

function _mm_slli_pi16(__m::__m64, __count::Cint)
    ccall((:_mm_slli_pi16, libSDL2), __m64, (__m64, Cint), __m, __count)
end

function _mm_sll_pi32(__m::__m64, __count::__m64)
    ccall((:_mm_sll_pi32, libSDL2), __m64, (__m64, __m64), __m, __count)
end

function _mm_slli_pi32(__m::__m64, __count::Cint)
    ccall((:_mm_slli_pi32, libSDL2), __m64, (__m64, Cint), __m, __count)
end

function _mm_sll_si64(__m::__m64, __count::__m64)
    ccall((:_mm_sll_si64, libSDL2), __m64, (__m64, __m64), __m, __count)
end

function _mm_slli_si64(__m::__m64, __count::Cint)
    ccall((:_mm_slli_si64, libSDL2), __m64, (__m64, Cint), __m, __count)
end

function _mm_sra_pi16(__m::__m64, __count::__m64)
    ccall((:_mm_sra_pi16, libSDL2), __m64, (__m64, __m64), __m, __count)
end

function _mm_srai_pi16(__m::__m64, __count::Cint)
    ccall((:_mm_srai_pi16, libSDL2), __m64, (__m64, Cint), __m, __count)
end

function _mm_sra_pi32(__m::__m64, __count::__m64)
    ccall((:_mm_sra_pi32, libSDL2), __m64, (__m64, __m64), __m, __count)
end

function _mm_srai_pi32(__m::__m64, __count::Cint)
    ccall((:_mm_srai_pi32, libSDL2), __m64, (__m64, Cint), __m, __count)
end

function _mm_srl_pi16(__m::__m64, __count::__m64)
    ccall((:_mm_srl_pi16, libSDL2), __m64, (__m64, __m64), __m, __count)
end

function _mm_srli_pi16(__m::__m64, __count::Cint)
    ccall((:_mm_srli_pi16, libSDL2), __m64, (__m64, Cint), __m, __count)
end

function _mm_srl_pi32(__m::__m64, __count::__m64)
    ccall((:_mm_srl_pi32, libSDL2), __m64, (__m64, __m64), __m, __count)
end

function _mm_srli_pi32(__m::__m64, __count::Cint)
    ccall((:_mm_srli_pi32, libSDL2), __m64, (__m64, Cint), __m, __count)
end

function _mm_srl_si64(__m::__m64, __count::__m64)
    ccall((:_mm_srl_si64, libSDL2), __m64, (__m64, __m64), __m, __count)
end

function _mm_srli_si64(__m::__m64, __count::Cint)
    ccall((:_mm_srli_si64, libSDL2), __m64, (__m64, Cint), __m, __count)
end

function _mm_and_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_and_si64, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_andnot_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_andnot_si64, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_or_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_or_si64, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_xor_si64(__m1::__m64, __m2::__m64)
    ccall((:_mm_xor_si64, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpeq_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpeq_pi8, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpeq_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpeq_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpeq_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpeq_pi32, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpgt_pi8(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpgt_pi8, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpgt_pi16(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpgt_pi16, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_cmpgt_pi32(__m1::__m64, __m2::__m64)
    ccall((:_mm_cmpgt_pi32, libSDL2), __m64, (__m64, __m64), __m1, __m2)
end

function _mm_setzero_si64()
    ccall((:_mm_setzero_si64, libSDL2), __m64, ())
end

function _mm_set_pi32(__i1::Cint, __i0::Cint)
    ccall((:_mm_set_pi32, libSDL2), __m64, (Cint, Cint), __i1, __i0)
end

function _mm_set_pi16(__s3::Int16, __s2::Int16, __s1::Int16, __s0::Int16)
    ccall((:_mm_set_pi16, libSDL2), __m64, (Int16, Int16, Int16, Int16), __s3, __s2, __s1, __s0)
end

function _mm_set_pi8(__b7::UInt8, __b6::UInt8, __b5::UInt8, __b4::UInt8, __b3::UInt8, __b2::UInt8, __b1::UInt8, __b0::UInt8)
    ccall((:_mm_set_pi8, libSDL2), __m64, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0)
end

function _mm_set1_pi32(__i::Cint)
    ccall((:_mm_set1_pi32, libSDL2), __m64, (Cint,), __i)
end

function _mm_set1_pi16(__w::Int16)
    ccall((:_mm_set1_pi16, libSDL2), __m64, (Int16,), __w)
end

function _mm_set1_pi8(__b::UInt8)
    ccall((:_mm_set1_pi8, libSDL2), __m64, (UInt8,), __b)
end

function _mm_setr_pi32(__i0::Cint, __i1::Cint)
    ccall((:_mm_setr_pi32, libSDL2), __m64, (Cint, Cint), __i0, __i1)
end

function _mm_setr_pi16(__w0::Int16, __w1::Int16, __w2::Int16, __w3::Int16)
    ccall((:_mm_setr_pi16, libSDL2), __m64, (Int16, Int16, Int16, Int16), __w0, __w1, __w2, __w3)
end

function _mm_setr_pi8(__b0::UInt8, __b1::UInt8, __b2::UInt8, __b3::UInt8, __b4::UInt8, __b5::UInt8, __b6::UInt8, __b7::UInt8)
    ccall((:_mm_setr_pi8, libSDL2), __m64, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b0, __b1, __b2, __b3, __b4, __b5, __b6, __b7)
end

function posix_memalign(__memptr, __alignment::Csize_t, __size::Csize_t)
    ccall((:posix_memalign, libSDL2), Cint, (Ptr{Ptr{Cvoid}}, Csize_t, Csize_t), __memptr, __alignment, __size)
end

function _mm_malloc(__size::Csize_t, __align::Csize_t)
    ccall((:_mm_malloc, libSDL2), Ptr{Cvoid}, (Csize_t, Csize_t), __size, __align)
end

function _mm_free(__p)
    ccall((:_mm_free, libSDL2), Cvoid, (Ptr{Cvoid},), __p)
end

function _mm_add_ss(__a::__m128, __b::__m128)
    ccall((:_mm_add_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_add_ps(__a::__m128, __b::__m128)
    ccall((:_mm_add_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_sub_ss(__a::__m128, __b::__m128)
    ccall((:_mm_sub_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_sub_ps(__a::__m128, __b::__m128)
    ccall((:_mm_sub_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_mul_ss(__a::__m128, __b::__m128)
    ccall((:_mm_mul_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_mul_ps(__a::__m128, __b::__m128)
    ccall((:_mm_mul_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_div_ss(__a::__m128, __b::__m128)
    ccall((:_mm_div_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_div_ps(__a::__m128, __b::__m128)
    ccall((:_mm_div_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_sqrt_ss(__a::__m128)
    ccall((:_mm_sqrt_ss, libSDL2), __m128, (__m128,), __a)
end

function _mm_sqrt_ps(__a::__m128)
    ccall((:_mm_sqrt_ps, libSDL2), __m128, (__m128,), __a)
end

function _mm_rcp_ss(__a::__m128)
    ccall((:_mm_rcp_ss, libSDL2), __m128, (__m128,), __a)
end

function _mm_rcp_ps(__a::__m128)
    ccall((:_mm_rcp_ps, libSDL2), __m128, (__m128,), __a)
end

function _mm_rsqrt_ss(__a::__m128)
    ccall((:_mm_rsqrt_ss, libSDL2), __m128, (__m128,), __a)
end

function _mm_rsqrt_ps(__a::__m128)
    ccall((:_mm_rsqrt_ps, libSDL2), __m128, (__m128,), __a)
end

function _mm_min_ss(__a::__m128, __b::__m128)
    ccall((:_mm_min_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_min_ps(__a::__m128, __b::__m128)
    ccall((:_mm_min_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_max_ss(__a::__m128, __b::__m128)
    ccall((:_mm_max_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_max_ps(__a::__m128, __b::__m128)
    ccall((:_mm_max_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_and_ps(__a::__m128, __b::__m128)
    ccall((:_mm_and_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_andnot_ps(__a::__m128, __b::__m128)
    ccall((:_mm_andnot_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_or_ps(__a::__m128, __b::__m128)
    ccall((:_mm_or_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_xor_ps(__a::__m128, __b::__m128)
    ccall((:_mm_xor_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpeq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpeq_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpeq_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpeq_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmplt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmplt_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmplt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmplt_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmple_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmple_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmple_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmple_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpgt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpgt_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpgt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpgt_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpge_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpge_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpge_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpge_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpneq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpneq_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpneq_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpneq_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnlt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnlt_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnlt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnlt_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnle_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnle_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnle_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnle_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpngt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpngt_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpngt_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpngt_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnge_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnge_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpnge_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpnge_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpord_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpord_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpord_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpord_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpunord_ss(__a::__m128, __b::__m128)
    ccall((:_mm_cmpunord_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cmpunord_ps(__a::__m128, __b::__m128)
    ccall((:_mm_cmpunord_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_comieq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comieq_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_comilt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comilt_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_comile_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comile_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_comigt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comigt_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_comige_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comige_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_comineq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_comineq_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomieq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomieq_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomilt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomilt_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomile_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomile_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomigt_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomigt_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomige_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomige_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_ucomineq_ss(__a::__m128, __b::__m128)
    ccall((:_mm_ucomineq_ss, libSDL2), Cint, (__m128, __m128), __a, __b)
end

function _mm_cvtss_si32(__a::__m128)
    ccall((:_mm_cvtss_si32, libSDL2), Cint, (__m128,), __a)
end

function _mm_cvt_ss2si(__a::__m128)
    ccall((:_mm_cvt_ss2si, libSDL2), Cint, (__m128,), __a)
end

function _mm_cvtss_si64(__a::__m128)
    ccall((:_mm_cvtss_si64, libSDL2), Clonglong, (__m128,), __a)
end

function _mm_cvtps_pi32(__a::__m128)
    ccall((:_mm_cvtps_pi32, libSDL2), __m64, (__m128,), __a)
end

function _mm_cvt_ps2pi(__a::__m128)
    ccall((:_mm_cvt_ps2pi, libSDL2), __m64, (__m128,), __a)
end

function _mm_cvttss_si32(__a::__m128)
    ccall((:_mm_cvttss_si32, libSDL2), Cint, (__m128,), __a)
end

function _mm_cvtt_ss2si(__a::__m128)
    ccall((:_mm_cvtt_ss2si, libSDL2), Cint, (__m128,), __a)
end

function _mm_cvttss_si64(__a::__m128)
    ccall((:_mm_cvttss_si64, libSDL2), Clonglong, (__m128,), __a)
end

function _mm_cvttps_pi32(__a::__m128)
    ccall((:_mm_cvttps_pi32, libSDL2), __m64, (__m128,), __a)
end

function _mm_cvtt_ps2pi(__a::__m128)
    ccall((:_mm_cvtt_ps2pi, libSDL2), __m64, (__m128,), __a)
end

function _mm_cvtsi32_ss(__a::__m128, __b::Cint)
    ccall((:_mm_cvtsi32_ss, libSDL2), __m128, (__m128, Cint), __a, __b)
end

function _mm_cvt_si2ss(__a::__m128, __b::Cint)
    ccall((:_mm_cvt_si2ss, libSDL2), __m128, (__m128, Cint), __a, __b)
end

function _mm_cvtsi64_ss(__a::__m128, __b::Clonglong)
    ccall((:_mm_cvtsi64_ss, libSDL2), __m128, (__m128, Clonglong), __a, __b)
end

function _mm_cvtpi32_ps(__a::__m128, __b::__m64)
    ccall((:_mm_cvtpi32_ps, libSDL2), __m128, (__m128, __m64), __a, __b)
end

function _mm_cvt_pi2ps(__a::__m128, __b::__m64)
    ccall((:_mm_cvt_pi2ps, libSDL2), __m128, (__m128, __m64), __a, __b)
end

function _mm_cvtss_f32(__a::__m128)
    ccall((:_mm_cvtss_f32, libSDL2), Cfloat, (__m128,), __a)
end

function _mm_loadh_pi(__a::__m128, __p)
    ccall((:_mm_loadh_pi, libSDL2), __m128, (__m128, Ptr{__m64}), __a, __p)
end

function _mm_loadl_pi(__a::__m128, __p)
    ccall((:_mm_loadl_pi, libSDL2), __m128, (__m128, Ptr{__m64}), __a, __p)
end

function _mm_load_ss(__p)
    ccall((:_mm_load_ss, libSDL2), __m128, (Ptr{Cfloat},), __p)
end

function _mm_load1_ps(__p)
    ccall((:_mm_load1_ps, libSDL2), __m128, (Ptr{Cfloat},), __p)
end

function _mm_load_ps(__p)
    ccall((:_mm_load_ps, libSDL2), __m128, (Ptr{Cfloat},), __p)
end

function _mm_loadu_ps(__p)
    ccall((:_mm_loadu_ps, libSDL2), __m128, (Ptr{Cfloat},), __p)
end

function _mm_loadr_ps(__p)
    ccall((:_mm_loadr_ps, libSDL2), __m128, (Ptr{Cfloat},), __p)
end

function _mm_undefined_ps()
    ccall((:_mm_undefined_ps, libSDL2), __m128, ())
end

function _mm_set_ss(__w::Cfloat)
    ccall((:_mm_set_ss, libSDL2), __m128, (Cfloat,), __w)
end

function _mm_set1_ps(__w::Cfloat)
    ccall((:_mm_set1_ps, libSDL2), __m128, (Cfloat,), __w)
end

function _mm_set_ps1(__w::Cfloat)
    ccall((:_mm_set_ps1, libSDL2), __m128, (Cfloat,), __w)
end

function _mm_set_ps(__z::Cfloat, __y::Cfloat, __x::Cfloat, __w::Cfloat)
    ccall((:_mm_set_ps, libSDL2), __m128, (Cfloat, Cfloat, Cfloat, Cfloat), __z, __y, __x, __w)
end

function _mm_setr_ps(__z::Cfloat, __y::Cfloat, __x::Cfloat, __w::Cfloat)
    ccall((:_mm_setr_ps, libSDL2), __m128, (Cfloat, Cfloat, Cfloat, Cfloat), __z, __y, __x, __w)
end

function _mm_setzero_ps()
    ccall((:_mm_setzero_ps, libSDL2), __m128, ())
end

function _mm_storeh_pi(__p, __a::__m128)
    ccall((:_mm_storeh_pi, libSDL2), Cvoid, (Ptr{__m64}, __m128), __p, __a)
end

function _mm_storel_pi(__p, __a::__m128)
    ccall((:_mm_storel_pi, libSDL2), Cvoid, (Ptr{__m64}, __m128), __p, __a)
end

function _mm_store_ss(__p, __a::__m128)
    ccall((:_mm_store_ss, libSDL2), Cvoid, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_storeu_ps(__p, __a::__m128)
    ccall((:_mm_storeu_ps, libSDL2), Cvoid, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_store_ps(__p, __a::__m128)
    ccall((:_mm_store_ps, libSDL2), Cvoid, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_store1_ps(__p, __a::__m128)
    ccall((:_mm_store1_ps, libSDL2), Cvoid, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_store_ps1(__p, __a::__m128)
    ccall((:_mm_store_ps1, libSDL2), Cvoid, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_storer_ps(__p, __a::__m128)
    ccall((:_mm_storer_ps, libSDL2), Cvoid, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_stream_pi(__p, __a::__m64)
    ccall((:_mm_stream_pi, libSDL2), Cvoid, (Ptr{__m64}, __m64), __p, __a)
end

function _mm_stream_ps(__p, __a::__m128)
    ccall((:_mm_stream_ps, libSDL2), Cvoid, (Ptr{Cfloat}, __m128), __p, __a)
end

function _mm_sfence()
    ccall((:_mm_sfence, libSDL2), Cvoid, ())
end

function _mm_max_pi16(__a::__m64, __b::__m64)
    ccall((:_mm_max_pi16, libSDL2), __m64, (__m64, __m64), __a, __b)
end

function _mm_max_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_max_pu8, libSDL2), __m64, (__m64, __m64), __a, __b)
end

function _mm_min_pi16(__a::__m64, __b::__m64)
    ccall((:_mm_min_pi16, libSDL2), __m64, (__m64, __m64), __a, __b)
end

function _mm_min_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_min_pu8, libSDL2), __m64, (__m64, __m64), __a, __b)
end

function _mm_movemask_pi8(__a::__m64)
    ccall((:_mm_movemask_pi8, libSDL2), Cint, (__m64,), __a)
end

function _mm_mulhi_pu16(__a::__m64, __b::__m64)
    ccall((:_mm_mulhi_pu16, libSDL2), __m64, (__m64, __m64), __a, __b)
end

function _mm_maskmove_si64(__d::__m64, __n::__m64, __p)
    ccall((:_mm_maskmove_si64, libSDL2), Cvoid, (__m64, __m64, Cstring), __d, __n, __p)
end

function _mm_avg_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_avg_pu8, libSDL2), __m64, (__m64, __m64), __a, __b)
end

function _mm_avg_pu16(__a::__m64, __b::__m64)
    ccall((:_mm_avg_pu16, libSDL2), __m64, (__m64, __m64), __a, __b)
end

function _mm_sad_pu8(__a::__m64, __b::__m64)
    ccall((:_mm_sad_pu8, libSDL2), __m64, (__m64, __m64), __a, __b)
end

function _mm_getcsr()
    ccall((:_mm_getcsr, libSDL2), UInt32, ())
end

function _mm_setcsr(__i::UInt32)
    ccall((:_mm_setcsr, libSDL2), Cvoid, (UInt32,), __i)
end

function _mm_unpackhi_ps(__a::__m128, __b::__m128)
    ccall((:_mm_unpackhi_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_unpacklo_ps(__a::__m128, __b::__m128)
    ccall((:_mm_unpacklo_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_move_ss(__a::__m128, __b::__m128)
    ccall((:_mm_move_ss, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_movehl_ps(__a::__m128, __b::__m128)
    ccall((:_mm_movehl_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_movelh_ps(__a::__m128, __b::__m128)
    ccall((:_mm_movelh_ps, libSDL2), __m128, (__m128, __m128), __a, __b)
end

function _mm_cvtpi16_ps(__a::__m64)
    ccall((:_mm_cvtpi16_ps, libSDL2), __m128, (__m64,), __a)
end

function _mm_cvtpu16_ps(__a::__m64)
    ccall((:_mm_cvtpu16_ps, libSDL2), __m128, (__m64,), __a)
end

function _mm_cvtpi8_ps(__a::__m64)
    ccall((:_mm_cvtpi8_ps, libSDL2), __m128, (__m64,), __a)
end

function _mm_cvtpu8_ps(__a::__m64)
    ccall((:_mm_cvtpu8_ps, libSDL2), __m128, (__m64,), __a)
end

function _mm_cvtpi32x2_ps(__a::__m64, __b::__m64)
    ccall((:_mm_cvtpi32x2_ps, libSDL2), __m128, (__m64, __m64), __a, __b)
end

function _mm_cvtps_pi16(__a::__m128)
    ccall((:_mm_cvtps_pi16, libSDL2), __m64, (__m128,), __a)
end

function _mm_cvtps_pi8(__a::__m128)
    ccall((:_mm_cvtps_pi8, libSDL2), __m64, (__m128,), __a)
end

function _mm_movemask_ps(__a::__m128)
    ccall((:_mm_movemask_ps, libSDL2), Cint, (__m128,), __a)
end

function _cvtsh_ss(__a::UInt16)
    ccall((:_cvtsh_ss, libSDL2), Cfloat, (UInt16,), __a)
end

function _mm_cvtph_ps(__a::__m128i)
    ccall((:_mm_cvtph_ps, libSDL2), __m128, (__m128i,), __a)
end

function _mm_add_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_add_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_add_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_add_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sub_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_sub_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sub_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_sub_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_mul_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_mul_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_mul_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_mul_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_div_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_div_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_div_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_div_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sqrt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_sqrt_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_sqrt_pd(__a::__m128d)
    ccall((:_mm_sqrt_pd, libSDL2), __m128d, (__m128d,), __a)
end

function _mm_min_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_min_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_min_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_min_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_max_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_max_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_max_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_max_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_and_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_and_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_andnot_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_andnot_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_or_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_or_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_xor_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_xor_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpeq_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpeq_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmplt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmplt_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmple_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmple_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpgt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpgt_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpge_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpge_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpord_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpord_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpunord_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpunord_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpneq_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpneq_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnlt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnlt_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnle_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnle_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpngt_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpngt_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnge_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnge_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpeq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpeq_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmplt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmplt_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmple_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmple_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpgt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpgt_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpge_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpge_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpord_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpord_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpunord_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpunord_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpneq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpneq_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnlt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnlt_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnle_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnle_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpngt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpngt_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_cmpnge_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_cmpnge_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_comieq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comieq_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comilt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comilt_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comile_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comile_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comigt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comigt_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comige_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comige_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_comineq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_comineq_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomieq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomieq_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomilt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomilt_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomile_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomile_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomigt_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomigt_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomige_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomige_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_ucomineq_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_ucomineq_sd, libSDL2), Cint, (__m128d, __m128d), __a, __b)
end

function _mm_cvtpd_ps(__a::__m128d)
    ccall((:_mm_cvtpd_ps, libSDL2), __m128, (__m128d,), __a)
end

function _mm_cvtps_pd(__a::__m128)
    ccall((:_mm_cvtps_pd, libSDL2), __m128d, (__m128,), __a)
end

function _mm_cvtepi32_pd(__a::__m128i)
    ccall((:_mm_cvtepi32_pd, libSDL2), __m128d, (__m128i,), __a)
end

function _mm_cvtpd_epi32(__a::__m128d)
    ccall((:_mm_cvtpd_epi32, libSDL2), __m128i, (__m128d,), __a)
end

function _mm_cvtsd_si32(__a::__m128d)
    ccall((:_mm_cvtsd_si32, libSDL2), Cint, (__m128d,), __a)
end

function _mm_cvtsd_ss(__a::__m128, __b::__m128d)
    ccall((:_mm_cvtsd_ss, libSDL2), __m128, (__m128, __m128d), __a, __b)
end

function _mm_cvtsi32_sd(__a::__m128d, __b::Cint)
    ccall((:_mm_cvtsi32_sd, libSDL2), __m128d, (__m128d, Cint), __a, __b)
end

function _mm_cvtss_sd(__a::__m128d, __b::__m128)
    ccall((:_mm_cvtss_sd, libSDL2), __m128d, (__m128d, __m128), __a, __b)
end

function _mm_cvttpd_epi32(__a::__m128d)
    ccall((:_mm_cvttpd_epi32, libSDL2), __m128i, (__m128d,), __a)
end

function _mm_cvttsd_si32(__a::__m128d)
    ccall((:_mm_cvttsd_si32, libSDL2), Cint, (__m128d,), __a)
end

function _mm_cvtpd_pi32(__a::__m128d)
    ccall((:_mm_cvtpd_pi32, libSDL2), __m64, (__m128d,), __a)
end

function _mm_cvttpd_pi32(__a::__m128d)
    ccall((:_mm_cvttpd_pi32, libSDL2), __m64, (__m128d,), __a)
end

function _mm_cvtpi32_pd(__a::__m64)
    ccall((:_mm_cvtpi32_pd, libSDL2), __m128d, (__m64,), __a)
end

function _mm_cvtsd_f64(__a::__m128d)
    ccall((:_mm_cvtsd_f64, libSDL2), Cdouble, (__m128d,), __a)
end

function _mm_load_pd(__dp)
    ccall((:_mm_load_pd, libSDL2), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_load1_pd(__dp)
    ccall((:_mm_load1_pd, libSDL2), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadr_pd(__dp)
    ccall((:_mm_loadr_pd, libSDL2), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadu_pd(__dp)
    ccall((:_mm_loadu_pd, libSDL2), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadu_si64(__a)
    ccall((:_mm_loadu_si64, libSDL2), __m128i, (Ptr{Cvoid},), __a)
end

function _mm_load_sd(__dp)
    ccall((:_mm_load_sd, libSDL2), __m128d, (Ptr{Cdouble},), __dp)
end

function _mm_loadh_pd(__a::__m128d, __dp)
    ccall((:_mm_loadh_pd, libSDL2), __m128d, (__m128d, Ptr{Cdouble}), __a, __dp)
end

function _mm_loadl_pd(__a::__m128d, __dp)
    ccall((:_mm_loadl_pd, libSDL2), __m128d, (__m128d, Ptr{Cdouble}), __a, __dp)
end

function _mm_undefined_pd()
    ccall((:_mm_undefined_pd, libSDL2), __m128d, ())
end

function _mm_set_sd(__w::Cdouble)
    ccall((:_mm_set_sd, libSDL2), __m128d, (Cdouble,), __w)
end

function _mm_set1_pd(__w::Cdouble)
    ccall((:_mm_set1_pd, libSDL2), __m128d, (Cdouble,), __w)
end

function _mm_set_pd1(__w::Cdouble)
    ccall((:_mm_set_pd1, libSDL2), __m128d, (Cdouble,), __w)
end

function _mm_set_pd(__w::Cdouble, __x::Cdouble)
    ccall((:_mm_set_pd, libSDL2), __m128d, (Cdouble, Cdouble), __w, __x)
end

function _mm_setr_pd(__w::Cdouble, __x::Cdouble)
    ccall((:_mm_setr_pd, libSDL2), __m128d, (Cdouble, Cdouble), __w, __x)
end

function _mm_setzero_pd()
    ccall((:_mm_setzero_pd, libSDL2), __m128d, ())
end

function _mm_move_sd(__a::__m128d, __b::__m128d)
    ccall((:_mm_move_sd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_store_sd(__dp, __a::__m128d)
    ccall((:_mm_store_sd, libSDL2), Cvoid, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_store_pd(__dp, __a::__m128d)
    ccall((:_mm_store_pd, libSDL2), Cvoid, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_store1_pd(__dp, __a::__m128d)
    ccall((:_mm_store1_pd, libSDL2), Cvoid, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_store_pd1(__dp, __a::__m128d)
    ccall((:_mm_store_pd1, libSDL2), Cvoid, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storeu_pd(__dp, __a::__m128d)
    ccall((:_mm_storeu_pd, libSDL2), Cvoid, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storer_pd(__dp, __a::__m128d)
    ccall((:_mm_storer_pd, libSDL2), Cvoid, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storeh_pd(__dp, __a::__m128d)
    ccall((:_mm_storeh_pd, libSDL2), Cvoid, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_storel_pd(__dp, __a::__m128d)
    ccall((:_mm_storel_pd, libSDL2), Cvoid, (Ptr{Cdouble}, __m128d), __dp, __a)
end

function _mm_add_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_add_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_add_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi32, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_add_si64(__a::__m64, __b::__m64)
    ccall((:_mm_add_si64, libSDL2), __m64, (__m64, __m64), __a, __b)
end

function _mm_add_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_add_epi64, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epi8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epu8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_adds_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_adds_epu16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_avg_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_avg_epu8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_avg_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_avg_epu16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_madd_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_madd_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_max_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_max_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_max_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_max_epu8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_min_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_min_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_min_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_min_epu8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mulhi_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_mulhi_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mulhi_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_mulhi_epu16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mullo_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_mullo_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_mul_su32(__a::__m64, __b::__m64)
    ccall((:_mm_mul_su32, libSDL2), __m64, (__m64, __m64), __a, __b)
end

function _mm_mul_epu32(__a::__m128i, __b::__m128i)
    ccall((:_mm_mul_epu32, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sad_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_sad_epu8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi32, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_sub_si64(__a::__m64, __b::__m64)
    ccall((:_mm_sub_si64, libSDL2), __m64, (__m64, __m64), __a, __b)
end

function _mm_sub_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_sub_epi64, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epi8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epu8(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epu8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_subs_epu16(__a::__m128i, __b::__m128i)
    ccall((:_mm_subs_epu16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_and_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_and_si128, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_andnot_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_andnot_si128, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_or_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_or_si128, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_xor_si128(__a::__m128i, __b::__m128i)
    ccall((:_mm_xor_si128, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_slli_epi16(__a::__m128i, __count::Cint)
    ccall((:_mm_slli_epi16, libSDL2), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sll_epi16(__a::__m128i, __count::__m128i)
    ccall((:_mm_sll_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_slli_epi32(__a::__m128i, __count::Cint)
    ccall((:_mm_slli_epi32, libSDL2), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sll_epi32(__a::__m128i, __count::__m128i)
    ccall((:_mm_sll_epi32, libSDL2), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_slli_epi64(__a::__m128i, __count::Cint)
    ccall((:_mm_slli_epi64, libSDL2), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sll_epi64(__a::__m128i, __count::__m128i)
    ccall((:_mm_sll_epi64, libSDL2), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srai_epi16(__a::__m128i, __count::Cint)
    ccall((:_mm_srai_epi16, libSDL2), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sra_epi16(__a::__m128i, __count::__m128i)
    ccall((:_mm_sra_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srai_epi32(__a::__m128i, __count::Cint)
    ccall((:_mm_srai_epi32, libSDL2), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_sra_epi32(__a::__m128i, __count::__m128i)
    ccall((:_mm_sra_epi32, libSDL2), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srli_epi16(__a::__m128i, __count::Cint)
    ccall((:_mm_srli_epi16, libSDL2), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_srl_epi16(__a::__m128i, __count::__m128i)
    ccall((:_mm_srl_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srli_epi32(__a::__m128i, __count::Cint)
    ccall((:_mm_srli_epi32, libSDL2), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_srl_epi32(__a::__m128i, __count::__m128i)
    ccall((:_mm_srl_epi32, libSDL2), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_srli_epi64(__a::__m128i, __count::Cint)
    ccall((:_mm_srli_epi64, libSDL2), __m128i, (__m128i, Cint), __a, __count)
end

function _mm_srl_epi64(__a::__m128i, __count::__m128i)
    ccall((:_mm_srl_epi64, libSDL2), __m128i, (__m128i, __m128i), __a, __count)
end

function _mm_cmpeq_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpeq_epi8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpeq_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpeq_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpeq_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpeq_epi32, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpgt_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpgt_epi8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpgt_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpgt_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmpgt_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmpgt_epi32, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmplt_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmplt_epi8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmplt_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmplt_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cmplt_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_cmplt_epi32, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_cvtsi64_sd(__a::__m128d, __b::Clonglong)
    ccall((:_mm_cvtsi64_sd, libSDL2), __m128d, (__m128d, Clonglong), __a, __b)
end

function _mm_cvtsd_si64(__a::__m128d)
    ccall((:_mm_cvtsd_si64, libSDL2), Clonglong, (__m128d,), __a)
end

function _mm_cvttsd_si64(__a::__m128d)
    ccall((:_mm_cvttsd_si64, libSDL2), Clonglong, (__m128d,), __a)
end

function _mm_cvtepi32_ps(__a::__m128i)
    ccall((:_mm_cvtepi32_ps, libSDL2), __m128, (__m128i,), __a)
end

function _mm_cvtps_epi32(__a::__m128)
    ccall((:_mm_cvtps_epi32, libSDL2), __m128i, (__m128,), __a)
end

function _mm_cvttps_epi32(__a::__m128)
    ccall((:_mm_cvttps_epi32, libSDL2), __m128i, (__m128,), __a)
end

function _mm_cvtsi32_si128(__a::Cint)
    ccall((:_mm_cvtsi32_si128, libSDL2), __m128i, (Cint,), __a)
end

function _mm_cvtsi64_si128(__a::Clonglong)
    ccall((:_mm_cvtsi64_si128, libSDL2), __m128i, (Clonglong,), __a)
end

function _mm_cvtsi128_si32(__a::__m128i)
    ccall((:_mm_cvtsi128_si32, libSDL2), Cint, (__m128i,), __a)
end

function _mm_cvtsi128_si64(__a::__m128i)
    ccall((:_mm_cvtsi128_si64, libSDL2), Clonglong, (__m128i,), __a)
end

function _mm_load_si128(__p)
    ccall((:_mm_load_si128, libSDL2), __m128i, (Ptr{__m128i},), __p)
end

function _mm_loadu_si128(__p)
    ccall((:_mm_loadu_si128, libSDL2), __m128i, (Ptr{__m128i},), __p)
end

function _mm_loadl_epi64(__p)
    ccall((:_mm_loadl_epi64, libSDL2), __m128i, (Ptr{__m128i},), __p)
end

function _mm_undefined_si128()
    ccall((:_mm_undefined_si128, libSDL2), __m128i, ())
end

function _mm_set_epi64x(__q1::Clonglong, __q0::Clonglong)
    ccall((:_mm_set_epi64x, libSDL2), __m128i, (Clonglong, Clonglong), __q1, __q0)
end

function _mm_set_epi64(__q1::__m64, __q0::__m64)
    ccall((:_mm_set_epi64, libSDL2), __m128i, (__m64, __m64), __q1, __q0)
end

function _mm_set_epi32(__i3::Cint, __i2::Cint, __i1::Cint, __i0::Cint)
    ccall((:_mm_set_epi32, libSDL2), __m128i, (Cint, Cint, Cint, Cint), __i3, __i2, __i1, __i0)
end

function _mm_set_epi16(__w7::Int16, __w6::Int16, __w5::Int16, __w4::Int16, __w3::Int16, __w2::Int16, __w1::Int16, __w0::Int16)
    ccall((:_mm_set_epi16, libSDL2), __m128i, (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), __w7, __w6, __w5, __w4, __w3, __w2, __w1, __w0)
end

function _mm_set_epi8(__b15::UInt8, __b14::UInt8, __b13::UInt8, __b12::UInt8, __b11::UInt8, __b10::UInt8, __b9::UInt8, __b8::UInt8, __b7::UInt8, __b6::UInt8, __b5::UInt8, __b4::UInt8, __b3::UInt8, __b2::UInt8, __b1::UInt8, __b0::UInt8)
    ccall((:_mm_set_epi8, libSDL2), __m128i, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b15, __b14, __b13, __b12, __b11, __b10, __b9, __b8, __b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0)
end

function _mm_set1_epi64x(__q::Clonglong)
    ccall((:_mm_set1_epi64x, libSDL2), __m128i, (Clonglong,), __q)
end

function _mm_set1_epi64(__q::__m64)
    ccall((:_mm_set1_epi64, libSDL2), __m128i, (__m64,), __q)
end

function _mm_set1_epi32(__i::Cint)
    ccall((:_mm_set1_epi32, libSDL2), __m128i, (Cint,), __i)
end

function _mm_set1_epi16(__w::Int16)
    ccall((:_mm_set1_epi16, libSDL2), __m128i, (Int16,), __w)
end

function _mm_set1_epi8(__b::UInt8)
    ccall((:_mm_set1_epi8, libSDL2), __m128i, (UInt8,), __b)
end

function _mm_setr_epi64(__q0::__m64, __q1::__m64)
    ccall((:_mm_setr_epi64, libSDL2), __m128i, (__m64, __m64), __q0, __q1)
end

function _mm_setr_epi32(__i0::Cint, __i1::Cint, __i2::Cint, __i3::Cint)
    ccall((:_mm_setr_epi32, libSDL2), __m128i, (Cint, Cint, Cint, Cint), __i0, __i1, __i2, __i3)
end

function _mm_setr_epi16(__w0::Int16, __w1::Int16, __w2::Int16, __w3::Int16, __w4::Int16, __w5::Int16, __w6::Int16, __w7::Int16)
    ccall((:_mm_setr_epi16, libSDL2), __m128i, (Int16, Int16, Int16, Int16, Int16, Int16, Int16, Int16), __w0, __w1, __w2, __w3, __w4, __w5, __w6, __w7)
end

function _mm_setr_epi8(__b0::UInt8, __b1::UInt8, __b2::UInt8, __b3::UInt8, __b4::UInt8, __b5::UInt8, __b6::UInt8, __b7::UInt8, __b8::UInt8, __b9::UInt8, __b10::UInt8, __b11::UInt8, __b12::UInt8, __b13::UInt8, __b14::UInt8, __b15::UInt8)
    ccall((:_mm_setr_epi8, libSDL2), __m128i, (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), __b0, __b1, __b2, __b3, __b4, __b5, __b6, __b7, __b8, __b9, __b10, __b11, __b12, __b13, __b14, __b15)
end

function _mm_setzero_si128()
    ccall((:_mm_setzero_si128, libSDL2), __m128i, ())
end

function _mm_store_si128(__p, __b::__m128i)
    ccall((:_mm_store_si128, libSDL2), Cvoid, (Ptr{__m128i}, __m128i), __p, __b)
end

function _mm_storeu_si128(__p, __b::__m128i)
    ccall((:_mm_storeu_si128, libSDL2), Cvoid, (Ptr{__m128i}, __m128i), __p, __b)
end

function _mm_maskmoveu_si128(__d::__m128i, __n::__m128i, __p)
    ccall((:_mm_maskmoveu_si128, libSDL2), Cvoid, (__m128i, __m128i, Cstring), __d, __n, __p)
end

function _mm_storel_epi64(__p, __a::__m128i)
    ccall((:_mm_storel_epi64, libSDL2), Cvoid, (Ptr{__m128i}, __m128i), __p, __a)
end

function _mm_stream_pd(__p, __a::__m128d)
    ccall((:_mm_stream_pd, libSDL2), Cvoid, (Ptr{Cdouble}, __m128d), __p, __a)
end

function _mm_stream_si128(__p, __a::__m128i)
    ccall((:_mm_stream_si128, libSDL2), Cvoid, (Ptr{__m128i}, __m128i), __p, __a)
end

function _mm_stream_si32(__p, __a::Cint)
    ccall((:_mm_stream_si32, libSDL2), Cvoid, (Ptr{Cint}, Cint), __p, __a)
end

function _mm_stream_si64(__p, __a::Clonglong)
    ccall((:_mm_stream_si64, libSDL2), Cvoid, (Ptr{Clonglong}, Clonglong), __p, __a)
end

function _mm_clflush(__p)
    ccall((:_mm_clflush, libSDL2), Cvoid, (Ptr{Cvoid},), __p)
end

function _mm_lfence()
    ccall((:_mm_lfence, libSDL2), Cvoid, ())
end

function _mm_mfence()
    ccall((:_mm_mfence, libSDL2), Cvoid, ())
end

function _mm_packs_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_packs_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_packs_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_packs_epi32, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_packus_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_packus_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_extract_epi16(__a::__m128i, __imm::Cint)
    ccall((:_mm_extract_epi16, libSDL2), Cint, (__m128i, Cint), __a, __imm)
end

function _mm_insert_epi16(__a::__m128i, __b::Cint, __imm::Cint)
    ccall((:_mm_insert_epi16, libSDL2), __m128i, (__m128i, Cint, Cint), __a, __b, __imm)
end

function _mm_movemask_epi8(__a::__m128i)
    ccall((:_mm_movemask_epi8, libSDL2), Cint, (__m128i,), __a)
end

function _mm_unpackhi_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpackhi_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpackhi_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi32, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpackhi_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpackhi_epi64, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi8(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi8, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi16(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi16, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi32(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi32, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_unpacklo_epi64(__a::__m128i, __b::__m128i)
    ccall((:_mm_unpacklo_epi64, libSDL2), __m128i, (__m128i, __m128i), __a, __b)
end

function _mm_movepi64_pi64(__a::__m128i)
    ccall((:_mm_movepi64_pi64, libSDL2), __m64, (__m128i,), __a)
end

function _mm_movpi64_epi64(__a::__m64)
    ccall((:_mm_movpi64_epi64, libSDL2), __m128i, (__m64,), __a)
end

function _mm_move_epi64(__a::__m128i)
    ccall((:_mm_move_epi64, libSDL2), __m128i, (__m128i,), __a)
end

function _mm_unpackhi_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_unpackhi_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_unpacklo_pd(__a::__m128d, __b::__m128d)
    ccall((:_mm_unpacklo_pd, libSDL2), __m128d, (__m128d, __m128d), __a, __b)
end

function _mm_movemask_pd(__a::__m128d)
    ccall((:_mm_movemask_pd, libSDL2), Cint, (__m128d,), __a)
end

function _mm_castpd_ps(__a::__m128d)
    ccall((:_mm_castpd_ps, libSDL2), __m128, (__m128d,), __a)
end

function _mm_castpd_si128(__a::__m128d)
    ccall((:_mm_castpd_si128, libSDL2), __m128i, (__m128d,), __a)
end

function _mm_castps_pd(__a::__m128)
    ccall((:_mm_castps_pd, libSDL2), __m128d, (__m128,), __a)
end

function _mm_castps_si128(__a::__m128)
    ccall((:_mm_castps_si128, libSDL2), __m128i, (__m128,), __a)
end

function _mm_castsi128_ps(__a::__m128i)
    ccall((:_mm_castsi128_ps, libSDL2), __m128, (__m128i,), __a)
end

function _mm_castsi128_pd(__a::__m128i)
    ccall((:_mm_castsi128_pd, libSDL2), __m128d, (__m128i,), __a)
end

=#

function _mm_pause()
    ccall((:_mm_pause, libSDL2), Cvoid, ())
end

function GetCPUCount()
    ccall((:SDL_GetCPUCount, libSDL2), Cint, ())
end

function GetCPUCacheLineSize()
    ccall((:SDL_GetCPUCacheLineSize, libSDL2), Cint, ())
end

function HasRDTSC()
    ccall((:SDL_HasRDTSC, libSDL2), bool, ())
end

function HasAltiVec()
    ccall((:SDL_HasAltiVec, libSDL2), bool, ())
end

function HasMMX()
    ccall((:SDL_HasMMX, libSDL2), bool, ())
end

function Has3DNow()
    ccall((:SDL_Has3DNow, libSDL2), bool, ())
end

function HasSSE()
    ccall((:SDL_HasSSE, libSDL2), bool, ())
end

function HasSSE2()
    ccall((:SDL_HasSSE2, libSDL2), bool, ())
end

function HasSSE3()
    ccall((:SDL_HasSSE3, libSDL2), bool, ())
end

function HasSSE41()
    ccall((:SDL_HasSSE41, libSDL2), bool, ())
end

function HasSSE42()
    ccall((:SDL_HasSSE42, libSDL2), bool, ())
end

function HasAVX()
    ccall((:SDL_HasAVX, libSDL2), bool, ())
end

function HasAVX2()
    ccall((:SDL_HasAVX2, libSDL2), bool, ())
end

function GetSystemRAM()
    ccall((:SDL_GetSystemRAM, libSDL2), Cint, ())
end

function GetPixelFormatName(format::Uint32)
    ccall((:SDL_GetPixelFormatName, libSDL2), Cstring, (Uint32,), format)
end

function PixelFormatEnumToMasks(format::Uint32, bpp, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_PixelFormatEnumToMasks, libSDL2), bool, (Uint32, Ptr{Cint}, Ptr{Uint32}, Ptr{Uint32}, Ptr{Uint32}, Ptr{Uint32}), format, bpp, Rmask, Gmask, Bmask, Amask)
end

function MasksToPixelFormatEnum(bpp::Cint, Rmask::Uint32, Gmask::Uint32, Bmask::Uint32, Amask::Uint32)
    ccall((:SDL_MasksToPixelFormatEnum, libSDL2), Uint32, (Cint, Uint32, Uint32, Uint32, Uint32), bpp, Rmask, Gmask, Bmask, Amask)
end

function AllocFormat(pixel_format::Uint32)
    ccall((:SDL_AllocFormat, libSDL2), Ptr{PixelFormat}, (Uint32,), pixel_format)
end

function FreeFormat(format)
    ccall((:SDL_FreeFormat, libSDL2), Cvoid, (Ptr{PixelFormat},), format)
end

function AllocPalette(ncolors::Cint)
    ccall((:SDL_AllocPalette, libSDL2), Ptr{Palette}, (Cint,), ncolors)
end

function SetPixelFormatPalette(format, palette)
    ccall((:SDL_SetPixelFormatPalette, libSDL2), Cint, (Ptr{PixelFormat}, Ptr{Palette}), format, palette)
end

function SetPaletteColors(palette, colors, firstcolor::Cint, ncolors::Cint)
    ccall((:SDL_SetPaletteColors, libSDL2), Cint, (Ptr{Palette}, Ptr{Color}, Cint, Cint), palette, colors, firstcolor, ncolors)
end

function FreePalette(palette)
    ccall((:SDL_FreePalette, libSDL2), Cvoid, (Ptr{Palette},), palette)
end

function MapRGB(format, r, g, b)
    ccall((:SDL_MapRGB, libSDL2), Uint32, (Ptr{PixelFormat}, Uint8, Uint8, Uint8), format, r, g, b)
end

function MapRGBA(format, r, g, b, a)
    ccall((:SDL_MapRGBA, libSDL2), Uint32, (Ptr{PixelFormat}, Uint8, Uint8, Uint8, Uint8), format, r, g, b, a)
end

function GetRGB(pixel::Uint32, format, r, g, b)
    ccall((:SDL_GetRGB, libSDL2), Cvoid, (Uint32, Ptr{PixelFormat}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), pixel, format, r, g, b)
end

function GetRGBA(pixel::Uint32, format, r, g, b, a)
    ccall((:SDL_GetRGBA, libSDL2), Cvoid, (Uint32, Ptr{PixelFormat}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), pixel, format, r, g, b, a)
end

function CalculateGammaRamp(gamma::Cfloat, ramp)
    ccall((:SDL_CalculateGammaRamp, libSDL2), Cvoid, (Cfloat, Ptr{Uint16}), gamma, ramp)
end

function PointInRect(p, r)
    ccall((:SDL_PointInRect, libSDL2), bool, (Ptr{Point}, Ptr{Rect}), p, r)
end

function RectEmpty(r)
    ccall((:SDL_RectEmpty, libSDL2), bool, (Ptr{Rect},), r)
end

function RectEquals(a, b)
    ccall((:SDL_RectEquals, libSDL2), bool, (Ptr{Rect}, Ptr{Rect}), a, b)
end

function HasIntersection(A, B)
    ccall((:SDL_HasIntersection, libSDL2), bool, (Ptr{Rect}, Ptr{Rect}), A, B)
end

function IntersectRect(A, B, result)
    ccall((:SDL_IntersectRect, libSDL2), bool, (Ptr{Rect}, Ptr{Rect}, Ptr{Rect}), A, B, result)
end

function UnionRect(A, B, result)
    ccall((:SDL_UnionRect, libSDL2), Cvoid, (Ptr{Rect}, Ptr{Rect}, Ptr{Rect}), A, B, result)
end

function EnclosePoints(points, count::Cint, clip, result)
    ccall((:SDL_EnclosePoints, libSDL2), bool, (Ptr{Point}, Cint, Ptr{Rect}, Ptr{Rect}), points, count, clip, result)
end

function IntersectRectAndLine(rect, X1, Y1, X2, Y2)
    ccall((:SDL_IntersectRectAndLine, libSDL2), bool, (Ptr{Rect}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), rect, X1, Y1, X2, Y2)
end

function CreateRGBSurface(flags::Uint32, width::Cint, height::Cint, depth::Cint, Rmask::UInt32, Gmask::UInt32, Bmask::UInt32, Amask::UInt32)
    ccall((:SDL_CreateRGBSurface, libSDL2), Ptr{Surface}, (Uint32, Cint, Cint, Cint, UInt32, UInt32, UInt32, UInt32), flags, width, height, depth, Rmask, Gmask, Bmask, Amask)
end

function CreateRGBSurfaceWithFormat(flags, width, height, depth, format)
    ccall((:SDL_CreateRGBSurfaceWithFormat, libSDL2), Ptr{Surface}, (Uint32, Cint, Cint, Cint, Uint32), flags, width, height, depth, format)
end

function CreateRGBSurfaceFrom(pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_CreateRGBSurfaceFrom, libSDL2), Ptr{Surface}, (Ptr{Cvoid}, Cint, Cint, Cint, Cint, UInt32, UInt32, UInt32, UInt32), pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask)
end

function CreateRGBSurfaceWithFormatFrom(pixels, width::Cint, height::Cint, depth::Cint, pitch::Cint, format::Uint32)
    ccall((:SDL_CreateRGBSurfaceWithFormatFrom, libSDL2), Ptr{Surface}, (Ptr{Cvoid}, Cint, Cint, Cint, Cint, Uint32), pixels, width, height, depth, pitch, format)
end

function FreeSurface(surface)
    ccall((:SDL_FreeSurface, libSDL2), Cvoid, (Ptr{Surface},), surface)
end

function SetSurfacePalette(surface, palette)
    ccall((:SDL_SetSurfacePalette, libSDL2), Cint, (Ptr{Surface}, Ptr{Palette}), surface, palette)
end

function LockSurface(surface)
    ccall((:SDL_LockSurface, libSDL2), Cint, (Ptr{Surface},), surface)
end

function UnlockSurface(surface)
    ccall((:SDL_UnlockSurface, libSDL2), Cvoid, (Ptr{Surface},), surface)
end

function LoadBMP_RW(src, freesrc::Cint)
    ccall((:SDL_LoadBMP_RW, libSDL2), Ptr{Surface}, (Ptr{RWops}, Cint), src, freesrc)
end

SDL_LoadBMP(src::String) = SDL_LoadBMP_RW(src,1)

function SaveBMP_RW(surface, dst, freedst::Cint)
    ccall((:SDL_SaveBMP_RW, libSDL2), Cint, (Ptr{Surface}, Ptr{RWops}, Cint), surface, dst, freedst)
end

function SetSurfaceRLE(surface, flag::Cint)
    ccall((:SDL_SetSurfaceRLE, libSDL2), Cint, (Ptr{Surface}, Cint), surface, flag)
end

function SetColorKey(surface, flag::Cint, key::Uint32)
    ccall((:SDL_SetColorKey, libSDL2), Cint, (Ptr{Surface}, Cint, Uint32), surface, flag, key)
end

function GetColorKey(surface, key)
    ccall((:SDL_GetColorKey, libSDL2), Cint, (Ptr{Surface}, Ptr{Uint32}), surface, key)
end

function SetSurfaceColorMod(surface, r::Uint8, g::Uint8, b::Uint8)
    ccall((:SDL_SetSurfaceColorMod, libSDL2), Cint, (Ptr{Surface}, Uint8, Uint8, Uint8), surface, r, g, b)
end

function GetSurfaceColorMod(surface, r, g, b)
    ccall((:SDL_GetSurfaceColorMod, libSDL2), Cint, (Ptr{Surface}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), surface, r, g, b)
end

function SetSurfaceAlphaMod(surface, alpha::Uint8)
    ccall((:SDL_SetSurfaceAlphaMod, libSDL2), Cint, (Ptr{Surface}, Uint8), surface, alpha)
end

function GetSurfaceAlphaMod(surface, alpha)
    ccall((:SDL_GetSurfaceAlphaMod, libSDL2), Cint, (Ptr{Surface}, Ptr{Uint8}), surface, alpha)
end

function SetSurfaceBlendMode(surface, blendMode::BlendMode)
    ccall((:SDL_SetSurfaceBlendMode, libSDL2), Cint, (Ptr{Surface}, BlendMode), surface, blendMode)
end

function GetSurfaceBlendMode(surface, blendMode)
    ccall((:SDL_GetSurfaceBlendMode, libSDL2), Cint, (Ptr{Surface}, Ptr{BlendMode}), surface, blendMode)
end

function SetClipRect(surface, rect)
    ccall((:SDL_SetClipRect, libSDL2), bool, (Ptr{Surface}, Ptr{Rect}), surface, rect)
end

function GetClipRect(surface, rect)
    ccall((:SDL_GetClipRect, libSDL2), Cvoid, (Ptr{Surface}, Ptr{Rect}), surface, rect)
end

function ConvertSurface(src, fmt, flags::Uint32)
    ccall((:SDL_ConvertSurface, libSDL2), Ptr{Surface}, (Ptr{Surface}, Ptr{PixelFormat}, Uint32), src, fmt, flags)
end

function ConvertSurfaceFormat(src, pixel_format::Uint32, flags::Uint32)
    ccall((:SDL_ConvertSurfaceFormat, libSDL2), Ptr{Surface}, (Ptr{Surface}, Uint32, Uint32), src, pixel_format, flags)
end

function ConvertPixels(width::Cint, height::Cint, src_format::Uint32, src, src_pitch::Cint, dst_format::Uint32, dst, dst_pitch::Cint)
    ccall((:SDL_ConvertPixels, libSDL2), Cint, (Cint, Cint, Uint32, Ptr{Cvoid}, Cint, Uint32, Ptr{Cvoid}, Cint), width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch)
end

function FillRect(dst, rect, color::Uint32)
    ccall((:SDL_FillRect, libSDL2), Cint, (Ptr{Surface}, Ptr{Rect}, Uint32), dst, rect, color)
end

function FillRects(dst, rects, count::Cint, color::Uint32)
    ccall((:SDL_FillRects, libSDL2), Cint, (Ptr{Surface}, Ptr{Rect}, Cint, Uint32), dst, rects, count, color)
end

function UpperBlit(src, srcrect, dst, dstrect)
    ccall((:SDL_UpperBlit, libSDL2), Cint, (Ptr{Surface}, Ptr{Rect}, Ptr{Surface}, Ptr{Rect}), src, srcrect, dst, dstrect)
end

function LowerBlit(src, srcrect, dst, dstrect)
    ccall((:SDL_LowerBlit, libSDL2), Cint, (Ptr{Surface}, Ptr{Rect}, Ptr{Surface}, Ptr{Rect}), src, srcrect, dst, dstrect)
end

function SoftStretch(src, srcrect, dst, dstrect)
    ccall((:SDL_SoftStretch, libSDL2), Cint, (Ptr{Surface}, Ptr{Rect}, Ptr{Surface}, Ptr{Rect}), src, srcrect, dst, dstrect)
end

function UpperBlitScaled(src, srcrect, dst, dstrect)
    ccall((:SDL_UpperBlitScaled, libSDL2), Cint, (Ptr{Surface}, Ptr{Rect}, Ptr{Surface}, Ptr{Rect}), src, srcrect, dst, dstrect)
end

function LowerBlitScaled(src, srcrect, dst, dstrect)
    ccall((:SDL_LowerBlitScaled, libSDL2), Cint, (Ptr{Surface}, Ptr{Rect}, Ptr{Surface}, Ptr{Rect}), src, srcrect, dst, dstrect)
end

function GetNumVideoDrivers()
    ccall((:SDL_GetNumVideoDrivers, libSDL2), Cint, ())
end

function GetVideoDriver(index::Cint)
    ccall((:SDL_GetVideoDriver, libSDL2), Cstring, (Cint,), index)
end

function VideoInit(driver_name)
    ccall((:SDL_VideoInit, libSDL2), Cint, (Cstring,), driver_name)
end

function VideoQuit()
    ccall((:SDL_VideoQuit, libSDL2), Cvoid, ())
end

function GetCurrentVideoDriver()
    ccall((:SDL_GetCurrentVideoDriver, libSDL2), Cstring, ())
end

function GetNumVideoDisplays()
    ccall((:SDL_GetNumVideoDisplays, libSDL2), Cint, ())
end

function GetDisplayName(displayIndex::Cint)
    ccall((:SDL_GetDisplayName, libSDL2), Cstring, (Cint,), displayIndex)
end

function GetDisplayBounds(displayIndex::Cint, rect)
    ccall((:SDL_GetDisplayBounds, libSDL2), Cint, (Cint, Ptr{Rect}), displayIndex, rect)
end

function GetDisplayDPI(displayIndex::Cint, ddpi, hdpi, vdpi)
    ccall((:SDL_GetDisplayDPI, libSDL2), Cint, (Cint, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), displayIndex, ddpi, hdpi, vdpi)
end

function GetDisplayUsableBounds(displayIndex::Cint, rect)
    ccall((:SDL_GetDisplayUsableBounds, libSDL2), Cint, (Cint, Ptr{Rect}), displayIndex, rect)
end

function GetNumDisplayModes(displayIndex::Cint)
    ccall((:SDL_GetNumDisplayModes, libSDL2), Cint, (Cint,), displayIndex)
end

function GetDisplayMode(displayIndex::Cint, modeIndex::Cint, mode)
    ccall((:SDL_GetDisplayMode, libSDL2), Cint, (Cint, Cint, Ptr{DisplayMode}), displayIndex, modeIndex, mode)
end

function GetDesktopDisplayMode(displayIndex::Cint, mode)
    ccall((:SDL_GetDesktopDisplayMode, libSDL2), Cint, (Cint, Ptr{DisplayMode}), displayIndex, mode)
end

function GetCurrentDisplayMode(displayIndex::Cint, mode)
    ccall((:SDL_GetCurrentDisplayMode, libSDL2), Cint, (Cint, Ptr{DisplayMode}), displayIndex, mode)
end

function GetClosestDisplayMode(displayIndex::Cint, mode, closest)
    ccall((:SDL_GetClosestDisplayMode, libSDL2), Ptr{DisplayMode}, (Cint, Ptr{DisplayMode}, Ptr{DisplayMode}), displayIndex, mode, closest)
end

function GetWindowDisplayIndex(window)
    ccall((:SDL_GetWindowDisplayIndex, libSDL2), Cint, (Ptr{Window},), window)
end

function SetWindowDisplayMode(window, mode)
    ccall((:SDL_SetWindowDisplayMode, libSDL2), Cint, (Ptr{Window}, Ptr{DisplayMode}), window, mode)
end

function GetWindowDisplayMode(window, mode)
    ccall((:SDL_GetWindowDisplayMode, libSDL2), Cint, (Ptr{Window}, Ptr{DisplayMode}), window, mode)
end

function GetWindowPixelFormat(window)
    ccall((:SDL_GetWindowPixelFormat, libSDL2), Uint32, (Ptr{Window},), window)
end

function CreateWindow(title, x::Cint, y::Cint, w::Cint, h::Cint, flags::Uint32)
    ccall((:SDL_CreateWindow, libSDL2), Ptr{Window}, (Cstring, Cint, Cint, Cint, Cint, Uint32), title, x, y, w, h, flags)
end

function CreateWindowFrom(data)
    ccall((:SDL_CreateWindowFrom, libSDL2), Ptr{Window}, (Ptr{Cvoid},), data)
end

function GetWindowID(window)
    ccall((:SDL_GetWindowID, libSDL2), Uint32, (Ptr{Window},), window)
end

function GetWindowFromID(id::Uint32)
    ccall((:SDL_GetWindowFromID, libSDL2), Ptr{Window}, (Uint32,), id)
end

function GetWindowFlags(window)
    ccall((:SDL_GetWindowFlags, libSDL2), Uint32, (Ptr{Window},), window)
end

function SetWindowTitle(window, title)
    ccall((:SDL_SetWindowTitle, libSDL2), Cvoid, (Ptr{Window}, Cstring), window, title)
end

function GetWindowTitle(window)
    ccall((:SDL_GetWindowTitle, libSDL2), Cstring, (Ptr{Window},), window)
end

function SetWindowIcon(window, icon)
    ccall((:SDL_SetWindowIcon, libSDL2), Cvoid, (Ptr{Window}, Ptr{Surface}), window, icon)
end

function SetWindowData(window, name, userdata)
    ccall((:SDL_SetWindowData, libSDL2), Ptr{Cvoid}, (Ptr{Window}, Cstring, Ptr{Cvoid}), window, name, userdata)
end

function GetWindowData(window, name)
    ccall((:SDL_GetWindowData, libSDL2), Ptr{Cvoid}, (Ptr{Window}, Cstring), window, name)
end

function SetWindowPosition(window, x::Cint, y::Cint)
    ccall((:SDL_SetWindowPosition, libSDL2), Cvoid, (Ptr{Window}, Cint, Cint), window, x, y)
end

function GetWindowPosition(window, x, y)
    ccall((:SDL_GetWindowPosition, libSDL2), Cvoid, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}), window, x, y)
end

function SetWindowSize(window, w::Cint, h::Cint)
    ccall((:SDL_SetWindowSize, libSDL2), Cvoid, (Ptr{Window}, Cint, Cint), window, w, h)
end

function GetWindowSize(window, w, h)
    ccall((:SDL_GetWindowSize, libSDL2), Cvoid, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function GetWindowBordersSize(window, top, left, bottom, right)
    ccall((:SDL_GetWindowBordersSize, libSDL2), Cint, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), window, top, left, bottom, right)
end

function SetWindowMinimumSize(window, min_w::Cint, min_h::Cint)
    ccall((:SDL_SetWindowMinimumSize, libSDL2), Cvoid, (Ptr{Window}, Cint, Cint), window, min_w, min_h)
end

function GetWindowMinimumSize(window, w, h)
    ccall((:SDL_GetWindowMinimumSize, libSDL2), Cvoid, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SetWindowMaximumSize(window, max_w::Cint, max_h::Cint)
    ccall((:SDL_SetWindowMaximumSize, libSDL2), Cvoid, (Ptr{Window}, Cint, Cint), window, max_w, max_h)
end

function GetWindowMaximumSize(window, w, h)
    ccall((:SDL_GetWindowMaximumSize, libSDL2), Cvoid, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SetWindowBordered(window, bordered::bool)
    ccall((:SDL_SetWindowBordered, libSDL2), Cvoid, (Ptr{Window}, bool), window, bordered)
end

function SetWindowResizable(window, resizable::bool)
    ccall((:SDL_SetWindowResizable, libSDL2), Cvoid, (Ptr{Window}, bool), window, resizable)
end

function ShowWindow(window)
    ccall((:SDL_ShowWindow, libSDL2), Cvoid, (Ptr{Window},), window)
end

function HideWindow(window)
    ccall((:SDL_HideWindow, libSDL2), Cvoid, (Ptr{Window},), window)
end

function RaiseWindow(window)
    ccall((:SDL_RaiseWindow, libSDL2), Cvoid, (Ptr{Window},), window)
end

function MaximizeWindow(window)
    ccall((:SDL_MaximizeWindow, libSDL2), Cvoid, (Ptr{Window},), window)
end

function MinimizeWindow(window)
    ccall((:SDL_MinimizeWindow, libSDL2), Cvoid, (Ptr{Window},), window)
end

function RestoreWindow(window)
    ccall((:SDL_RestoreWindow, libSDL2), Cvoid, (Ptr{Window},), window)
end

function SetWindowFullscreen(window, flags::Uint32)
    ccall((:SDL_SetWindowFullscreen, libSDL2), Cint, (Ptr{Window}, Uint32), window, flags)
end

function GetWindowSurface(window)
    ccall((:SDL_GetWindowSurface, libSDL2), Ptr{Surface}, (Ptr{Window},), window)
end

function UpdateWindowSurface(window)
    ccall((:SDL_UpdateWindowSurface, libSDL2), Cint, (Ptr{Window},), window)
end

function UpdateWindowSurfaceRects(window, rects, numrects::Cint)
    ccall((:SDL_UpdateWindowSurfaceRects, libSDL2), Cint, (Ptr{Window}, Ptr{Rect}, Cint), window, rects, numrects)
end

function SetWindowGrab(window, grabbed::bool)
    ccall((:SDL_SetWindowGrab, libSDL2), Cvoid, (Ptr{Window}, bool), window, grabbed)
end

function GetWindowGrab(window)
    ccall((:SDL_GetWindowGrab, libSDL2), bool, (Ptr{Window},), window)
end

function GetGrabbedWindow()
    ccall((:SDL_GetGrabbedWindow, libSDL2), Ptr{Window}, ())
end

function SetWindowBrightness(window, brightness::Cfloat)
    ccall((:SDL_SetWindowBrightness, libSDL2), Cint, (Ptr{Window}, Cfloat), window, brightness)
end

function GetWindowBrightness(window)
    ccall((:SDL_GetWindowBrightness, libSDL2), Cfloat, (Ptr{Window},), window)
end

function SetWindowOpacity(window, opacity::Cfloat)
    ccall((:SDL_SetWindowOpacity, libSDL2), Cint, (Ptr{Window}, Cfloat), window, opacity)
end

function GetWindowOpacity(window, out_opacity)
    ccall((:SDL_GetWindowOpacity, libSDL2), Cint, (Ptr{Window}, Ptr{Cfloat}), window, out_opacity)
end

function SetWindowModalFor(modal_window, parent_window)
    ccall((:SDL_SetWindowModalFor, libSDL2), Cint, (Ptr{Window}, Ptr{Window}), modal_window, parent_window)
end

function SetWindowInputFocus(window)
    ccall((:SDL_SetWindowInputFocus, libSDL2), Cint, (Ptr{Window},), window)
end

function SetWindowGammaRamp(window, red, green, blue)
    ccall((:SDL_SetWindowGammaRamp, libSDL2), Cint, (Ptr{Window}, Ptr{Uint16}, Ptr{Uint16}, Ptr{Uint16}), window, red, green, blue)
end

function GetWindowGammaRamp(window, red, green, blue)
    ccall((:SDL_GetWindowGammaRamp, libSDL2), Cint, (Ptr{Window}, Ptr{Uint16}, Ptr{Uint16}, Ptr{Uint16}), window, red, green, blue)
end

function SetWindowHitTest(window, callback::HitTest, callback_data)
    ccall((:SDL_SetWindowHitTest, libSDL2), Cint, (Ptr{Window}, HitTest, Ptr{Cvoid}), window, callback, callback_data)
end

function DestroyWindow(window)
    ccall((:SDL_DestroyWindow, libSDL2), Cvoid, (Ptr{Window},), window)
end

function IsScreenSaverEnabled()
    ccall((:SDL_IsScreenSaverEnabled, libSDL2), bool, ())
end

function EnableScreenSaver()
    ccall((:SDL_EnableScreenSaver, libSDL2), Cvoid, ())
end

function DisableScreenSaver()
    ccall((:SDL_DisableScreenSaver, libSDL2), Cvoid, ())
end

function GL_LoadLibrary(path)
    ccall((:SDL_GL_LoadLibrary, libSDL2), Cint, (Cstring,), path)
end

function GL_GetProcAddress(proc)
    ccall((:SDL_GL_GetProcAddress, libSDL2), Ptr{Cvoid}, (Cstring,), proc)
end

function GL_UnloadLibrary()
    ccall((:SDL_GL_UnloadLibrary, libSDL2), Cvoid, ())
end

function GL_ExtensionSupported(extension)
    ccall((:SDL_GL_ExtensionSupported, libSDL2), bool, (Cstring,), extension)
end

function GL_ResetAttributes()
    ccall((:SDL_GL_ResetAttributes, libSDL2), Cvoid, ())
end

function GL_SetAttribute(attr::GLattr, value)
    ccall((:SDL_GL_SetAttribute, libSDL2), Cint, (GLattr, Cint), attr, value)
end

function GL_GetAttribute(attr::GLattr, value)
    ccall((:SDL_GL_GetAttribute, libSDL2), Cint, (GLattr, Ptr{Cint}), attr, value)
end

function GL_CreateContext(window)
    ccall((:SDL_GL_CreateContext, libSDL2), GLContext, (Ptr{Window},), window)
end

function GL_MakeCurrent(window, context::GLContext)
    ccall((:SDL_GL_MakeCurrent, libSDL2), Cint, (Ptr{Window}, GLContext), window, context)
end

function GL_GetCurrentWindow()
    ccall((:SDL_GL_GetCurrentWindow, libSDL2), Ptr{Window}, ())
end

function GL_GetCurrentContext()
    ccall((:SDL_GL_GetCurrentContext, libSDL2), GLContext, ())
end

function GL_GetDrawableSize(window, w, h)
    ccall((:SDL_GL_GetDrawableSize, libSDL2), Cvoid, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function GL_SetSwapInterval(interval::Cint)
    ccall((:SDL_GL_SetSwapInterval, libSDL2), Cint, (Cint,), interval)
end

function GL_GetSwapInterval()
    ccall((:SDL_GL_GetSwapInterval, libSDL2), Cint, ())
end

function GL_SwapWindow(window)
    ccall((:SDL_GL_SwapWindow, libSDL2), Cvoid, (Ptr{Window},), window)
end

function GL_DeleteContext(context::GLContext)
    ccall((:SDL_GL_DeleteContext, libSDL2), Cvoid, (GLContext,), context)
end

function GetKeyboardFocus()
    ccall((:SDL_GetKeyboardFocus, libSDL2), Ptr{Window}, ())
end

function GetKeyboardState(numkeys)
    ccall((:SDL_GetKeyboardState, libSDL2), Ptr{Uint8}, (Ptr{Cint},), numkeys)
end

function GetModState()
    ccall((:SDL_GetModState, libSDL2), Keymod, ())
end

function SetModState(modstate::Keymod)
    ccall((:SDL_SetModState, libSDL2), Cvoid, (Keymod,), modstate)
end

function GetKeyFromScancode(scancode::Scancode)
    ccall((:SDL_GetKeyFromScancode, libSDL2), Keycode, (Scancode,), scancode)
end

function GetScancodeFromKey(key::Keycode)
    ccall((:SDL_GetScancodeFromKey, libSDL2), Scancode, (Keycode,), key)
end

function GetScancodeName(scancode::Scancode)
    ccall((:SDL_GetScancodeName, libSDL2), Cstring, (Scancode,), scancode)
end

function GetScancodeFromName(name)
    ccall((:SDL_GetScancodeFromName, libSDL2), Scancode, (Cstring,), name)
end

function GetKeyName(key::Keycode)
    ccall((:SDL_GetKeyName, libSDL2), Cstring, (Keycode,), key)
end

function GetKeyFromName(name)
    ccall((:SDL_GetKeyFromName, libSDL2), Keycode, (Cstring,), name)
end

function StartTextInput()
    ccall((:SDL_StartTextInput, libSDL2), Cvoid, ())
end

function IsTextInputActive()
    ccall((:SDL_IsTextInputActive, libSDL2), bool, ())
end

function StopTextInput()
    ccall((:SDL_StopTextInput, libSDL2), Cvoid, ())
end

function SetTextInputRect(rect)
    ccall((:SDL_SetTextInputRect, libSDL2), Cvoid, (Ptr{Rect},), rect)
end

function HasScreenKeyboardSupport()
    ccall((:SDL_HasScreenKeyboardSupport, libSDL2), bool, ())
end

function IsScreenKeyboardShown(window)
    ccall((:SDL_IsScreenKeyboardShown, libSDL2), bool, (Ptr{Window},), window)
end

function GetMouseFocus()
    ccall((:SDL_GetMouseFocus, libSDL2), Ptr{Window}, ())
end

function GetMouseState(x, y)
    ccall((:SDL_GetMouseState, libSDL2), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function GetGlobalMouseState(x, y)
    ccall((:SDL_GetGlobalMouseState, libSDL2), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function GetRelativeMouseState(x, y)
    ccall((:SDL_GetRelativeMouseState, libSDL2), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function WarpMouseInWindow(window, x::Cint, y::Cint)
    ccall((:SDL_WarpMouseInWindow, libSDL2), Cvoid, (Ptr{Window}, Cint, Cint), window, x, y)
end

function WarpMouseGlobal(x::Cint, y::Cint)
    ccall((:SDL_WarpMouseGlobal, libSDL2), Cint, (Cint, Cint), x, y)
end

function SetRelativeMouseMode(enabled::bool)
    ccall((:SDL_SetRelativeMouseMode, libSDL2), Cint, (bool,), enabled)
end

function CaptureMouse(enabled::bool)
    ccall((:SDL_CaptureMouse, libSDL2), Cint, (bool,), enabled)
end

function GetRelativeMouseMode()
    ccall((:SDL_GetRelativeMouseMode, libSDL2), bool, ())
end

function CreateCursor(data, mask, w::Cint, h::Cint, hot_x::Cint, hot_y::Cint)
    ccall((:SDL_CreateCursor, libSDL2), Ptr{Cursor}, (Ptr{Uint8}, Ptr{Uint8}, Cint, Cint, Cint, Cint), data, mask, w, h, hot_x, hot_y)
end

function CreateColorCursor(surface, hot_x::Cint, hot_y::Cint)
    ccall((:SDL_CreateColorCursor, libSDL2), Ptr{Cursor}, (Ptr{Surface}, Cint, Cint), surface, hot_x, hot_y)
end

function CreateSystemCursor(id::SystemCursor)
    ccall((:SDL_CreateSystemCursor, libSDL2), Ptr{Cursor}, (SystemCursor,), id)
end

function SetCursor(cursor)
    ccall((:SDL_SetCursor, libSDL2), Cvoid, (Ptr{Cursor},), cursor)
end

function GetCursor()
    ccall((:SDL_GetCursor, libSDL2), Ptr{Cursor}, ())
end

function GetDefaultCursor()
    ccall((:SDL_GetDefaultCursor, libSDL2), Ptr{Cursor}, ())
end

function FreeCursor(cursor)
    ccall((:SDL_FreeCursor, libSDL2), Cvoid, (Ptr{Cursor},), cursor)
end

function ShowCursor(toggle::Cint)
    ccall((:SDL_ShowCursor, libSDL2), Cint, (Cint,), toggle)
end

function NumJoysticks()
    ccall((:SDL_NumJoysticks, libSDL2), Cint, ())
end

function JoystickNameForIndex(device_index::Cint)
    ccall((:SDL_JoystickNameForIndex, libSDL2), Cstring, (Cint,), device_index)
end

function JoystickOpen(device_index::Cint)
    ccall((:SDL_JoystickOpen, libSDL2), Ptr{Joystick}, (Cint,), device_index)
end

function JoystickFromInstanceID(joyid::JoystickID)
    ccall((:SDL_JoystickFromInstanceID, libSDL2), Ptr{Joystick}, (JoystickID,), joyid)
end

function JoystickName(joystick)
    ccall((:SDL_JoystickName, libSDL2), Cstring, (Ptr{Joystick},), joystick)
end

function JoystickGetDeviceGUID(device_index::Cint)
    ccall((:SDL_JoystickGetDeviceGUID, libSDL2), JoystickGUID, (Cint,), device_index)
end

function JoystickGetGUID(joystick)
    ccall((:SDL_JoystickGetGUID, libSDL2), JoystickGUID, (Ptr{Joystick},), joystick)
end

function JoystickGetGUIDString(guid::JoystickGUID, pszGUID, cbGUID::Cint)
    ccall((:SDL_JoystickGetGUIDString, libSDL2), Cvoid, (JoystickGUID, Cstring, Cint), guid, pszGUID, cbGUID)
end

function JoystickGetGUIDFromString(pchGUID)
    ccall((:SDL_JoystickGetGUIDFromString, libSDL2), JoystickGUID, (Cstring,), pchGUID)
end

function JoystickGetAttached(joystick)
    ccall((:SDL_JoystickGetAttached, libSDL2), bool, (Ptr{Joystick},), joystick)
end

function JoystickInstanceID(joystick)
    ccall((:SDL_JoystickInstanceID, libSDL2), JoystickID, (Ptr{Joystick},), joystick)
end

function JoystickNumAxes(joystick)
    ccall((:SDL_JoystickNumAxes, libSDL2), Cint, (Ptr{Joystick},), joystick)
end

function JoystickNumBalls(joystick)
    ccall((:SDL_JoystickNumBalls, libSDL2), Cint, (Ptr{Joystick},), joystick)
end

function JoystickNumHats(joystick)
    ccall((:SDL_JoystickNumHats, libSDL2), Cint, (Ptr{Joystick},), joystick)
end

function JoystickNumButtons(joystick)
    ccall((:SDL_JoystickNumButtons, libSDL2), Cint, (Ptr{Joystick},), joystick)
end

function JoystickUpdate()
    ccall((:SDL_JoystickUpdate, libSDL2), Cvoid, ())
end

function JoystickEventState(state::Cint)
    ccall((:SDL_JoystickEventState, libSDL2), Cint, (Cint,), state)
end

function JoystickGetAxis(joystick, axis::Cint)
    ccall((:SDL_JoystickGetAxis, libSDL2), Sint16, (Ptr{Joystick}, Cint), joystick, axis)
end

function JoystickGetHat(joystick, hat::Cint)
    ccall((:SDL_JoystickGetHat, libSDL2), Uint8, (Ptr{Joystick}, Cint), joystick, hat)
end

function JoystickGetBall(joystick, ball::Cint, dx, dy)
    ccall((:SDL_JoystickGetBall, libSDL2), Cint, (Ptr{Joystick}, Cint, Ptr{Cint}, Ptr{Cint}), joystick, ball, dx, dy)
end

function JoystickGetButton(joystick, button::Cint)
    ccall((:SDL_JoystickGetButton, libSDL2), Uint8, (Ptr{Joystick}, Cint), joystick, button)
end

function JoystickClose(joystick)
    ccall((:SDL_JoystickClose, libSDL2), Cvoid, (Ptr{Joystick},), joystick)
end

function JoystickCurrentPowerLevel(joystick)
    ccall((:SDL_JoystickCurrentPowerLevel, libSDL2), JoystickPowerLevel, (Ptr{Joystick},), joystick)
end

function GameControllerAddMappingsFromRW(rw, freerw::Cint)
    ccall((:SDL_GameControllerAddMappingsFromRW, libSDL2), Cint, (Ptr{RWops}, Cint), rw, freerw)
end

function GameControllerAddMapping(mappingString)
    ccall((:SDL_GameControllerAddMapping, libSDL2), Cint, (Cstring,), mappingString)
end

function GameControllerMappingForGUID(guid::JoystickGUID)
    ccall((:SDL_GameControllerMappingForGUID, libSDL2), Cstring, (JoystickGUID,), guid)
end

function GameControllerMapping(gamecontroller)
    ccall((:SDL_GameControllerMapping, libSDL2), Cstring, (Ptr{GameController},), gamecontroller)
end

function IsGameController(joystick_index::Cint)
    ccall((:SDL_IsGameController, libSDL2), bool, (Cint,), joystick_index)
end

function GameControllerNameForIndex(joystick_index::Cint)
    ccall((:SDL_GameControllerNameForIndex, libSDL2), Cstring, (Cint,), joystick_index)
end

function GameControllerOpen(joystick_index::Cint)
    ccall((:SDL_GameControllerOpen, libSDL2), Ptr{GameController}, (Cint,), joystick_index)
end

function GameControllerFromInstanceID(joyid::JoystickID)
    ccall((:SDL_GameControllerFromInstanceID, libSDL2), Ptr{GameController}, (JoystickID,), joyid)
end

function GameControllerName(gamecontroller)
    ccall((:SDL_GameControllerName, libSDL2), Cstring, (Ptr{GameController},), gamecontroller)
end

function GameControllerGetAttached(gamecontroller)
    ccall((:SDL_GameControllerGetAttached, libSDL2), bool, (Ptr{GameController},), gamecontroller)
end

function GameControllerGetJoystick(gamecontroller)
    ccall((:SDL_GameControllerGetJoystick, libSDL2), Ptr{Joystick}, (Ptr{GameController},), gamecontroller)
end

function GameControllerEventState(state::Cint)
    ccall((:SDL_GameControllerEventState, libSDL2), Cint, (Cint,), state)
end

function GameControllerUpdate()
    ccall((:SDL_GameControllerUpdate, libSDL2), Cvoid, ())
end

function GameControllerGetAxisFromString(pchString)
    ccall((:SDL_GameControllerGetAxisFromString, libSDL2), GameControllerAxis, (Cstring,), pchString)
end

function GameControllerGetStringForAxis(axis::GameControllerAxis)
    ccall((:SDL_GameControllerGetStringForAxis, libSDL2), Cstring, (GameControllerAxis,), axis)
end

function GameControllerGetBindForAxis(gamecontroller, axis::GameControllerAxis)
    ccall((:SDL_GameControllerGetBindForAxis, libSDL2), GameControllerButtonBind, (Ptr{GameController}, GameControllerAxis), gamecontroller, axis)
end

function GameControllerGetAxis(gamecontroller, axis::GameControllerAxis)
    ccall((:SDL_GameControllerGetAxis, libSDL2), Sint16, (Ptr{GameController}, GameControllerAxis), gamecontroller, axis)
end

function GameControllerGetButtonFromString(pchString)
    ccall((:SDL_GameControllerGetButtonFromString, libSDL2), GameControllerButton, (Cstring,), pchString)
end

function GameControllerGetStringForButton(button::GameControllerButton)
    ccall((:SDL_GameControllerGetStringForButton, libSDL2), Cstring, (GameControllerButton,), button)
end

function GameControllerGetBindForButton(gamecontroller, button::GameControllerButton)
    ccall((:SDL_GameControllerGetBindForButton, libSDL2), GameControllerButtonBind, (Ptr{GameController}, GameControllerButton), gamecontroller, button)
end

function GameControllerGetButton(gamecontroller, button::GameControllerButton)
    ccall((:SDL_GameControllerGetButton, libSDL2), Uint8, (Ptr{GameController}, GameControllerButton), gamecontroller, button)
end

function GameControllerClose(gamecontroller)
    ccall((:SDL_GameControllerClose, libSDL2), Cvoid, (Ptr{GameController},), gamecontroller)
end

function GetNumTouchDevices()
    ccall((:SDL_GetNumTouchDevices, libSDL2), Cint, ())
end

function GetTouchDevice(index::Cint)
    ccall((:SDL_GetTouchDevice, libSDL2), TouchID, (Cint,), index)
end

function GetNumTouchFingers(touchID::TouchID)
    ccall((:SDL_GetNumTouchFingers, libSDL2), Cint, (TouchID,), touchID)
end

function GetTouchFinger(touchID::TouchID, index::Cint)
    ccall((:SDL_GetTouchFinger, libSDL2), Ptr{Finger}, (TouchID, Cint), touchID, index)
end

function RecordGesture(touchId::TouchID)
    ccall((:SDL_RecordGesture, libSDL2), Cint, (TouchID,), touchId)
end

function SaveAllDollarTemplates(dst)
    ccall((:SDL_SaveAllDollarTemplates, libSDL2), Cint, (Ptr{RWops},), dst)
end

function SaveDollarTemplate(gestureId::GestureID, dst)
    ccall((:SDL_SaveDollarTemplate, libSDL2), Cint, (GestureID, Ptr{RWops}), gestureId, dst)
end

function LoadDollarTemplates(touchId::TouchID, src)
    ccall((:SDL_LoadDollarTemplates, libSDL2), Cint, (TouchID, Ptr{RWops}), touchId, src)
end

function PumpEvents()
    ccall((:SDL_PumpEvents, libSDL2), Cvoid, ())
end

function PeepEvents(events, numevents::Cint, action::Eventaction, minType::Uint32, maxType::Uint32)
    ccall((:SDL_PeepEvents, libSDL2), Cint, (Ptr{Event}, Cint, Eventaction, Uint32, Uint32), events, numevents, action, minType, maxType)
end

function HasEvent(_type::Uint32)
    ccall((:SDL_HasEvent, libSDL2), bool, (Uint32,), _type)
end

function HasEvents(minType::Uint32, maxType::Uint32)
    ccall((:SDL_HasEvents, libSDL2), bool, (Uint32, Uint32), minType, maxType)
end

function FlushEvent(_type::Uint32)
    ccall((:SDL_FlushEvent, libSDL2), Cvoid, (Uint32,), _type)
end

function FlushEvents(minType::Uint32, maxType::Uint32)
    ccall((:SDL_FlushEvents, libSDL2), Cvoid, (Uint32, Uint32), minType, maxType)
end

function PollEvent(event)
    ccall((:SDL_PollEvent, libSDL2), Cint, (Ptr{Event},), event)
end

function WaitEvent(event)
    ccall((:SDL_WaitEvent, libSDL2), Cint, (Ptr{Event},), event)
end

function WaitEventTimeout(event, timeout::Cint)
    ccall((:SDL_WaitEventTimeout, libSDL2), Cint, (Ptr{Event}, Cint), event, timeout)
end

function PushEvent(event)
    ccall((:SDL_PushEvent, libSDL2), Cint, (Ptr{Event},), event)
end

function SetEventFilter(filter::EventFilter, userdata)
    ccall((:SDL_SetEventFilter, libSDL2), Cvoid, (EventFilter, Ptr{Cvoid}), filter, userdata)
end

function GetEventFilter(filter, userdata)
    ccall((:SDL_GetEventFilter, libSDL2), bool, (Ptr{EventFilter}, Ptr{Ptr{Cvoid}}), filter, userdata)
end

function AddEventWatch(filter::EventFilter, userdata)
    ccall((:SDL_AddEventWatch, libSDL2), Cvoid, (EventFilter, Ptr{Cvoid}), filter, userdata)
end

function DelEventWatch(filter::EventFilter, userdata)
    ccall((:SDL_DelEventWatch, libSDL2), Cvoid, (EventFilter, Ptr{Cvoid}), filter, userdata)
end

function FilterEvents(filter::EventFilter, userdata)
    ccall((:SDL_FilterEvents, libSDL2), Cvoid, (EventFilter, Ptr{Cvoid}), filter, userdata)
end

function EventState(_type::Uint32, state::Cint)
    ccall((:SDL_EventState, libSDL2), Uint8, (Uint32, Cint), _type, state)
end

function RegisterEvents(numevents::Cint)
    ccall((:SDL_RegisterEvents, libSDL2), Uint32, (Cint,), numevents)
end

function GetBasePath()
    ccall((:SDL_GetBasePath, libSDL2), Cstring, ())
end

function GetPrefPath(org, app)
    ccall((:SDL_GetPrefPath, libSDL2), Cstring, (Cstring, Cstring), org, app)
end

function NumHaptics()
    ccall((:SDL_NumHaptics, libSDL2), Cint, ())
end

function HapticName(device_index::Cint)
    ccall((:SDL_HapticName, libSDL2), Cstring, (Cint,), device_index)
end

function HapticOpen(device_index::Cint)
    ccall((:SDL_HapticOpen, libSDL2), Ptr{Haptic}, (Cint,), device_index)
end

function HapticOpened(device_index::Cint)
    ccall((:SDL_HapticOpened, libSDL2), Cint, (Cint,), device_index)
end

function HapticIndex(haptic)
    ccall((:SDL_HapticIndex, libSDL2), Cint, (Ptr{Haptic},), haptic)
end

function MouseIsHaptic()
    ccall((:SDL_MouseIsHaptic, libSDL2), Cint, ())
end

function HapticOpenFromMouse()
    ccall((:SDL_HapticOpenFromMouse, libSDL2), Ptr{Haptic}, ())
end

function JoystickIsHaptic(joystick)
    ccall((:SDL_JoystickIsHaptic, libSDL2), Cint, (Ptr{Joystick},), joystick)
end

function HapticOpenFromJoystick(joystick)
    ccall((:SDL_HapticOpenFromJoystick, libSDL2), Ptr{Haptic}, (Ptr{Joystick},), joystick)
end

function HapticClose(haptic)
    ccall((:SDL_HapticClose, libSDL2), Cvoid, (Ptr{Haptic},), haptic)
end

function HapticNumEffects(haptic)
    ccall((:SDL_HapticNumEffects, libSDL2), Cint, (Ptr{Haptic},), haptic)
end

function HapticNumEffectsPlaying(haptic)
    ccall((:SDL_HapticNumEffectsPlaying, libSDL2), Cint, (Ptr{Haptic},), haptic)
end

function HapticQuery(haptic)
    ccall((:SDL_HapticQuery, libSDL2), UInt32, (Ptr{Haptic},), haptic)
end

function HapticNumAxes(haptic)
    ccall((:SDL_HapticNumAxes, libSDL2), Cint, (Ptr{Haptic},), haptic)
end

function HapticEffectSupported(haptic, effect)
    ccall((:SDL_HapticEffectSupported, libSDL2), Cint, (Ptr{Haptic}, Ptr{HapticEffect}), haptic, effect)
end

function HapticNewEffect(haptic, effect)
    ccall((:SDL_HapticNewEffect, libSDL2), Cint, (Ptr{Haptic}, Ptr{HapticEffect}), haptic, effect)
end

function HapticUpdateEffect(haptic, effect::Cint, data)
    ccall((:SDL_HapticUpdateEffect, libSDL2), Cint, (Ptr{Haptic}, Cint, Ptr{HapticEffect}), haptic, effect, data)
end

function HapticRunEffect(haptic, effect::Cint, iterations::Uint32)
    ccall((:SDL_HapticRunEffect, libSDL2), Cint, (Ptr{Haptic}, Cint, Uint32), haptic, effect, iterations)
end

function HapticStopEffect(haptic, effect::Cint)
    ccall((:SDL_HapticStopEffect, libSDL2), Cint, (Ptr{Haptic}, Cint), haptic, effect)
end

function HapticDestroyEffect(haptic, effect::Cint)
    ccall((:SDL_HapticDestroyEffect, libSDL2), Cvoid, (Ptr{Haptic}, Cint), haptic, effect)
end

function HapticGetEffectStatus(haptic, effect::Cint)
    ccall((:SDL_HapticGetEffectStatus, libSDL2), Cint, (Ptr{Haptic}, Cint), haptic, effect)
end

function HapticSetGain(haptic, gain::Cint)
    ccall((:SDL_HapticSetGain, libSDL2), Cint, (Ptr{Haptic}, Cint), haptic, gain)
end

function HapticSetAutocenter(haptic, autocenter::Cint)
    ccall((:SDL_HapticSetAutocenter, libSDL2), Cint, (Ptr{Haptic}, Cint), haptic, autocenter)
end

function HapticPause(haptic)
    ccall((:SDL_HapticPause, libSDL2), Cint, (Ptr{Haptic},), haptic)
end

function HapticUnpause(haptic)
    ccall((:SDL_HapticUnpause, libSDL2), Cint, (Ptr{Haptic},), haptic)
end

function HapticStopAll(haptic)
    ccall((:SDL_HapticStopAll, libSDL2), Cint, (Ptr{Haptic},), haptic)
end

function HapticRumbleSupported(haptic)
    ccall((:SDL_HapticRumbleSupported, libSDL2), Cint, (Ptr{Haptic},), haptic)
end

function HapticRumbleInit(haptic)
    ccall((:SDL_HapticRumbleInit, libSDL2), Cint, (Ptr{Haptic},), haptic)
end

function HapticRumblePlay(haptic, strength::Cfloat, length::Uint32)
    ccall((:SDL_HapticRumblePlay, libSDL2), Cint, (Ptr{Haptic}, Cfloat, Uint32), haptic, strength, length)
end

function HapticRumbleStop(haptic)
    ccall((:SDL_HapticRumbleStop, libSDL2), Cint, (Ptr{Haptic},), haptic)
end

function SetHintWithPriority(name, value, priority::HintPriority)
    ccall((:SDL_SetHintWithPriority, libSDL2), bool, (Cstring, Cstring, HintPriority), name, value, priority)
end

function SetHint(name, value)
    ccall((:SDL_SetHint, libSDL2), bool, (Cstring, Cstring), name, value)
end

function GetHint(name)
    ccall((:SDL_GetHint, libSDL2), Cstring, (Cstring,), name)
end

function GetHintBoolean(name, default_value::bool)
    ccall((:SDL_GetHintBoolean, libSDL2), bool, (Cstring, bool), name, default_value)
end

function AddHintCallback(name, callback::HintCallback, userdata)
    ccall((:SDL_AddHintCallback, libSDL2), Cvoid, (Cstring, HintCallback, Ptr{Cvoid}), name, callback, userdata)
end

function DelHintCallback(name, callback::HintCallback, userdata)
    ccall((:SDL_DelHintCallback, libSDL2), Cvoid, (Cstring, HintCallback, Ptr{Cvoid}), name, callback, userdata)
end

function ClearHints()
    ccall((:SDL_ClearHints, libSDL2), Cvoid, ())
end

function LoadObject(sofile)
    ccall((:SDL_LoadObject, libSDL2), Ptr{Cvoid}, (Cstring,), sofile)
end

function LoadFunction(handle, name)
    ccall((:SDL_LoadFunction, libSDL2), Ptr{Cvoid}, (Ptr{Cvoid}, Cstring), handle, name)
end

function UnloadObject(handle)
    ccall((:SDL_UnloadObject, libSDL2), Cvoid, (Ptr{Cvoid},), handle)
end

function LogSetAllPriority(priority::LogPriority)
    ccall((:SDL_LogSetAllPriority, libSDL2), Cvoid, (LogPriority,), priority)
end

function LogSetPriority(category::Cint, priority::LogPriority)
    ccall((:SDL_LogSetPriority, libSDL2), Cvoid, (Cint, LogPriority), category, priority)
end

function LogGetPriority(category::Cint)
    ccall((:SDL_LogGetPriority, libSDL2), LogPriority, (Cint,), category)
end

function LogResetPriorities()
    ccall((:SDL_LogResetPriorities, libSDL2), Cvoid, ())
end

function LogMessageV(category::Cint, priority::LogPriority, fmt, ap::va_list)
    ccall((:SDL_LogMessageV, libSDL2), Cvoid, (Cint, LogPriority, Cstring, va_list), category, priority, fmt, ap)
end

function LogGetOutputFunction(callback, userdata)
    ccall((:SDL_LogGetOutputFunction, libSDL2), Cvoid, (Ptr{LogOutputFunction}, Ptr{Ptr{Cvoid}}), callback, userdata)
end

function LogSetOutputFunction(callback::LogOutputFunction, userdata)
    ccall((:SDL_LogSetOutputFunction, libSDL2), Cvoid, (LogOutputFunction, Ptr{Cvoid}), callback, userdata)
end

function ShowMessageBox(messageboxdata, buttonid)
    ccall((:SDL_ShowMessageBox, libSDL2), Cint, (Ptr{MessageBoxData}, Ptr{Cint}), messageboxdata, buttonid)
end

function ShowSimpleMessageBox(flags::Uint32, title, message, window)
    ccall((:SDL_ShowSimpleMessageBox, libSDL2), Cint, (Uint32, Cstring, Cstring, Ptr{Window}), flags, title, message, window)
end

function GetPowerInfo(secs, pct)
    ccall((:SDL_GetPowerInfo, libSDL2), PowerState, (Ptr{Cint}, Ptr{Cint}), secs, pct)
end

function GetNumRenderDrivers()
    ccall((:SDL_GetNumRenderDrivers, libSDL2), Cint, ())
end

function GetRenderDriverInfo(index::Cint, info)
    ccall((:SDL_GetRenderDriverInfo, libSDL2), Cint, (Cint, Ptr{RendererInfo}), index, info)
end

function CreateWindowAndRenderer(width::Cint, height::Cint, window_flags::Uint32, window, renderer)
    ccall((:SDL_CreateWindowAndRenderer, libSDL2), Cint, (Cint, Cint, Uint32, Ptr{Ptr{Window}}, Ptr{Ptr{Renderer}}), width, height, window_flags, window, renderer)
end

function CreateRenderer(window, index::Cint, flags::Uint32)
    ccall((:SDL_CreateRenderer, libSDL2), Ptr{Renderer}, (Ptr{Window}, Cint, Uint32), window, index, flags)
end

function CreateSoftwareRenderer(surface)
    ccall((:SDL_CreateSoftwareRenderer, libSDL2), Ptr{Renderer}, (Ptr{Surface},), surface)
end

function GetRenderer(window)
    ccall((:SDL_GetRenderer, libSDL2), Ptr{Renderer}, (Ptr{Window},), window)
end

function GetRendererInfo(renderer, info)
    ccall((:SDL_GetRendererInfo, libSDL2), Cint, (Ptr{Renderer}, Ptr{RendererInfo}), renderer, info)
end

function GetRendererOutputSize(renderer, w, h)
    ccall((:SDL_GetRendererOutputSize, libSDL2), Cint, (Ptr{Renderer}, Ptr{Cint}, Ptr{Cint}), renderer, w, h)
end

function CreateTexture(renderer, format::Uint32, access::Cint, w::Cint, h::Cint)
    ccall((:SDL_CreateTexture, libSDL2), Ptr{Texture}, (Ptr{Renderer}, Uint32, Cint, Cint, Cint), renderer, format, access, w, h)
end

function CreateTextureFromSurface(renderer, surface)
    ccall((:SDL_CreateTextureFromSurface, libSDL2), Ptr{Texture}, (Ptr{Renderer}, Ptr{Surface}), renderer, surface)
end

function QueryTexture(texture, format, access, w, h)
    ccall((:SDL_QueryTexture, libSDL2), Cint, (Ptr{Texture}, Ptr{Uint32}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), texture, format, access, w, h)
end

function SetTextureColorMod(texture, r::Uint8, g::Uint8, b::Uint8)
    ccall((:SDL_SetTextureColorMod, libSDL2), Cint, (Ptr{Texture}, Uint8, Uint8, Uint8), texture, r, g, b)
end

function GetTextureColorMod(texture, r, g, b)
    ccall((:SDL_GetTextureColorMod, libSDL2), Cint, (Ptr{Texture}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), texture, r, g, b)
end

function SetTextureAlphaMod(texture, alpha::Uint8)
    ccall((:SDL_SetTextureAlphaMod, libSDL2), Cint, (Ptr{Texture}, Uint8), texture, alpha)
end

function GetTextureAlphaMod(texture, alpha)
    ccall((:SDL_GetTextureAlphaMod, libSDL2), Cint, (Ptr{Texture}, Ptr{Uint8}), texture, alpha)
end

function SetTextureBlendMode(texture, blendMode::BlendMode)
    ccall((:SDL_SetTextureBlendMode, libSDL2), Cint, (Ptr{Texture}, BlendMode), texture, blendMode)
end

function GetTextureBlendMode(texture, blendMode)
    ccall((:SDL_GetTextureBlendMode, libSDL2), Cint, (Ptr{Texture}, Ptr{BlendMode}), texture, blendMode)
end

function UpdateTexture(texture, rect, pixels, pitch::Cint)
    ccall((:SDL_UpdateTexture, libSDL2), Cint, (Ptr{Texture}, Ptr{Rect}, Ptr{Cvoid}, Cint), texture, rect, pixels, pitch)
end

function UpdateYUVTexture(texture, rect, Yplane, Ypitch::Cint, Uplane, Upitch::Cint, Vplane, Vpitch::Cint)
    ccall((:SDL_UpdateYUVTexture, libSDL2), Cint, (Ptr{Texture}, Ptr{Rect}, Ptr{Uint8}, Cint, Ptr{Uint8}, Cint, Ptr{Uint8}, Cint), texture, rect, Yplane, Ypitch, Uplane, Upitch, Vplane, Vpitch)
end

function LockTexture(texture, rect, pixels, pitch)
    ccall((:SDL_LockTexture, libSDL2), Cint, (Ptr{Texture}, Ptr{Rect}, Ptr{Ptr{Cvoid}}, Ptr{Cint}), texture, rect, pixels, pitch)
end

function UnlockTexture(texture)
    ccall((:SDL_UnlockTexture, libSDL2), Cvoid, (Ptr{Texture},), texture)
end

function RenderTargetSupported(renderer)
    ccall((:SDL_RenderTargetSupported, libSDL2), bool, (Ptr{Renderer},), renderer)
end

function SetRenderTarget(renderer, texture)
    ccall((:SDL_SetRenderTarget, libSDL2), Cint, (Ptr{Renderer}, Ptr{Texture}), renderer, texture)
end

function GetRenderTarget(renderer)
    ccall((:SDL_GetRenderTarget, libSDL2), Ptr{Texture}, (Ptr{Renderer},), renderer)
end

function RenderSetLogicalSize(renderer, w::Cint, h::Cint)
    ccall((:SDL_RenderSetLogicalSize, libSDL2), Cint, (Ptr{Renderer}, Cint, Cint), renderer, w, h)
end

function RenderGetLogicalSize(renderer, w, h)
    ccall((:SDL_RenderGetLogicalSize, libSDL2), Cvoid, (Ptr{Renderer}, Ptr{Cint}, Ptr{Cint}), renderer, w, h)
end

function RenderSetIntegerScale(renderer, enable::bool)
    ccall((:SDL_RenderSetIntegerScale, libSDL2), Cint, (Ptr{Renderer}, bool), renderer, enable)
end

function RenderGetIntegerScale(renderer)
    ccall((:SDL_RenderGetIntegerScale, libSDL2), bool, (Ptr{Renderer},), renderer)
end

function RenderSetViewport(renderer, rect)
    ccall((:SDL_RenderSetViewport, libSDL2), Cint, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderGetViewport(renderer, rect)
    ccall((:SDL_RenderGetViewport, libSDL2), Cvoid, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderSetClipRect(renderer, rect)
    ccall((:SDL_RenderSetClipRect, libSDL2), Cint, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderGetClipRect(renderer, rect)
    ccall((:SDL_RenderGetClipRect, libSDL2), Cvoid, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderIsClipEnabled(renderer)
    ccall((:SDL_RenderIsClipEnabled, libSDL2), bool, (Ptr{Renderer},), renderer)
end

function RenderSetScale(renderer, scaleX::Cfloat, scaleY::Cfloat)
    ccall((:SDL_RenderSetScale, libSDL2), Cint, (Ptr{Renderer}, Cfloat, Cfloat), renderer, scaleX, scaleY)
end

function RenderGetScale(renderer, scaleX, scaleY)
    ccall((:SDL_RenderGetScale, libSDL2), Cvoid, (Ptr{Renderer}, Ptr{Cfloat}, Ptr{Cfloat}), renderer, scaleX, scaleY)
end

function SetRenderDrawColor(renderer, r::Int, g::Int, b::Int, a::Int)
    ccall((:SDL_SetRenderDrawColor, libSDL2), Cint, (Ptr{Renderer}, Uint8, Uint8, Uint8, Uint8), renderer, r, g, b, a)
end

function GetRenderDrawColor(renderer, r, g, b, a)
    ccall((:SDL_GetRenderDrawColor, libSDL2), Cint, (Ptr{Renderer}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), renderer, r, g, b, a)
end

function SetRenderDrawBlendMode(renderer, blendMode::BlendMode)
    ccall((:SDL_SetRenderDrawBlendMode, libSDL2), Cint, (Ptr{Renderer}, BlendMode), renderer, blendMode)
end

function GetRenderDrawBlendMode(renderer, blendMode)
    ccall((:SDL_GetRenderDrawBlendMode, libSDL2), Cint, (Ptr{Renderer}, Ptr{BlendMode}), renderer, blendMode)
end

function RenderClear(renderer)
    ccall((:SDL_RenderClear, libSDL2), Cint, (Ptr{Renderer},), renderer)
end

function RenderDrawPoint(renderer, x::Cint, y::Cint)
    ccall((:SDL_RenderDrawPoint, libSDL2), Cint, (Ptr{Renderer}, Cint, Cint), renderer, x, y)
end

function RenderDrawPoints(renderer, points, count::Cint)
    ccall((:SDL_RenderDrawPoints, libSDL2), Cint, (Ptr{Renderer}, Ptr{Point}, Cint), renderer, points, count)
end

function RenderDrawLine(renderer, x1, y1, x2, y2)
    ccall((:SDL_RenderDrawLine, libSDL2), Cint, (Ptr{Renderer}, Cint, Cint, Cint, Cint), renderer, x1, y1, x2, y2)
end

function RenderDrawLines(renderer, points, count::Cint)
    ccall((:SDL_RenderDrawLines, libSDL2), Cint, (Ptr{Renderer}, Ptr{Point}, Cint), renderer, points, count)
end

function RenderDrawRect(renderer, rect)
    ccall((:SDL_RenderDrawRect, libSDL2), Cint, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderDrawRects(renderer, rects, count::Cint)
    ccall((:SDL_RenderDrawRects, libSDL2), Cint, (Ptr{Renderer}, Ptr{Rect}, Cint), renderer, rects, count)
end

function RenderFillRect(renderer, rect)
    ccall((:SDL_RenderFillRect, libSDL2), Cint, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderFillRects(renderer, rects, count::Cint)
    ccall((:SDL_RenderFillRects, libSDL2), Cint, (Ptr{Renderer}, Ptr{Rect}, Cint), renderer, rects, count)
end

function RenderCopy(renderer, texture, srcrect, dstrect)
    ccall((:SDL_RenderCopy, libSDL2), Cint, (Ptr{Renderer}, Ptr{Texture}, Ptr{Rect}, Ptr{Rect}), renderer, texture, srcrect, dstrect)
end

function RenderCopyEx(renderer, texture, srcrect, dstrect, angle::Cdouble, center, flip::RendererFlip)
    ccall((:SDL_RenderCopyEx, libSDL2), Cint, (Ptr{Renderer}, Ptr{Texture}, Ptr{Rect}, Ptr{Rect}, Cdouble, Ptr{Point}, RendererFlip), renderer, texture, srcrect, dstrect, angle, center, flip)
end

function RenderReadPixels(renderer, rect, format::Uint32, pixels, pitch::Cint)
    ccall((:SDL_RenderReadPixels, libSDL2), Cint, (Ptr{Renderer}, Ptr{Rect}, Uint32, Ptr{Cvoid}, Cint), renderer, rect, format, pixels, pitch)
end

function RenderPresent(renderer)
    ccall((:SDL_RenderPresent, libSDL2), Cvoid, (Ptr{Renderer},), renderer)
end

function DestroyTexture(texture)
    ccall((:SDL_DestroyTexture, libSDL2), Cvoid, (Ptr{Texture},), texture)
end

function DestroyRenderer(renderer)
    ccall((:SDL_DestroyRenderer, libSDL2), Cvoid, (Ptr{Renderer},), renderer)
end

function GL_BindTexture(texture, texw, texh)
    ccall((:SDL_GL_BindTexture, libSDL2), Cint, (Ptr{Texture}, Ptr{Cfloat}, Ptr{Cfloat}), texture, texw, texh)
end

function GL_UnbindTexture(texture)
    ccall((:SDL_GL_UnbindTexture, libSDL2), Cint, (Ptr{Texture},), texture)
end

function GetTicks()
    ccall((:SDL_GetTicks, libSDL2), Uint32, ())
end

function GetPerformanceCounter()
    ccall((:SDL_GetPerformanceCounter, libSDL2), Uint64, ())
end

function GetPerformanceFrequency()
    ccall((:SDL_GetPerformanceFrequency, libSDL2), Uint64, ())
end

function Delay(ms::Uint32)
    ccall((:SDL_Delay, libSDL2), Cvoid, (Uint32,), ms)
end

function AddTimer(interval::Uint32, callback::TimerCallback, param)
    ccall((:SDL_AddTimer, libSDL2), TimerID, (Uint32, TimerCallback, Ptr{Cvoid}), interval, callback, param)
end

function RemoveTimer(id::TimerID)
    ccall((:SDL_RemoveTimer, libSDL2), bool, (TimerID,), id)
end

function GetVersion(ver)
    ccall((:SDL_GetVersion, libSDL2), Cvoid, (Ptr{SDL_version},), ver)
end

function GetRevision()
    ccall((:SDL_GetRevision, libSDL2), Cstring, ())
end

function GetRevisionNumber()
    ccall((:SDL_GetRevisionNumber, libSDL2), Cint, ())
end

function Init(flags::Uint32)
    ccall((:SDL_Init, libSDL2), Cint, (Uint32,), flags)
end

function InitSubSystem(flags::Uint32)
    ccall((:SDL_InitSubSystem, libSDL2), Cint, (Uint32,), flags)
end

function QuitSubSystem(flags::Uint32)
    ccall((:SDL_QuitSubSystem, libSDL2), Cvoid, (Uint32,), flags)
end

function WasInit(flags::Uint32)
    ccall((:SDL_WasInit, libSDL2), Uint32, (Uint32,), flags)
end

function Quit()
    ccall((:SDL_Quit, libSDL2), Cvoid, ())
end
