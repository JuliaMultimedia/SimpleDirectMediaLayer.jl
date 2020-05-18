# Julia wrapper for header: SDL.h
# Automatically generated using Clang.jl


function Init(flags)
    ccall((:SDL_Init, libsdl2), Cint, (Uint32,), flags)
end

function InitSubSystem(flags)
    ccall((:SDL_InitSubSystem, libsdl2), Cint, (Uint32,), flags)
end

function QuitSubSystem(flags)
    ccall((:SDL_QuitSubSystem, libsdl2), Cvoid, (Uint32,), flags)
end

function WasInit(flags)
    ccall((:SDL_WasInit, libsdl2), Uint32, (Uint32,), flags)
end

function Quit()
    ccall((:SDL_Quit, libsdl2), Cvoid, ())
end
# Julia wrapper for header: assert.h
# Automatically generated using Clang.jl


function ReportAssertion(arg1, arg2, arg3, arg4)
    ccall((:SDL_ReportAssertion, libsdl2), AssertState, (Ptr{AssertData}, Cstring, Cstring, Cint), arg1, arg2, arg3, arg4)
end

function SetAssertionHandler(handler, userdata)
    ccall((:SDL_SetAssertionHandler, libsdl2), Cvoid, (AssertionHandler, Ptr{Cvoid}), handler, userdata)
end

function GetDefaultAssertionHandler()
    ccall((:SDL_GetDefaultAssertionHandler, libsdl2), AssertionHandler, ())
end

function GetAssertionHandler(puserdata)
    ccall((:SDL_GetAssertionHandler, libsdl2), AssertionHandler, (Ptr{Ptr{Cvoid}},), puserdata)
end

function GetAssertionReport()
    ccall((:SDL_GetAssertionReport, libsdl2), Ptr{AssertData}, ())
end

function ResetAssertionReport()
    ccall((:SDL_ResetAssertionReport, libsdl2), Cvoid, ())
end
# Julia wrapper for header: atomic.h
# Automatically generated using Clang.jl


function AtomicTryLock(lock)
    ccall((:SDL_AtomicTryLock, libsdl2), bool, (Ptr{SpinLock},), lock)
end

function AtomicLock(lock)
    ccall((:SDL_AtomicLock, libsdl2), Cvoid, (Ptr{SpinLock},), lock)
end

function AtomicUnlock(lock)
    ccall((:SDL_AtomicUnlock, libsdl2), Cvoid, (Ptr{SpinLock},), lock)
end

function AtomicCAS(a, oldval, newval)
    ccall((:SDL_AtomicCAS, libsdl2), bool, (Ptr{atomic_t}, Cint, Cint), a, oldval, newval)
end

function AtomicSet(a, v)
    ccall((:SDL_AtomicSet, libsdl2), Cint, (Ptr{atomic_t}, Cint), a, v)
end

function AtomicGet(a)
    ccall((:SDL_AtomicGet, libsdl2), Cint, (Ptr{atomic_t},), a)
end

function AtomicAdd(a, v)
    ccall((:SDL_AtomicAdd, libsdl2), Cint, (Ptr{atomic_t}, Cint), a, v)
end

function AtomicCASPtr(a, oldval, newval)
    ccall((:SDL_AtomicCASPtr, libsdl2), bool, (Ptr{Ptr{Cvoid}}, Ptr{Cvoid}, Ptr{Cvoid}), a, oldval, newval)
end

function AtomicSetPtr(a, v)
    ccall((:SDL_AtomicSetPtr, libsdl2), Ptr{Cvoid}, (Ptr{Ptr{Cvoid}}, Ptr{Cvoid}), a, v)
end

function AtomicGetPtr(a)
    ccall((:SDL_AtomicGetPtr, libsdl2), Ptr{Cvoid}, (Ptr{Ptr{Cvoid}},), a)
end
# Julia wrapper for header: audio.h
# Automatically generated using Clang.jl


function GetNumAudioDrivers()
    ccall((:SDL_GetNumAudioDrivers, libsdl2), Cint, ())
end

function GetAudioDriver(index)
    ccall((:SDL_GetAudioDriver, libsdl2), Cstring, (Cint,), index)
end

function AudioInit(driver_name)
    ccall((:SDL_AudioInit, libsdl2), Cint, (Cstring,), driver_name)
end

function AudioQuit()
    ccall((:SDL_AudioQuit, libsdl2), Cvoid, ())
end

function GetCurrentAudioDriver()
    ccall((:SDL_GetCurrentAudioDriver, libsdl2), Cstring, ())
end

function OpenAudio(desired, obtained)
    ccall((:SDL_OpenAudio, libsdl2), Cint, (Ptr{AudioSpec}, Ptr{AudioSpec}), desired, obtained)
end

function GetNumAudioDevices(iscapture)
    ccall((:SDL_GetNumAudioDevices, libsdl2), Cint, (Cint,), iscapture)
end

function GetAudioDeviceName(index, iscapture)
    ccall((:SDL_GetAudioDeviceName, libsdl2), Cstring, (Cint, Cint), index, iscapture)
end

function OpenAudioDevice(device, iscapture, desired, obtained, allowed_changes)
    ccall((:SDL_OpenAudioDevice, libsdl2), AudioDeviceID, (Cstring, Cint, Ptr{AudioSpec}, Ptr{AudioSpec}, Cint), device, iscapture, desired, obtained, allowed_changes)
end

function GetAudioStatus()
    ccall((:SDL_GetAudioStatus, libsdl2), AudioStatus, ())
end

function GetAudioDeviceStatus(dev)
    ccall((:SDL_GetAudioDeviceStatus, libsdl2), AudioStatus, (AudioDeviceID,), dev)
end

function PauseAudio(pause_on)
    ccall((:SDL_PauseAudio, libsdl2), Cvoid, (Cint,), pause_on)
end

function PauseAudioDevice(dev, pause_on)
    ccall((:SDL_PauseAudioDevice, libsdl2), Cvoid, (AudioDeviceID, Cint), dev, pause_on)
end

function LoadWAV_RW(src, freesrc, spec, audio_buf, audio_len)
    ccall((:SDL_LoadWAV_RW, libsdl2), Ptr{AudioSpec}, (Ptr{RWops}, Cint, Ptr{AudioSpec}, Ptr{Ptr{Uint8}}, Ptr{Uint32}), src, freesrc, spec, audio_buf, audio_len)
end

function FreeWAV(audio_buf)
    ccall((:SDL_FreeWAV, libsdl2), Cvoid, (Ptr{Uint8},), audio_buf)
end

function BuildAudioCVT(cvt, src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate)
    ccall((:SDL_BuildAudioCVT, libsdl2), Cint, (Ptr{AudioCVT}, AudioFormat, Uint8, Cint, AudioFormat, Uint8, Cint), cvt, src_format, src_channels, src_rate, dst_format, dst_channels, dst_rate)
end

function ConvertAudio(cvt)
    ccall((:SDL_ConvertAudio, libsdl2), Cint, (Ptr{AudioCVT},), cvt)
end

function MixAudio(dst, src, len, volume)
    ccall((:SDL_MixAudio, libsdl2), Cvoid, (Ptr{Uint8}, Ptr{Uint8}, Uint32, Cint), dst, src, len, volume)
end

function MixAudioFormat(dst, src, format, len, volume)
    ccall((:SDL_MixAudioFormat, libsdl2), Cvoid, (Ptr{Uint8}, Ptr{Uint8}, AudioFormat, Uint32, Cint), dst, src, format, len, volume)
end

function QueueAudio(dev, data, len)
    ccall((:SDL_QueueAudio, libsdl2), Cint, (AudioDeviceID, Ptr{Cvoid}, Uint32), dev, data, len)
end

function DequeueAudio(dev, data, len)
    ccall((:SDL_DequeueAudio, libsdl2), Uint32, (AudioDeviceID, Ptr{Cvoid}, Uint32), dev, data, len)
end

function GetQueuedAudioSize(dev)
    ccall((:SDL_GetQueuedAudioSize, libsdl2), Uint32, (AudioDeviceID,), dev)
end

function ClearQueuedAudio(dev)
    ccall((:SDL_ClearQueuedAudio, libsdl2), Cvoid, (AudioDeviceID,), dev)
end

function LockAudio()
    ccall((:SDL_LockAudio, libsdl2), Cvoid, ())
end

function LockAudioDevice(dev)
    ccall((:SDL_LockAudioDevice, libsdl2), Cvoid, (AudioDeviceID,), dev)
end

function UnlockAudio()
    ccall((:SDL_UnlockAudio, libsdl2), Cvoid, ())
end

function UnlockAudioDevice(dev)
    ccall((:SDL_UnlockAudioDevice, libsdl2), Cvoid, (AudioDeviceID,), dev)
end

function CloseAudio()
    ccall((:SDL_CloseAudio, libsdl2), Cvoid, ())
end

function CloseAudioDevice(dev)
    ccall((:SDL_CloseAudioDevice, libsdl2), Cvoid, (AudioDeviceID,), dev)
end
# Julia wrapper for header: bits.h
# Automatically generated using Clang.jl


function MostSignificantBitIndex32(x)
    ccall((:SDL_MostSignificantBitIndex32, libsdl2), Cint, (Uint32,), x)
end
# Julia wrapper for header: blendmode.h
# Automatically generated using Clang.jl

# Julia wrapper for header: clipboard.h
# Automatically generated using Clang.jl


function SetClipboardText(text)
    ccall((:SDL_SetClipboardText, libsdl2), Cint, (Cstring,), text)
end

function GetClipboardText()
    ccall((:SDL_GetClipboardText, libsdl2), Cstring, ())
end

function HasClipboardText()
    ccall((:SDL_HasClipboardText, libsdl2), bool, ())
end
# Julia wrapper for header: copying.h
# Automatically generated using Clang.jl

# Julia wrapper for header: cpuinfo.h
# Automatically generated using Clang.jl


function GetCPUCount()
    ccall((:SDL_GetCPUCount, libsdl2), Cint, ())
end

function GetCPUCacheLineSize()
    ccall((:SDL_GetCPUCacheLineSize, libsdl2), Cint, ())
end

function HasRDTSC()
    ccall((:SDL_HasRDTSC, libsdl2), bool, ())
end

function HasAltiVec()
    ccall((:SDL_HasAltiVec, libsdl2), bool, ())
end

function HasMMX()
    ccall((:SDL_HasMMX, libsdl2), bool, ())
end

function Has3DNow()
    ccall((:SDL_Has3DNow, libsdl2), bool, ())
end

function HasSSE()
    ccall((:SDL_HasSSE, libsdl2), bool, ())
end

function HasSSE2()
    ccall((:SDL_HasSSE2, libsdl2), bool, ())
end

function HasSSE3()
    ccall((:SDL_HasSSE3, libsdl2), bool, ())
end

function HasSSE41()
    ccall((:SDL_HasSSE41, libsdl2), bool, ())
end

function HasSSE42()
    ccall((:SDL_HasSSE42, libsdl2), bool, ())
end

function HasAVX()
    ccall((:SDL_HasAVX, libsdl2), bool, ())
end

function HasAVX2()
    ccall((:SDL_HasAVX2, libsdl2), bool, ())
end

function GetSystemRAM()
    ccall((:SDL_GetSystemRAM, libsdl2), Cint, ())
end
# Julia wrapper for header: egl.h
# Automatically generated using Clang.jl

# Julia wrapper for header: endian.h
# Automatically generated using Clang.jl


function Swap16(x)
    ccall((:SDL_Swap16, libsdl2), Uint16, (Uint16,), x)
end

function Swap32(x)
    ccall((:SDL_Swap32, libsdl2), Uint32, (Uint32,), x)
end

function Swap64(x)
    ccall((:SDL_Swap64, libsdl2), Uint64, (Uint64,), x)
end

function SwapFloat(x)
    ccall((:SDL_SwapFloat, libsdl2), Cfloat, (Cfloat,), x)
end
# Julia wrapper for header: error.h
# Automatically generated using Clang.jl


function GetError()
    ccall((:SDL_GetError, libsdl2), Cstring, ())
end

function ClearError()
    ccall((:SDL_ClearError, libsdl2), Cvoid, ())
end

function Error(code)
    ccall((:SDL_Error, libsdl2), Cint, (errorcode,), code)
end
# Julia wrapper for header: events.h
# Automatically generated using Clang.jl


function PumpEvents()
    ccall((:SDL_PumpEvents, libsdl2), Cvoid, ())
end

function PeepEvents(events, numevents, action, minType, maxType)
    ccall((:SDL_PeepEvents, libsdl2), Cint, (Ptr{Event}, Cint, eventaction, Uint32, Uint32), events, numevents, action, minType, maxType)
end

function HasEvent(type)
    ccall((:SDL_HasEvent, libsdl2), bool, (Uint32,), type)
end

function HasEvents(minType, maxType)
    ccall((:SDL_HasEvents, libsdl2), bool, (Uint32, Uint32), minType, maxType)
end

function FlushEvent(type)
    ccall((:SDL_FlushEvent, libsdl2), Cvoid, (Uint32,), type)
end

function FlushEvents(minType, maxType)
    ccall((:SDL_FlushEvents, libsdl2), Cvoid, (Uint32, Uint32), minType, maxType)
end

function PollEvent(event)
    ccall((:SDL_PollEvent, libsdl2), Cint, (Ptr{Event},), event)
end

function WaitEvent(event)
    ccall((:SDL_WaitEvent, libsdl2), Cint, (Ptr{Event},), event)
end

function WaitEventTimeout(event, timeout)
    ccall((:SDL_WaitEventTimeout, libsdl2), Cint, (Ptr{Event}, Cint), event, timeout)
end

function PushEvent(event)
    ccall((:SDL_PushEvent, libsdl2), Cint, (Ptr{Event},), event)
end

function SetEventFilter(filter, userdata)
    ccall((:SDL_SetEventFilter, libsdl2), Cvoid, (EventFilter, Ptr{Cvoid}), filter, userdata)
end

function GetEventFilter(filter, userdata)
    ccall((:SDL_GetEventFilter, libsdl2), bool, (Ptr{EventFilter}, Ptr{Ptr{Cvoid}}), filter, userdata)
end

function AddEventWatch(filter, userdata)
    ccall((:SDL_AddEventWatch, libsdl2), Cvoid, (EventFilter, Ptr{Cvoid}), filter, userdata)
end

function DelEventWatch(filter, userdata)
    ccall((:SDL_DelEventWatch, libsdl2), Cvoid, (EventFilter, Ptr{Cvoid}), filter, userdata)
end

function FilterEvents(filter, userdata)
    ccall((:SDL_FilterEvents, libsdl2), Cvoid, (EventFilter, Ptr{Cvoid}), filter, userdata)
end

function EventState(type, state)
    ccall((:SDL_EventState, libsdl2), Uint8, (Uint32, Cint), type, state)
end

function RegisterEvents(numevents)
    ccall((:SDL_RegisterEvents, libsdl2), Uint32, (Cint,), numevents)
end
# Julia wrapper for header: filesystem.h
# Automatically generated using Clang.jl


function GetBasePath()
    ccall((:SDL_GetBasePath, libsdl2), Cstring, ())
end

function GetPrefPath(org, app)
    ccall((:SDL_GetPrefPath, libsdl2), Cstring, (Cstring, Cstring), org, app)
end
# Julia wrapper for header: gamecontroller.h
# Automatically generated using Clang.jl


function GameControllerAddMappingsFromRW(rw, freerw)
    ccall((:SDL_GameControllerAddMappingsFromRW, libsdl2), Cint, (Ptr{RWops}, Cint), rw, freerw)
end

function GameControllerAddMapping(mappingString)
    ccall((:SDL_GameControllerAddMapping, libsdl2), Cint, (Cstring,), mappingString)
end

function GameControllerMappingForGUID(guid)
    ccall((:SDL_GameControllerMappingForGUID, libsdl2), Cstring, (JoystickGUID,), guid)
end

function GameControllerMapping(gamecontroller)
    ccall((:SDL_GameControllerMapping, libsdl2), Cstring, (Ptr{GameController},), gamecontroller)
end

function IsGameController(joystick_index)
    ccall((:SDL_IsGameController, libsdl2), bool, (Cint,), joystick_index)
end

function GameControllerNameForIndex(joystick_index)
    ccall((:SDL_GameControllerNameForIndex, libsdl2), Cstring, (Cint,), joystick_index)
end

function GameControllerOpen(joystick_index)
    ccall((:SDL_GameControllerOpen, libsdl2), Ptr{GameController}, (Cint,), joystick_index)
end

function GameControllerFromInstanceID(joyid)
    ccall((:SDL_GameControllerFromInstanceID, libsdl2), Ptr{GameController}, (JoystickID,), joyid)
end

function GameControllerName(gamecontroller)
    ccall((:SDL_GameControllerName, libsdl2), Cstring, (Ptr{GameController},), gamecontroller)
end

function GameControllerGetAttached(gamecontroller)
    ccall((:SDL_GameControllerGetAttached, libsdl2), bool, (Ptr{GameController},), gamecontroller)
end

function GameControllerGetJoystick(gamecontroller)
    ccall((:SDL_GameControllerGetJoystick, libsdl2), Ptr{Joystick}, (Ptr{GameController},), gamecontroller)
end

function GameControllerEventState(state)
    ccall((:SDL_GameControllerEventState, libsdl2), Cint, (Cint,), state)
end

function GameControllerUpdate()
    ccall((:SDL_GameControllerUpdate, libsdl2), Cvoid, ())
end

function GameControllerGetAxisFromString(pchString)
    ccall((:SDL_GameControllerGetAxisFromString, libsdl2), GameControllerAxis, (Cstring,), pchString)
end

function GameControllerGetStringForAxis(axis)
    ccall((:SDL_GameControllerGetStringForAxis, libsdl2), Cstring, (GameControllerAxis,), axis)
end

function GameControllerGetBindForAxis(gamecontroller, axis)
    ccall((:SDL_GameControllerGetBindForAxis, libsdl2), GameControllerButtonBind, (Ptr{GameController}, GameControllerAxis), gamecontroller, axis)
end

function GameControllerGetAxis(gamecontroller, axis)
    ccall((:SDL_GameControllerGetAxis, libsdl2), Sint16, (Ptr{GameController}, GameControllerAxis), gamecontroller, axis)
end

function GameControllerGetButtonFromString(pchString)
    ccall((:SDL_GameControllerGetButtonFromString, libsdl2), GameControllerButton, (Cstring,), pchString)
end

function GameControllerGetStringForButton(button)
    ccall((:SDL_GameControllerGetStringForButton, libsdl2), Cstring, (GameControllerButton,), button)
end

function GameControllerGetBindForButton(gamecontroller, button)
    ccall((:SDL_GameControllerGetBindForButton, libsdl2), GameControllerButtonBind, (Ptr{GameController}, GameControllerButton), gamecontroller, button)
end

function GameControllerGetButton(gamecontroller, button)
    ccall((:SDL_GameControllerGetButton, libsdl2), Uint8, (Ptr{GameController}, GameControllerButton), gamecontroller, button)
end

function GameControllerClose(gamecontroller)
    ccall((:SDL_GameControllerClose, libsdl2), Cvoid, (Ptr{GameController},), gamecontroller)
end
# Julia wrapper for header: gesture.h
# Automatically generated using Clang.jl


function RecordGesture(touchId)
    ccall((:SDL_RecordGesture, libsdl2), Cint, (TouchID,), touchId)
end

function SaveAllDollarTemplates(dst)
    ccall((:SDL_SaveAllDollarTemplates, libsdl2), Cint, (Ptr{RWops},), dst)
end

function SaveDollarTemplate(gestureId, dst)
    ccall((:SDL_SaveDollarTemplate, libsdl2), Cint, (GestureID, Ptr{RWops}), gestureId, dst)
end

function LoadDollarTemplates(touchId, src)
    ccall((:SDL_LoadDollarTemplates, libsdl2), Cint, (TouchID, Ptr{RWops}), touchId, src)
end
# Julia wrapper for header: haptic.h
# Automatically generated using Clang.jl


function NumHaptics()
    ccall((:SDL_NumHaptics, libsdl2), Cint, ())
end

function HapticName(device_index)
    ccall((:SDL_HapticName, libsdl2), Cstring, (Cint,), device_index)
end

function HapticOpen(device_index)
    ccall((:SDL_HapticOpen, libsdl2), Ptr{Haptic}, (Cint,), device_index)
end

function HapticOpened(device_index)
    ccall((:SDL_HapticOpened, libsdl2), Cint, (Cint,), device_index)
end

function HapticIndex(haptic)
    ccall((:SDL_HapticIndex, libsdl2), Cint, (Ptr{Haptic},), haptic)
end

function MouseIsHaptic()
    ccall((:SDL_MouseIsHaptic, libsdl2), Cint, ())
end

function HapticOpenFromMouse()
    ccall((:SDL_HapticOpenFromMouse, libsdl2), Ptr{Haptic}, ())
end

function JoystickIsHaptic(joystick)
    ccall((:SDL_JoystickIsHaptic, libsdl2), Cint, (Ptr{Joystick},), joystick)
end

function HapticOpenFromJoystick(joystick)
    ccall((:SDL_HapticOpenFromJoystick, libsdl2), Ptr{Haptic}, (Ptr{Joystick},), joystick)
end

function HapticClose(haptic)
    ccall((:SDL_HapticClose, libsdl2), Cvoid, (Ptr{Haptic},), haptic)
end

function HapticNumEffects(haptic)
    ccall((:SDL_HapticNumEffects, libsdl2), Cint, (Ptr{Haptic},), haptic)
end

function HapticNumEffectsPlaying(haptic)
    ccall((:SDL_HapticNumEffectsPlaying, libsdl2), Cint, (Ptr{Haptic},), haptic)
end

function HapticQuery(haptic)
    ccall((:SDL_HapticQuery, libsdl2), UInt32, (Ptr{Haptic},), haptic)
end

function HapticNumAxes(haptic)
    ccall((:SDL_HapticNumAxes, libsdl2), Cint, (Ptr{Haptic},), haptic)
end

function HapticEffectSupported(haptic, effect)
    ccall((:SDL_HapticEffectSupported, libsdl2), Cint, (Ptr{Haptic}, Ptr{HapticEffect}), haptic, effect)
end

function HapticNewEffect(haptic, effect)
    ccall((:SDL_HapticNewEffect, libsdl2), Cint, (Ptr{Haptic}, Ptr{HapticEffect}), haptic, effect)
end

function HapticUpdateEffect(haptic, effect, data)
    ccall((:SDL_HapticUpdateEffect, libsdl2), Cint, (Ptr{Haptic}, Cint, Ptr{HapticEffect}), haptic, effect, data)
end

function HapticRunEffect(haptic, effect, iterations)
    ccall((:SDL_HapticRunEffect, libsdl2), Cint, (Ptr{Haptic}, Cint, Uint32), haptic, effect, iterations)
end

function HapticStopEffect(haptic, effect)
    ccall((:SDL_HapticStopEffect, libsdl2), Cint, (Ptr{Haptic}, Cint), haptic, effect)
end

function HapticDestroyEffect(haptic, effect)
    ccall((:SDL_HapticDestroyEffect, libsdl2), Cvoid, (Ptr{Haptic}, Cint), haptic, effect)
end

function HapticGetEffectStatus(haptic, effect)
    ccall((:SDL_HapticGetEffectStatus, libsdl2), Cint, (Ptr{Haptic}, Cint), haptic, effect)
end

function HapticSetGain(haptic, gain)
    ccall((:SDL_HapticSetGain, libsdl2), Cint, (Ptr{Haptic}, Cint), haptic, gain)
end

function HapticSetAutocenter(haptic, autocenter)
    ccall((:SDL_HapticSetAutocenter, libsdl2), Cint, (Ptr{Haptic}, Cint), haptic, autocenter)
end

function HapticPause(haptic)
    ccall((:SDL_HapticPause, libsdl2), Cint, (Ptr{Haptic},), haptic)
end

function HapticUnpause(haptic)
    ccall((:SDL_HapticUnpause, libsdl2), Cint, (Ptr{Haptic},), haptic)
end

function HapticStopAll(haptic)
    ccall((:SDL_HapticStopAll, libsdl2), Cint, (Ptr{Haptic},), haptic)
end

function HapticRumbleSupported(haptic)
    ccall((:SDL_HapticRumbleSupported, libsdl2), Cint, (Ptr{Haptic},), haptic)
end

function HapticRumbleInit(haptic)
    ccall((:SDL_HapticRumbleInit, libsdl2), Cint, (Ptr{Haptic},), haptic)
end

function HapticRumblePlay(haptic, strength, length)
    ccall((:SDL_HapticRumblePlay, libsdl2), Cint, (Ptr{Haptic}, Cfloat, Uint32), haptic, strength, length)
end

function HapticRumbleStop(haptic)
    ccall((:SDL_HapticRumbleStop, libsdl2), Cint, (Ptr{Haptic},), haptic)
end
# Julia wrapper for header: hints.h
# Automatically generated using Clang.jl


function SetHintWithPriority(name, value, priority)
    ccall((:SDL_SetHintWithPriority, libsdl2), bool, (Cstring, Cstring, HintPriority), name, value, priority)
end

function SetHint(name, value)
    ccall((:SDL_SetHint, libsdl2), bool, (Cstring, Cstring), name, value)
end

function GetHint(name)
    ccall((:SDL_GetHint, libsdl2), Cstring, (Cstring,), name)
end

function GetHintBoolean(name, default_value)
    ccall((:SDL_GetHintBoolean, libsdl2), bool, (Cstring, bool), name, default_value)
end

function AddHintCallback(name, callback, userdata)
    ccall((:SDL_AddHintCallback, libsdl2), Cvoid, (Cstring, HintCallback, Ptr{Cvoid}), name, callback, userdata)
end

function DelHintCallback(name, callback, userdata)
    ccall((:SDL_DelHintCallback, libsdl2), Cvoid, (Cstring, HintCallback, Ptr{Cvoid}), name, callback, userdata)
end

function ClearHints()
    ccall((:SDL_ClearHints, libsdl2), Cvoid, ())
end
# Julia wrapper for header: joystick.h
# Automatically generated using Clang.jl


function NumJoysticks()
    ccall((:SDL_NumJoysticks, libsdl2), Cint, ())
end

function JoystickNameForIndex(device_index)
    ccall((:SDL_JoystickNameForIndex, libsdl2), Cstring, (Cint,), device_index)
end

function JoystickOpen(device_index)
    ccall((:SDL_JoystickOpen, libsdl2), Ptr{Joystick}, (Cint,), device_index)
end

function JoystickFromInstanceID(joyid)
    ccall((:SDL_JoystickFromInstanceID, libsdl2), Ptr{Joystick}, (JoystickID,), joyid)
end

function JoystickName(joystick)
    ccall((:SDL_JoystickName, libsdl2), Cstring, (Ptr{Joystick},), joystick)
end

function JoystickGetDeviceGUID(device_index)
    ccall((:SDL_JoystickGetDeviceGUID, libsdl2), JoystickGUID, (Cint,), device_index)
end

function JoystickGetGUID(joystick)
    ccall((:SDL_JoystickGetGUID, libsdl2), JoystickGUID, (Ptr{Joystick},), joystick)
end

function JoystickGetGUIDString(guid, pszGUID, cbGUID)
    ccall((:SDL_JoystickGetGUIDString, libsdl2), Cvoid, (JoystickGUID, Cstring, Cint), guid, pszGUID, cbGUID)
end

function JoystickGetGUIDFromString(pchGUID)
    ccall((:SDL_JoystickGetGUIDFromString, libsdl2), JoystickGUID, (Cstring,), pchGUID)
end

function JoystickGetAttached(joystick)
    ccall((:SDL_JoystickGetAttached, libsdl2), bool, (Ptr{Joystick},), joystick)
end

function JoystickInstanceID(joystick)
    ccall((:SDL_JoystickInstanceID, libsdl2), JoystickID, (Ptr{Joystick},), joystick)
end

function JoystickNumAxes(joystick)
    ccall((:SDL_JoystickNumAxes, libsdl2), Cint, (Ptr{Joystick},), joystick)
end

function JoystickNumBalls(joystick)
    ccall((:SDL_JoystickNumBalls, libsdl2), Cint, (Ptr{Joystick},), joystick)
end

function JoystickNumHats(joystick)
    ccall((:SDL_JoystickNumHats, libsdl2), Cint, (Ptr{Joystick},), joystick)
end

function JoystickNumButtons(joystick)
    ccall((:SDL_JoystickNumButtons, libsdl2), Cint, (Ptr{Joystick},), joystick)
end

function JoystickUpdate()
    ccall((:SDL_JoystickUpdate, libsdl2), Cvoid, ())
end

function JoystickEventState(state)
    ccall((:SDL_JoystickEventState, libsdl2), Cint, (Cint,), state)
end

function JoystickGetAxis(joystick, axis)
    ccall((:SDL_JoystickGetAxis, libsdl2), Sint16, (Ptr{Joystick}, Cint), joystick, axis)
end

function JoystickGetHat(joystick, hat)
    ccall((:SDL_JoystickGetHat, libsdl2), Uint8, (Ptr{Joystick}, Cint), joystick, hat)
end

function JoystickGetBall(joystick, ball, dx, dy)
    ccall((:SDL_JoystickGetBall, libsdl2), Cint, (Ptr{Joystick}, Cint, Ptr{Cint}, Ptr{Cint}), joystick, ball, dx, dy)
end

function JoystickGetButton(joystick, button)
    ccall((:SDL_JoystickGetButton, libsdl2), Uint8, (Ptr{Joystick}, Cint), joystick, button)
end

function JoystickClose(joystick)
    ccall((:SDL_JoystickClose, libsdl2), Cvoid, (Ptr{Joystick},), joystick)
end

function JoystickCurrentPowerLevel(joystick)
    ccall((:SDL_JoystickCurrentPowerLevel, libsdl2), JoystickPowerLevel, (Ptr{Joystick},), joystick)
end
# Julia wrapper for header: keyboard.h
# Automatically generated using Clang.jl


function GetKeyboardFocus()
    ccall((:SDL_GetKeyboardFocus, libsdl2), Ptr{Window}, ())
end

function GetKeyboardState(numkeys)
    ccall((:SDL_GetKeyboardState, libsdl2), Ptr{Uint8}, (Ptr{Cint},), numkeys)
end

function GetModState()
    ccall((:SDL_GetModState, libsdl2), Keymod, ())
end

function SetModState(modstate)
    ccall((:SDL_SetModState, libsdl2), Cvoid, (Keymod,), modstate)
end

function GetKeyFromScancode(scancode)
    ccall((:SDL_GetKeyFromScancode, libsdl2), Keycode, (Scancode,), scancode)
end

function GetScancodeFromKey(key)
    ccall((:SDL_GetScancodeFromKey, libsdl2), Scancode, (Keycode,), key)
end

function GetScancodeName(scancode)
    ccall((:SDL_GetScancodeName, libsdl2), Cstring, (Scancode,), scancode)
end

function GetScancodeFromName(name)
    ccall((:SDL_GetScancodeFromName, libsdl2), Scancode, (Cstring,), name)
end

function GetKeyName(key)
    ccall((:SDL_GetKeyName, libsdl2), Cstring, (Keycode,), key)
end

function GetKeyFromName(name)
    ccall((:SDL_GetKeyFromName, libsdl2), Keycode, (Cstring,), name)
end

function StartTextInput()
    ccall((:SDL_StartTextInput, libsdl2), Cvoid, ())
end

function IsTextInputActive()
    ccall((:SDL_IsTextInputActive, libsdl2), bool, ())
end

function StopTextInput()
    ccall((:SDL_StopTextInput, libsdl2), Cvoid, ())
end

function SetTextInputRect(rect)
    ccall((:SDL_SetTextInputRect, libsdl2), Cvoid, (Ptr{Rect},), rect)
end

function HasScreenKeyboardSupport()
    ccall((:SDL_HasScreenKeyboardSupport, libsdl2), bool, ())
end

function IsScreenKeyboardShown(window)
    ccall((:SDL_IsScreenKeyboardShown, libsdl2), bool, (Ptr{Window},), window)
end
# Julia wrapper for header: keycode.h
# Automatically generated using Clang.jl

# Julia wrapper for header: loadso.h
# Automatically generated using Clang.jl


function LoadObject(sofile)
    ccall((:SDL_LoadObject, libsdl2), Ptr{Cvoid}, (Cstring,), sofile)
end

function LoadFunction(handle, name)
    ccall((:SDL_LoadFunction, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Cstring), handle, name)
end

function UnloadObject(handle)
    ccall((:SDL_UnloadObject, libsdl2), Cvoid, (Ptr{Cvoid},), handle)
end
# Julia wrapper for header: log.h
# Automatically generated using Clang.jl


function LogSetAllPriority(priority)
    ccall((:SDL_LogSetAllPriority, libsdl2), Cvoid, (LogPriority,), priority)
end

function LogSetPriority(category, priority)
    ccall((:SDL_LogSetPriority, libsdl2), Cvoid, (Cint, LogPriority), category, priority)
end

function LogGetPriority(category)
    ccall((:SDL_LogGetPriority, libsdl2), LogPriority, (Cint,), category)
end

function LogResetPriorities()
    ccall((:SDL_LogResetPriorities, libsdl2), Cvoid, ())
end

function LogGetOutputFunction(callback, userdata)
    ccall((:SDL_LogGetOutputFunction, libsdl2), Cvoid, (Ptr{LogOutputFunction}, Ptr{Ptr{Cvoid}}), callback, userdata)
end

function LogSetOutputFunction(callback, userdata)
    ccall((:SDL_LogSetOutputFunction, libsdl2), Cvoid, (LogOutputFunction, Ptr{Cvoid}), callback, userdata)
end
# Julia wrapper for header: main.h
# Automatically generated using Clang.jl


function main(argc, argv)
    ccall((:SDL_main, libsdl2), Cint, (Cint, Ptr{Cstring}), argc, argv)
end

function SetMainReady()
    ccall((:SDL_SetMainReady, libsdl2), Cvoid, ())
end
# Julia wrapper for header: messagebox.h
# Automatically generated using Clang.jl


function ShowMessageBox(messageboxdata, buttonid)
    ccall((:SDL_ShowMessageBox, libsdl2), Cint, (Ptr{MessageBoxData}, Ptr{Cint}), messageboxdata, buttonid)
end

function ShowSimpleMessageBox(flags, title, message, window)
    ccall((:SDL_ShowSimpleMessageBox, libsdl2), Cint, (Uint32, Cstring, Cstring, Ptr{Window}), flags, title, message, window)
end
# Julia wrapper for header: mouse.h
# Automatically generated using Clang.jl


function GetMouseFocus()
    ccall((:SDL_GetMouseFocus, libsdl2), Ptr{Window}, ())
end

function GetMouseState(x, y)
    ccall((:SDL_GetMouseState, libsdl2), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function GetGlobalMouseState(x, y)
    ccall((:SDL_GetGlobalMouseState, libsdl2), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function GetRelativeMouseState(x, y)
    ccall((:SDL_GetRelativeMouseState, libsdl2), Uint32, (Ptr{Cint}, Ptr{Cint}), x, y)
end

function WarpMouseInWindow(window, x, y)
    ccall((:SDL_WarpMouseInWindow, libsdl2), Cvoid, (Ptr{Window}, Cint, Cint), window, x, y)
end

function WarpMouseGlobal(x, y)
    ccall((:SDL_WarpMouseGlobal, libsdl2), Cint, (Cint, Cint), x, y)
end

function SetRelativeMouseMode(enabled)
    ccall((:SDL_SetRelativeMouseMode, libsdl2), Cint, (bool,), enabled)
end

function CaptureMouse(enabled)
    ccall((:SDL_CaptureMouse, libsdl2), Cint, (bool,), enabled)
end

function GetRelativeMouseMode()
    ccall((:SDL_GetRelativeMouseMode, libsdl2), bool, ())
end

function CreateCursor(data, mask, w, h, hot_x, hot_y)
    ccall((:SDL_CreateCursor, libsdl2), Ptr{Cursor}, (Ptr{Uint8}, Ptr{Uint8}, Cint, Cint, Cint, Cint), data, mask, w, h, hot_x, hot_y)
end

function CreateColorCursor(surface, hot_x, hot_y)
    ccall((:SDL_CreateColorCursor, libsdl2), Ptr{Cursor}, (Ptr{Surface}, Cint, Cint), surface, hot_x, hot_y)
end

function CreateSystemCursor(id)
    ccall((:SDL_CreateSystemCursor, libsdl2), Ptr{Cursor}, (SystemCursor,), id)
end

function SetCursor(cursor)
    ccall((:SDL_SetCursor, libsdl2), Cvoid, (Ptr{Cursor},), cursor)
end

function GetCursor()
    ccall((:SDL_GetCursor, libsdl2), Ptr{Cursor}, ())
end

function GetDefaultCursor()
    ccall((:SDL_GetDefaultCursor, libsdl2), Ptr{Cursor}, ())
end

function FreeCursor(cursor)
    ccall((:SDL_FreeCursor, libsdl2), Cvoid, (Ptr{Cursor},), cursor)
end

function ShowCursor(toggle)
    ccall((:SDL_ShowCursor, libsdl2), Cint, (Cint,), toggle)
end
# Julia wrapper for header: mutex.h
# Automatically generated using Clang.jl


function CreateMutex()
    ccall((:SDL_CreateMutex, libsdl2), Ptr{Mutex}, ())
end

function LockMutex(mutex)
    ccall((:SDL_LockMutex, libsdl2), Cint, (Ptr{Mutex},), mutex)
end

function TryLockMutex(mutex)
    ccall((:SDL_TryLockMutex, libsdl2), Cint, (Ptr{Mutex},), mutex)
end

function UnlockMutex(mutex)
    ccall((:SDL_UnlockMutex, libsdl2), Cint, (Ptr{Mutex},), mutex)
end

function DestroyMutex(mutex)
    ccall((:SDL_DestroyMutex, libsdl2), Cvoid, (Ptr{Mutex},), mutex)
end

function CreateSemaphore(initial_value)
    ccall((:SDL_CreateSemaphore, libsdl2), Ptr{Sem}, (Uint32,), initial_value)
end

function DestroySemaphore(sem)
    ccall((:SDL_DestroySemaphore, libsdl2), Cvoid, (Ptr{Sem},), sem)
end

function SemWait(sem)
    ccall((:SDL_SemWait, libsdl2), Cint, (Ptr{Sem},), sem)
end

function SemTryWait(sem)
    ccall((:SDL_SemTryWait, libsdl2), Cint, (Ptr{Sem},), sem)
end

function SemWaitTimeout(sem, ms)
    ccall((:SDL_SemWaitTimeout, libsdl2), Cint, (Ptr{Sem}, Uint32), sem, ms)
end

function SemPost(sem)
    ccall((:SDL_SemPost, libsdl2), Cint, (Ptr{Sem},), sem)
end

function SemValue(sem)
    ccall((:SDL_SemValue, libsdl2), Uint32, (Ptr{Sem},), sem)
end

function CreateCond()
    ccall((:SDL_CreateCond, libsdl2), Ptr{Cond}, ())
end

function DestroyCond(cond::Ptr{Cond})
    ccall((:SDL_DestroyCond, libsdl2), Cvoid, (Ptr{Cond},), cond)
end

function CondSignal(cond)
    ccall((:SDL_CondSignal, libsdl2), Cint, (Ptr{Cond},), cond)
end

function CondBroadcast(cond)
    ccall((:SDL_CondBroadcast, libsdl2), Cint, (Ptr{Cond},), cond)
end

function CondWait(cond, mutex)
    ccall((:SDL_CondWait, libsdl2), Cint, (Ptr{Cond}, Ptr{Mutex}), cond, mutex)
end

function CondWaitTimeout(cond, mutex, ms)
    ccall((:SDL_CondWaitTimeout, libsdl2), Cint, (Ptr{Cond}, Ptr{Mutex}, Uint32), cond, mutex, ms)
end
# Julia wrapper for header: name.h
# Automatically generated using Clang.jl

# Julia wrapper for header: pixels.h
# Automatically generated using Clang.jl


function GetPixelFormatName(format)
    ccall((:SDL_GetPixelFormatName, libsdl2), Cstring, (Uint32,), format)
end

function PixelFormatEnumToMasks(format, bpp, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_PixelFormatEnumToMasks, libsdl2), bool, (Uint32, Ptr{Cint}, Ptr{Uint32}, Ptr{Uint32}, Ptr{Uint32}, Ptr{Uint32}), format, bpp, Rmask, Gmask, Bmask, Amask)
end

function MasksToPixelFormatEnum(bpp, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_MasksToPixelFormatEnum, libsdl2), Uint32, (Cint, Uint32, Uint32, Uint32, Uint32), bpp, Rmask, Gmask, Bmask, Amask)
end

function AllocFormat(pixel_format)
    ccall((:SDL_AllocFormat, libsdl2), Ptr{PixelFormat}, (Uint32,), pixel_format)
end

function FreeFormat(format)
    ccall((:SDL_FreeFormat, libsdl2), Cvoid, (Ptr{PixelFormat},), format)
end

function AllocPalette(ncolors)
    ccall((:SDL_AllocPalette, libsdl2), Ptr{Palette}, (Cint,), ncolors)
end

function SetPixelFormatPalette(format, palette)
    ccall((:SDL_SetPixelFormatPalette, libsdl2), Cint, (Ptr{PixelFormat}, Ptr{Palette}), format, palette)
end

function SetPaletteColors(palette, colors, firstcolor, ncolors)
    ccall((:SDL_SetPaletteColors, libsdl2), Cint, (Ptr{Palette}, Ptr{Color}, Cint, Cint), palette, colors, firstcolor, ncolors)
end

function FreePalette(palette)
    ccall((:SDL_FreePalette, libsdl2), Cvoid, (Ptr{Palette},), palette)
end

function MapRGB(format, r, g, b)
    ccall((:SDL_MapRGB, libsdl2), Uint32, (Ptr{PixelFormat}, Uint8, Uint8, Uint8), format, r, g, b)
end

function MapRGBA(format, r, g, b, a)
    ccall((:SDL_MapRGBA, libsdl2), Uint32, (Ptr{PixelFormat}, Uint8, Uint8, Uint8, Uint8), format, r, g, b, a)
end

function GetRGB(pixel, format, r, g, b)
    ccall((:SDL_GetRGB, libsdl2), Cvoid, (Uint32, Ptr{PixelFormat}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), pixel, format, r, g, b)
end

function GetRGBA(pixel, format, r, g, b, a)
    ccall((:SDL_GetRGBA, libsdl2), Cvoid, (Uint32, Ptr{PixelFormat}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), pixel, format, r, g, b, a)
end

function CalculateGammaRamp(gamma, ramp)
    ccall((:SDL_CalculateGammaRamp, libsdl2), Cvoid, (Cfloat, Ptr{Uint16}), gamma, ramp)
end
# Julia wrapper for header: platform.h
# Automatically generated using Clang.jl


function GetPlatform()
    ccall((:SDL_GetPlatform, libsdl2), Cstring, ())
end
# Julia wrapper for header: power.h
# Automatically generated using Clang.jl


function GetPowerInfo(secs, pct)
    ccall((:SDL_GetPowerInfo, libsdl2), PowerState, (Ptr{Cint}, Ptr{Cint}), secs, pct)
end
# Julia wrapper for header: quit.h
# Automatically generated using Clang.jl

# Julia wrapper for header: rect.h
# Automatically generated using Clang.jl


function PointInRect(p, r)
    ccall((:SDL_PointInRect, libsdl2), bool, (Ptr{Point}, Ptr{Rect}), p, r)
end

function RectEmpty(r)
    ccall((:SDL_RectEmpty, libsdl2), bool, (Ptr{Rect},), r)
end

function RectEquals(a, b)
    ccall((:SDL_RectEquals, libsdl2), bool, (Ptr{Rect}, Ptr{Rect}), a, b)
end

function HasIntersection(A, B)
    ccall((:SDL_HasIntersection, libsdl2), bool, (Ptr{Rect}, Ptr{Rect}), A, B)
end

function IntersectRect(A, B, result)
    ccall((:SDL_IntersectRect, libsdl2), bool, (Ptr{Rect}, Ptr{Rect}, Ptr{Rect}), A, B, result)
end

function UnionRect(A, B, result)
    ccall((:SDL_UnionRect, libsdl2), Cvoid, (Ptr{Rect}, Ptr{Rect}, Ptr{Rect}), A, B, result)
end

function EnclosePoints(points, count, clip, result)
    ccall((:SDL_EnclosePoints, libsdl2), bool, (Ptr{Point}, Cint, Ptr{Rect}, Ptr{Rect}), points, count, clip, result)
end

function IntersectRectAndLine(rect, X1, Y1, X2, Y2)
    ccall((:SDL_IntersectRectAndLine, libsdl2), bool, (Ptr{Rect}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), rect, X1, Y1, X2, Y2)
end
# Julia wrapper for header: render.h
# Automatically generated using Clang.jl


function GetNumRenderDrivers()
    ccall((:SDL_GetNumRenderDrivers, libsdl2), Cint, ())
end

function GetRenderDriverInfo(index, info)
    ccall((:SDL_GetRenderDriverInfo, libsdl2), Cint, (Cint, Ptr{RendererInfo}), index, info)
end

function CreateWindowAndRenderer(width, height, window_flags, window, renderer)
    ccall((:SDL_CreateWindowAndRenderer, libsdl2), Cint, (Cint, Cint, Uint32, Ptr{Ptr{Window}}, Ptr{Ptr{Renderer}}), width, height, window_flags, window, renderer)
end

function CreateRenderer(window, index, flags)
    ccall((:SDL_CreateRenderer, libsdl2), Ptr{Renderer}, (Ptr{Window}, Cint, Uint32), window, index, flags)
end

function CreateSoftwareRenderer(surface)
    ccall((:SDL_CreateSoftwareRenderer, libsdl2), Ptr{Renderer}, (Ptr{Surface},), surface)
end

function GetRenderer(window)
    ccall((:SDL_GetRenderer, libsdl2), Ptr{Renderer}, (Ptr{Window},), window)
end

function GetRendererInfo(renderer, info)
    ccall((:SDL_GetRendererInfo, libsdl2), Cint, (Ptr{Renderer}, Ptr{RendererInfo}), renderer, info)
end

function GetRendererOutputSize(renderer, w, h)
    ccall((:SDL_GetRendererOutputSize, libsdl2), Cint, (Ptr{Renderer}, Ptr{Cint}, Ptr{Cint}), renderer, w, h)
end

function CreateTexture(renderer, format, access, w, h)
    ccall((:SDL_CreateTexture, libsdl2), Ptr{Texture}, (Ptr{Renderer}, Uint32, Cint, Cint, Cint), renderer, format, access, w, h)
end

function CreateTextureFromSurface(renderer, surface)
    ccall((:SDL_CreateTextureFromSurface, libsdl2), Ptr{Texture}, (Ptr{Renderer}, Ptr{Surface}), renderer, surface)
end

function QueryTexture(texture, format, access, w, h)
    ccall((:SDL_QueryTexture, libsdl2), Cint, (Ptr{Texture}, Ptr{Uint32}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), texture, format, access, w, h)
end

function SetTextureColorMod(texture, r, g, b)
    ccall((:SDL_SetTextureColorMod, libsdl2), Cint, (Ptr{Texture}, Uint8, Uint8, Uint8), texture, r, g, b)
end

function GetTextureColorMod(texture, r, g, b)
    ccall((:SDL_GetTextureColorMod, libsdl2), Cint, (Ptr{Texture}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), texture, r, g, b)
end

function SetTextureAlphaMod(texture, alpha)
    ccall((:SDL_SetTextureAlphaMod, libsdl2), Cint, (Ptr{Texture}, Uint8), texture, alpha)
end

function GetTextureAlphaMod(texture, alpha)
    ccall((:SDL_GetTextureAlphaMod, libsdl2), Cint, (Ptr{Texture}, Ptr{Uint8}), texture, alpha)
end

function SetTextureBlendMode(texture, blendMode)
    ccall((:SDL_SetTextureBlendMode, libsdl2), Cint, (Ptr{Texture}, BlendMode), texture, blendMode)
end

function GetTextureBlendMode(texture, blendMode)
    ccall((:SDL_GetTextureBlendMode, libsdl2), Cint, (Ptr{Texture}, Ptr{BlendMode}), texture, blendMode)
end

function UpdateTexture(texture, rect, pixels, pitch)
    ccall((:SDL_UpdateTexture, libsdl2), Cint, (Ptr{Texture}, Ptr{Rect}, Ptr{Cvoid}, Cint), texture, rect, pixels, pitch)
end

function UpdateYUVTexture(texture, rect, Yplane, Ypitch, Uplane, Upitch, Vplane, Vpitch)
    ccall((:SDL_UpdateYUVTexture, libsdl2), Cint, (Ptr{Texture}, Ptr{Rect}, Ptr{Uint8}, Cint, Ptr{Uint8}, Cint, Ptr{Uint8}, Cint), texture, rect, Yplane, Ypitch, Uplane, Upitch, Vplane, Vpitch)
end

function LockTexture(texture, rect, pixels, pitch)
    ccall((:SDL_LockTexture, libsdl2), Cint, (Ptr{Texture}, Ptr{Rect}, Ptr{Ptr{Cvoid}}, Ptr{Cint}), texture, rect, pixels, pitch)
end

function UnlockTexture(texture)
    ccall((:SDL_UnlockTexture, libsdl2), Cvoid, (Ptr{Texture},), texture)
end

function RenderTargetSupported(renderer)
    ccall((:SDL_RenderTargetSupported, libsdl2), bool, (Ptr{Renderer},), renderer)
end

function SetRenderTarget(renderer, texture)
    ccall((:SDL_SetRenderTarget, libsdl2), Cint, (Ptr{Renderer}, Ptr{Texture}), renderer, texture)
end

function GetRenderTarget(renderer)
    ccall((:SDL_GetRenderTarget, libsdl2), Ptr{Texture}, (Ptr{Renderer},), renderer)
end

function RenderSetLogicalSize(renderer, w, h)
    ccall((:SDL_RenderSetLogicalSize, libsdl2), Cint, (Ptr{Renderer}, Cint, Cint), renderer, w, h)
end

function RenderGetLogicalSize(renderer, w, h)
    ccall((:SDL_RenderGetLogicalSize, libsdl2), Cvoid, (Ptr{Renderer}, Ptr{Cint}, Ptr{Cint}), renderer, w, h)
end

function RenderSetIntegerScale(renderer, enable)
    ccall((:SDL_RenderSetIntegerScale, libsdl2), Cint, (Ptr{Renderer}, bool), renderer, enable)
end

function RenderGetIntegerScale(renderer)
    ccall((:SDL_RenderGetIntegerScale, libsdl2), bool, (Ptr{Renderer},), renderer)
end

function RenderSetViewport(renderer, rect)
    ccall((:SDL_RenderSetViewport, libsdl2), Cint, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderGetViewport(renderer, rect)
    ccall((:SDL_RenderGetViewport, libsdl2), Cvoid, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderSetClipRect(renderer, rect)
    ccall((:SDL_RenderSetClipRect, libsdl2), Cint, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderGetClipRect(renderer, rect)
    ccall((:SDL_RenderGetClipRect, libsdl2), Cvoid, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderIsClipEnabled(renderer)
    ccall((:SDL_RenderIsClipEnabled, libsdl2), bool, (Ptr{Renderer},), renderer)
end

function RenderSetScale(renderer, scaleX, scaleY)
    ccall((:SDL_RenderSetScale, libsdl2), Cint, (Ptr{Renderer}, Cfloat, Cfloat), renderer, scaleX, scaleY)
end

function RenderGetScale(renderer, scaleX, scaleY)
    ccall((:SDL_RenderGetScale, libsdl2), Cvoid, (Ptr{Renderer}, Ptr{Cfloat}, Ptr{Cfloat}), renderer, scaleX, scaleY)
end

function SetRenderDrawColor(renderer, r, g, b, a)
    ccall((:SDL_SetRenderDrawColor, libsdl2), Cint, (Ptr{Renderer}, Uint8, Uint8, Uint8, Uint8), renderer, r, g, b, a)
end

function GetRenderDrawColor(renderer, r, g, b, a)
    ccall((:SDL_GetRenderDrawColor, libsdl2), Cint, (Ptr{Renderer}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), renderer, r, g, b, a)
end

function SetRenderDrawBlendMode(renderer, blendMode)
    ccall((:SDL_SetRenderDrawBlendMode, libsdl2), Cint, (Ptr{Renderer}, BlendMode), renderer, blendMode)
end

function GetRenderDrawBlendMode(renderer, blendMode)
    ccall((:SDL_GetRenderDrawBlendMode, libsdl2), Cint, (Ptr{Renderer}, Ptr{BlendMode}), renderer, blendMode)
end

function RenderClear(renderer)
    ccall((:SDL_RenderClear, libsdl2), Cint, (Ptr{Renderer},), renderer)
end

function RenderDrawPoint(renderer, x, y)
    ccall((:SDL_RenderDrawPoint, libsdl2), Cint, (Ptr{Renderer}, Cint, Cint), renderer, x, y)
end

function RenderDrawPoints(renderer, points, count)
    ccall((:SDL_RenderDrawPoints, libsdl2), Cint, (Ptr{Renderer}, Ptr{Point}, Cint), renderer, points, count)
end

function RenderDrawLine(renderer, x1, y1, x2, y2)
    ccall((:SDL_RenderDrawLine, libsdl2), Cint, (Ptr{Renderer}, Cint, Cint, Cint, Cint), renderer, x1, y1, x2, y2)
end

function RenderDrawLines(renderer, points, count)
    ccall((:SDL_RenderDrawLines, libsdl2), Cint, (Ptr{Renderer}, Ptr{Point}, Cint), renderer, points, count)
end

function RenderDrawRect(renderer, rect)
    ccall((:SDL_RenderDrawRect, libsdl2), Cint, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderDrawRects(renderer, rects, count)
    ccall((:SDL_RenderDrawRects, libsdl2), Cint, (Ptr{Renderer}, Ptr{Rect}, Cint), renderer, rects, count)
end

function RenderFillRect(renderer, rect)
    ccall((:SDL_RenderFillRect, libsdl2), Cint, (Ptr{Renderer}, Ptr{Rect}), renderer, rect)
end

function RenderFillRects(renderer, rects, count)
    ccall((:SDL_RenderFillRects, libsdl2), Cint, (Ptr{Renderer}, Ptr{Rect}, Cint), renderer, rects, count)
end

function RenderCopy(renderer, texture, srcrect, dstrect)
    ccall((:SDL_RenderCopy, libsdl2), Cint, (Ptr{Renderer}, Ptr{Texture}, Ptr{Rect}, Ptr{Rect}), renderer, texture, srcrect, dstrect)
end

function RenderCopyEx(renderer, texture, srcrect, dstrect, angle, center, flip)
    ccall((:SDL_RenderCopyEx, libsdl2), Cint, (Ptr{Renderer}, Ptr{Texture}, Ptr{Rect}, Ptr{Rect}, Cdouble, Ptr{Point}, RendererFlip), renderer, texture, srcrect, dstrect, angle, center, flip)
end

function RenderReadPixels(renderer, rect, format, pixels, pitch)
    ccall((:SDL_RenderReadPixels, libsdl2), Cint, (Ptr{Renderer}, Ptr{Rect}, Uint32, Ptr{Cvoid}, Cint), renderer, rect, format, pixels, pitch)
end

function RenderPresent(renderer)
    ccall((:SDL_RenderPresent, libsdl2), Cvoid, (Ptr{Renderer},), renderer)
end

function DestroyTexture(texture)
    ccall((:SDL_DestroyTexture, libsdl2), Cvoid, (Ptr{Texture},), texture)
end

function DestroyRenderer(renderer)
    ccall((:SDL_DestroyRenderer, libsdl2), Cvoid, (Ptr{Renderer},), renderer)
end

function GL_BindTexture(texture, texw, texh)
    ccall((:SDL_GL_BindTexture, libsdl2), Cint, (Ptr{Texture}, Ptr{Cfloat}, Ptr{Cfloat}), texture, texw, texh)
end

function GL_UnbindTexture(texture)
    ccall((:SDL_GL_UnbindTexture, libsdl2), Cint, (Ptr{Texture},), texture)
end
# Julia wrapper for header: revision.h
# Automatically generated using Clang.jl

# Julia wrapper for header: rwops.h
# Automatically generated using Clang.jl


function RWFromFile(file, mode)
    ccall((:SDL_RWFromFile, libsdl2), Ptr{RWops}, (Cstring, Cstring), file, mode)
end

function RWFromFP(fp, autoclose)
    ccall((:SDL_RWFromFP, libsdl2), Ptr{RWops}, (Ptr{Cvoid}, bool), fp, autoclose)
end

function RWFromMem(mem, size)
    ccall((:SDL_RWFromMem, libsdl2), Ptr{RWops}, (Ptr{Cvoid}, Cint), mem, size)
end

function RWFromConstMem(mem, size)
    ccall((:SDL_RWFromConstMem, libsdl2), Ptr{RWops}, (Ptr{Cvoid}, Cint), mem, size)
end

function AllocRW()
    ccall((:SDL_AllocRW, libsdl2), Ptr{RWops}, ())
end

function FreeRW(area)
    ccall((:SDL_FreeRW, libsdl2), Cvoid, (Ptr{RWops},), area)
end

function ReadU8(src)
    ccall((:SDL_ReadU8, libsdl2), Uint8, (Ptr{RWops},), src)
end

function ReadLE16(src)
    ccall((:SDL_ReadLE16, libsdl2), Uint16, (Ptr{RWops},), src)
end

function ReadBE16(src)
    ccall((:SDL_ReadBE16, libsdl2), Uint16, (Ptr{RWops},), src)
end

function ReadLE32(src)
    ccall((:SDL_ReadLE32, libsdl2), Uint32, (Ptr{RWops},), src)
end

function ReadBE32(src)
    ccall((:SDL_ReadBE32, libsdl2), Uint32, (Ptr{RWops},), src)
end

function ReadLE64(src)
    ccall((:SDL_ReadLE64, libsdl2), Uint64, (Ptr{RWops},), src)
end

function ReadBE64(src)
    ccall((:SDL_ReadBE64, libsdl2), Uint64, (Ptr{RWops},), src)
end

function WriteU8(dst, value)
    ccall((:SDL_WriteU8, libsdl2), Csize_t, (Ptr{RWops}, Uint8), dst, value)
end

function WriteLE16(dst, value)
    ccall((:SDL_WriteLE16, libsdl2), Csize_t, (Ptr{RWops}, Uint16), dst, value)
end

function WriteBE16(dst, value)
    ccall((:SDL_WriteBE16, libsdl2), Csize_t, (Ptr{RWops}, Uint16), dst, value)
end

function WriteLE32(dst, value)
    ccall((:SDL_WriteLE32, libsdl2), Csize_t, (Ptr{RWops}, Uint32), dst, value)
end

function WriteBE32(dst, value)
    ccall((:SDL_WriteBE32, libsdl2), Csize_t, (Ptr{RWops}, Uint32), dst, value)
end

function WriteLE64(dst, value)
    ccall((:SDL_WriteLE64, libsdl2), Csize_t, (Ptr{RWops}, Uint64), dst, value)
end

function WriteBE64(dst, value)
    ccall((:SDL_WriteBE64, libsdl2), Csize_t, (Ptr{RWops}, Uint64), dst, value)
end
# Julia wrapper for header: scancode.h
# Automatically generated using Clang.jl

# Julia wrapper for header: shape.h
# Automatically generated using Clang.jl


function CreateShapedWindow(title, x, y, w, h, flags)
    ccall((:SDL_CreateShapedWindow, libsdl2), Ptr{Window}, (Cstring, UInt32, UInt32, UInt32, UInt32, Uint32), title, x, y, w, h, flags)
end

function IsShapedWindow(window)
    ccall((:SDL_IsShapedWindow, libsdl2), bool, (Ptr{Window},), window)
end

function SetWindowShape(window, shape, shape_mode)
    ccall((:SDL_SetWindowShape, libsdl2), Cint, (Ptr{Window}, Ptr{Surface}, Ptr{WindowShapeMode}), window, shape, shape_mode)
end

function GetShapedWindowMode(window, shape_mode)
    ccall((:SDL_GetShapedWindowMode, libsdl2), Cint, (Ptr{Window}, Ptr{WindowShapeMode}), window, shape_mode)
end
# Julia wrapper for header: stdinc.h
# Automatically generated using Clang.jl


function malloc(size)
    ccall((:SDL_malloc, libsdl2), Ptr{Cvoid}, (Csize_t,), size)
end

function calloc(nmemb, size)
    ccall((:SDL_calloc, libsdl2), Ptr{Cvoid}, (Csize_t, Csize_t), nmemb, size)
end

function realloc(mem, size)
    ccall((:SDL_realloc, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Csize_t), mem, size)
end

function free(mem)
    ccall((:SDL_free, libsdl2), Cvoid, (Ptr{Cvoid},), mem)
end

function getenv(name)
    ccall((:SDL_getenv, libsdl2), Cstring, (Cstring,), name)
end

function setenv(name, value, overwrite)
    ccall((:SDL_setenv, libsdl2), Cint, (Cstring, Cstring, Cint), name, value, overwrite)
end

function qsort(base, nmemb, size, compare)
    ccall((:SDL_qsort, libsdl2), Cvoid, (Ptr{Cvoid}, Csize_t, Csize_t, Ptr{Cvoid}), base, nmemb, size, compare)
end

function abs(x)
    ccall((:SDL_abs, libsdl2), Cint, (Cint,), x)
end

function isdigit(x)
    ccall((:SDL_isdigit, libsdl2), Cint, (Cint,), x)
end

function isspace(x)
    ccall((:SDL_isspace, libsdl2), Cint, (Cint,), x)
end

function toupper(x)
    ccall((:SDL_toupper, libsdl2), Cint, (Cint,), x)
end

function tolower(x)
    ccall((:SDL_tolower, libsdl2), Cint, (Cint,), x)
end

function memset(dst, c, len)
    ccall((:SDL_memset, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Cint, Csize_t), dst, c, len)
end

function memset4(dst, val, dwords)
    ccall((:SDL_memset4, libsdl2), Cvoid, (Ptr{Cvoid}, Uint32, Csize_t), dst, val, dwords)
end

function memcpy(dst, src, len)
    ccall((:SDL_memcpy, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), dst, src, len)
end

function memmove(dst, src, len)
    ccall((:SDL_memmove, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), dst, src, len)
end

function memcmp(s1, s2, len)
    ccall((:SDL_memcmp, libsdl2), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), s1, s2, len)
end

function wcslen(wstr)
    ccall((:SDL_wcslen, libsdl2), Csize_t, (Ptr{Cwchar_t},), wstr)
end

function wcslcpy(dst, src, maxlen)
    ccall((:SDL_wcslcpy, libsdl2), Csize_t, (Ptr{Cwchar_t}, Ptr{Cwchar_t}, Csize_t), dst, src, maxlen)
end

function wcslcat(dst, src, maxlen)
    ccall((:SDL_wcslcat, libsdl2), Csize_t, (Ptr{Cwchar_t}, Ptr{Cwchar_t}, Csize_t), dst, src, maxlen)
end

function strlen(str)
    ccall((:SDL_strlen, libsdl2), Csize_t, (Cstring,), str)
end

function strlcpy(dst, src, maxlen)
    ccall((:SDL_strlcpy, libsdl2), Csize_t, (Cstring, Cstring, Csize_t), dst, src, maxlen)
end

function utf8strlcpy(dst, src, dst_bytes)
    ccall((:SDL_utf8strlcpy, libsdl2), Csize_t, (Cstring, Cstring, Csize_t), dst, src, dst_bytes)
end

function strlcat(dst, src, maxlen)
    ccall((:SDL_strlcat, libsdl2), Csize_t, (Cstring, Cstring, Csize_t), dst, src, maxlen)
end

function strdup(str)
    ccall((:SDL_strdup, libsdl2), Cstring, (Cstring,), str)
end

function strrev(str)
    ccall((:SDL_strrev, libsdl2), Cstring, (Cstring,), str)
end

function strupr(str)
    ccall((:SDL_strupr, libsdl2), Cstring, (Cstring,), str)
end

function strlwr(str)
    ccall((:SDL_strlwr, libsdl2), Cstring, (Cstring,), str)
end

function strchr(str, c)
    ccall((:SDL_strchr, libsdl2), Cstring, (Cstring, Cint), str, c)
end

function strrchr(str, c)
    ccall((:SDL_strrchr, libsdl2), Cstring, (Cstring, Cint), str, c)
end

function strstr(haystack, needle)
    ccall((:SDL_strstr, libsdl2), Cstring, (Cstring, Cstring), haystack, needle)
end

function itoa(value, str, radix)
    ccall((:SDL_itoa, libsdl2), Cstring, (Cint, Cstring, Cint), value, str, radix)
end

function uitoa(value, str, radix)
    ccall((:SDL_uitoa, libsdl2), Cstring, (UInt32, Cstring, Cint), value, str, radix)
end

function ltoa(value, str, radix)
    ccall((:SDL_ltoa, libsdl2), Cstring, (Clong, Cstring, Cint), value, str, radix)
end

function ultoa(value, str, radix)
    ccall((:SDL_ultoa, libsdl2), Cstring, (Culong, Cstring, Cint), value, str, radix)
end

function lltoa(value, str, radix)
    ccall((:SDL_lltoa, libsdl2), Cstring, (Sint64, Cstring, Cint), value, str, radix)
end

function ulltoa(value, str, radix)
    ccall((:SDL_ulltoa, libsdl2), Cstring, (Uint64, Cstring, Cint), value, str, radix)
end

function atoi(str)
    ccall((:SDL_atoi, libsdl2), Cint, (Cstring,), str)
end

function atof(str)
    ccall((:SDL_atof, libsdl2), Cdouble, (Cstring,), str)
end

function strtol(str, endp, base)
    ccall((:SDL_strtol, libsdl2), Clong, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtoul(str, endp, base)
    ccall((:SDL_strtoul, libsdl2), Culong, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtoll(str, endp, base)
    ccall((:SDL_strtoll, libsdl2), Sint64, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtoull(str, endp, base)
    ccall((:SDL_strtoull, libsdl2), Uint64, (Cstring, Ptr{Cstring}, Cint), str, endp, base)
end

function strtod(str, endp)
    ccall((:SDL_strtod, libsdl2), Cdouble, (Cstring, Ptr{Cstring}), str, endp)
end

function strcmp(str1, str2)
    ccall((:SDL_strcmp, libsdl2), Cint, (Cstring, Cstring), str1, str2)
end

function strncmp(str1, str2, maxlen)
    ccall((:SDL_strncmp, libsdl2), Cint, (Cstring, Cstring, Csize_t), str1, str2, maxlen)
end

function strcasecmp(str1, str2)
    ccall((:SDL_strcasecmp, libsdl2), Cint, (Cstring, Cstring), str1, str2)
end

function strncasecmp(str1, str2, len)
    ccall((:SDL_strncasecmp, libsdl2), Cint, (Cstring, Cstring, Csize_t), str1, str2, len)
end

function acos(x)
    ccall((:SDL_acos, libsdl2), Cdouble, (Cdouble,), x)
end

function asin(x)
    ccall((:SDL_asin, libsdl2), Cdouble, (Cdouble,), x)
end

function atan(x)
    ccall((:SDL_atan, libsdl2), Cdouble, (Cdouble,), x)
end

function atan2(x, y)
    ccall((:SDL_atan2, libsdl2), Cdouble, (Cdouble, Cdouble), x, y)
end

function ceil(x)
    ccall((:SDL_ceil, libsdl2), Cdouble, (Cdouble,), x)
end

function copysign(x, y)
    ccall((:SDL_copysign, libsdl2), Cdouble, (Cdouble, Cdouble), x, y)
end

function cos(x)
    ccall((:SDL_cos, libsdl2), Cdouble, (Cdouble,), x)
end

function cosf(x)
    ccall((:SDL_cosf, libsdl2), Cfloat, (Cfloat,), x)
end

function fabs(x)
    ccall((:SDL_fabs, libsdl2), Cdouble, (Cdouble,), x)
end

function floor(x)
    ccall((:SDL_floor, libsdl2), Cdouble, (Cdouble,), x)
end

function log(x)
    ccall((:SDL_log, libsdl2), Cdouble, (Cdouble,), x)
end

function pow(x, y)
    ccall((:SDL_pow, libsdl2), Cdouble, (Cdouble, Cdouble), x, y)
end

function scalbn(x, n)
    ccall((:SDL_scalbn, libsdl2), Cdouble, (Cdouble, Cint), x, n)
end

function sin(x)
    ccall((:SDL_sin, libsdl2), Cdouble, (Cdouble,), x)
end

function sinf(x)
    ccall((:SDL_sinf, libsdl2), Cfloat, (Cfloat,), x)
end

function sqrt(x)
    ccall((:SDL_sqrt, libsdl2), Cdouble, (Cdouble,), x)
end

function sqrtf(x)
    ccall((:SDL_sqrtf, libsdl2), Cfloat, (Cfloat,), x)
end

function tan(x)
    ccall((:SDL_tan, libsdl2), Cdouble, (Cdouble,), x)
end

function tanf(x)
    ccall((:SDL_tanf, libsdl2), Cfloat, (Cfloat,), x)
end

function iconv_open(tocode, fromcode)
    ccall((:SDL_iconv_open, libsdl2), iconv_t, (Cstring, Cstring), tocode, fromcode)
end

function iconv_close(cd)
    ccall((:SDL_iconv_close, libsdl2), Cint, (iconv_t,), cd)
end

function iconv(cd, inbuf, inbytesleft, outbuf, outbytesleft)
    ccall((:SDL_iconv, libsdl2), Csize_t, (iconv_t, Ptr{Cstring}, Ptr{Csize_t}, Ptr{Cstring}, Ptr{Csize_t}), cd, inbuf, inbytesleft, outbuf, outbytesleft)
end

function iconv_string(tocode, fromcode, inbuf, inbytesleft)
    ccall((:SDL_iconv_string, libsdl2), Cstring, (Cstring, Cstring, Cstring, Csize_t), tocode, fromcode, inbuf, inbytesleft)
end

function memcpy4(dst, src, dwords)
    ccall((:SDL_memcpy4, libsdl2), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), dst, src, dwords)
end
# Julia wrapper for header: surface.h
# Automatically generated using Clang.jl


function CreateRGBSurface(flags, width, height, depth, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_CreateRGBSurface, libsdl2), Ptr{Surface}, (Uint32, Cint, Cint, Cint, Uint32, Uint32, Uint32, Uint32), flags, width, height, depth, Rmask, Gmask, Bmask, Amask)
end

function CreateRGBSurfaceWithFormat(flags, width, height, depth, format)
    ccall((:SDL_CreateRGBSurfaceWithFormat, libsdl2), Ptr{Surface}, (Uint32, Cint, Cint, Cint, Uint32), flags, width, height, depth, format)
end

function CreateRGBSurfaceFrom(pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask)
    ccall((:SDL_CreateRGBSurfaceFrom, libsdl2), Ptr{Surface}, (Ptr{Cvoid}, Cint, Cint, Cint, Cint, Uint32, Uint32, Uint32, Uint32), pixels, width, height, depth, pitch, Rmask, Gmask, Bmask, Amask)
end

function CreateRGBSurfaceWithFormatFrom(pixels, width, height, depth, pitch, format)
    ccall((:SDL_CreateRGBSurfaceWithFormatFrom, libsdl2), Ptr{Surface}, (Ptr{Cvoid}, Cint, Cint, Cint, Cint, Uint32), pixels, width, height, depth, pitch, format)
end

function FreeSurface(surface)
    ccall((:SDL_FreeSurface, libsdl2), Cvoid, (Ptr{Surface},), surface)
end

function SetSurfacePalette(surface, palette)
    ccall((:SDL_SetSurfacePalette, libsdl2), Cint, (Ptr{Surface}, Ptr{Palette}), surface, palette)
end

function LockSurface(surface)
    ccall((:SDL_LockSurface, libsdl2), Cint, (Ptr{Surface},), surface)
end

function UnlockSurface(surface)
    ccall((:SDL_UnlockSurface, libsdl2), Cvoid, (Ptr{Surface},), surface)
end

function LoadBMP_RW(src, freesrc)
    ccall((:SDL_LoadBMP_RW, libsdl2), Ptr{Surface}, (Ptr{RWops}, Cint), src, freesrc)
end

function SaveBMP_RW(surface, dst, freedst)
    ccall((:SDL_SaveBMP_RW, libsdl2), Cint, (Ptr{Surface}, Ptr{RWops}, Cint), surface, dst, freedst)
end

function SetSurfaceRLE(surface, flag)
    ccall((:SDL_SetSurfaceRLE, libsdl2), Cint, (Ptr{Surface}, Cint), surface, flag)
end

function SetColorKey(surface, flag, key)
    ccall((:SDL_SetColorKey, libsdl2), Cint, (Ptr{Surface}, Cint, Uint32), surface, flag, key)
end

function GetColorKey(surface, key)
    ccall((:SDL_GetColorKey, libsdl2), Cint, (Ptr{Surface}, Ptr{Uint32}), surface, key)
end

function SetSurfaceColorMod(surface, r, g, b)
    ccall((:SDL_SetSurfaceColorMod, libsdl2), Cint, (Ptr{Surface}, Uint8, Uint8, Uint8), surface, r, g, b)
end

function GetSurfaceColorMod(surface, r, g, b)
    ccall((:SDL_GetSurfaceColorMod, libsdl2), Cint, (Ptr{Surface}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), surface, r, g, b)
end

function SetSurfaceAlphaMod(surface, alpha)
    ccall((:SDL_SetSurfaceAlphaMod, libsdl2), Cint, (Ptr{Surface}, Uint8), surface, alpha)
end

function GetSurfaceAlphaMod(surface, alpha)
    ccall((:SDL_GetSurfaceAlphaMod, libsdl2), Cint, (Ptr{Surface}, Ptr{Uint8}), surface, alpha)
end

function SetSurfaceBlendMode(surface, blendMode)
    ccall((:SDL_SetSurfaceBlendMode, libsdl2), Cint, (Ptr{Surface}, BlendMode), surface, blendMode)
end

function GetSurfaceBlendMode(surface, blendMode)
    ccall((:SDL_GetSurfaceBlendMode, libsdl2), Cint, (Ptr{Surface}, Ptr{BlendMode}), surface, blendMode)
end

function SetClipRect(surface, rect)
    ccall((:SDL_SetClipRect, libsdl2), bool, (Ptr{Surface}, Ptr{Rect}), surface, rect)
end

function GetClipRect(surface, rect)
    ccall((:SDL_GetClipRect, libsdl2), Cvoid, (Ptr{Surface}, Ptr{Rect}), surface, rect)
end

function ConvertSurface(src, fmt, flags)
    ccall((:SDL_ConvertSurface, libsdl2), Ptr{Surface}, (Ptr{Surface}, Ptr{PixelFormat}, Uint32), src, fmt, flags)
end

function ConvertSurfaceFormat(src, pixel_format, flags)
    ccall((:SDL_ConvertSurfaceFormat, libsdl2), Ptr{Surface}, (Ptr{Surface}, Uint32, Uint32), src, pixel_format, flags)
end

function ConvertPixels(width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch)
    ccall((:SDL_ConvertPixels, libsdl2), Cint, (Cint, Cint, Uint32, Ptr{Cvoid}, Cint, Uint32, Ptr{Cvoid}, Cint), width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch)
end

function FillRect(dst, rect, color)
    ccall((:SDL_FillRect, libsdl2), Cint, (Ptr{Surface}, Ptr{Rect}, Uint32), dst, rect, color)
end

function FillRects(dst, rects, count, color)
    ccall((:SDL_FillRects, libsdl2), Cint, (Ptr{Surface}, Ptr{Rect}, Cint, Uint32), dst, rects, count, color)
end

function UpperBlit(src, srcrect, dst, dstrect)
    ccall((:SDL_UpperBlit, libsdl2), Cint, (Ptr{Surface}, Ptr{Rect}, Ptr{Surface}, Ptr{Rect}), src, srcrect, dst, dstrect)
end

function LowerBlit(src, srcrect, dst, dstrect)
    ccall((:SDL_LowerBlit, libsdl2), Cint, (Ptr{Surface}, Ptr{Rect}, Ptr{Surface}, Ptr{Rect}), src, srcrect, dst, dstrect)
end

function SoftStretch(src, srcrect, dst, dstrect)
    ccall((:SDL_SoftStretch, libsdl2), Cint, (Ptr{Surface}, Ptr{Rect}, Ptr{Surface}, Ptr{Rect}), src, srcrect, dst, dstrect)
end

function UpperBlitScaled(src, srcrect, dst, dstrect)
    ccall((:SDL_UpperBlitScaled, libsdl2), Cint, (Ptr{Surface}, Ptr{Rect}, Ptr{Surface}, Ptr{Rect}), src, srcrect, dst, dstrect)
end

function LowerBlitScaled(src, srcrect, dst, dstrect)
    ccall((:SDL_LowerBlitScaled, libsdl2), Cint, (Ptr{Surface}, Ptr{Rect}, Ptr{Surface}, Ptr{Rect}), src, srcrect, dst, dstrect)
end
# Julia wrapper for header: system.h
# Automatically generated using Clang.jl

# Julia wrapper for header: syswm.h
# Automatically generated using Clang.jl


function GetWindowWMInfo(window, info)
    ccall((:SDL_GetWindowWMInfo, libsdl2), bool, (Ptr{Window}, Ptr{SysWMinfo}), window, info)
end
# Julia wrapper for header: thread.h
# Automatically generated using Clang.jl


function CreateThread(fn, name, data)
    ccall((:SDL_CreateThread, libsdl2), Ptr{Thread}, (ThreadFunction, Cstring, Ptr{Cvoid}), fn, name, data)
end

function GetThreadName(thread)
    ccall((:SDL_GetThreadName, libsdl2), Cstring, (Ptr{Thread},), thread)
end

function ThreadID()
    ccall((:SDL_ThreadID, libsdl2), threadID, ())
end

function GetThreadID(thread)
    ccall((:SDL_GetThreadID, libsdl2), threadID, (Ptr{Thread},), thread)
end

function SetThreadPriority(priority)
    ccall((:SDL_SetThreadPriority, libsdl2), Cint, (ThreadPriority,), priority)
end

function WaitThread(thread, status)
    ccall((:SDL_WaitThread, libsdl2), Cvoid, (Ptr{Thread}, Ptr{Cint}), thread, status)
end

function DetachThread(thread)
    ccall((:SDL_DetachThread, libsdl2), Cvoid, (Ptr{Thread},), thread)
end

function TLSCreate()
    ccall((:SDL_TLSCreate, libsdl2), TLSID, ())
end

function TLSGet(id)
    ccall((:SDL_TLSGet, libsdl2), Ptr{Cvoid}, (TLSID,), id)
end

function TLSSet(id, value, destructor)
    ccall((:SDL_TLSSet, libsdl2), Cint, (TLSID, Ptr{Cvoid}, Ptr{Cvoid}), id, value, destructor)
end
# Julia wrapper for header: timer.h
# Automatically generated using Clang.jl


function GetTicks()
    ccall((:SDL_GetTicks, libsdl2), Uint32, ())
end

function GetPerformanceCounter()
    ccall((:SDL_GetPerformanceCounter, libsdl2), Uint64, ())
end

function GetPerformanceFrequency()
    ccall((:SDL_GetPerformanceFrequency, libsdl2), Uint64, ())
end

function Delay(ms)
    ccall((:SDL_Delay, libsdl2), Cvoid, (Uint32,), ms)
end

function AddTimer(interval, callback, param)
    ccall((:SDL_AddTimer, libsdl2), TimerID, (Uint32, TimerCallback, Ptr{Cvoid}), interval, callback, param)
end

function RemoveTimer(id)
    ccall((:SDL_RemoveTimer, libsdl2), bool, (TimerID,), id)
end
# Julia wrapper for header: touch.h
# Automatically generated using Clang.jl


function GetNumTouchDevices()
    ccall((:SDL_GetNumTouchDevices, libsdl2), Cint, ())
end

function GetTouchDevice(index)
    ccall((:SDL_GetTouchDevice, libsdl2), TouchID, (Cint,), index)
end

function GetNumTouchFingers(touchID)
    ccall((:SDL_GetNumTouchFingers, libsdl2), Cint, (TouchID,), touchID)
end

function GetTouchFinger(touchID, index)
    ccall((:SDL_GetTouchFinger, libsdl2), Ptr{Finger}, (TouchID, Cint), touchID, index)
end
# Julia wrapper for header: types.h
# Automatically generated using Clang.jl

# Julia wrapper for header: version.h
# Automatically generated using Clang.jl


function GetVersion(ver)
    ccall((:SDL_GetVersion, libsdl2), Cvoid, (Ptr{version},), ver)
end

function GetRevision()
    ccall((:SDL_GetRevision, libsdl2), Cstring, ())
end

function GetRevisionNumber()
    ccall((:SDL_GetRevisionNumber, libsdl2), Cint, ())
end
# Julia wrapper for header: video.h
# Automatically generated using Clang.jl


function GetNumVideoDrivers()
    ccall((:SDL_GetNumVideoDrivers, libsdl2), Cint, ())
end

function GetVideoDriver(index)
    ccall((:SDL_GetVideoDriver, libsdl2), Cstring, (Cint,), index)
end

function VideoInit(driver_name)
    ccall((:SDL_VideoInit, libsdl2), Cint, (Cstring,), driver_name)
end

function VideoQuit()
    ccall((:SDL_VideoQuit, libsdl2), Cvoid, ())
end

function GetCurrentVideoDriver()
    ccall((:SDL_GetCurrentVideoDriver, libsdl2), Cstring, ())
end

function GetNumVideoDisplays()
    ccall((:SDL_GetNumVideoDisplays, libsdl2), Cint, ())
end

function GetDisplayName(displayIndex)
    ccall((:SDL_GetDisplayName, libsdl2), Cstring, (Cint,), displayIndex)
end

function GetDisplayBounds(displayIndex, rect)
    ccall((:SDL_GetDisplayBounds, libsdl2), Cint, (Cint, Ptr{Rect}), displayIndex, rect)
end

function GetDisplayDPI(displayIndex, ddpi, hdpi, vdpi)
    ccall((:SDL_GetDisplayDPI, libsdl2), Cint, (Cint, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), displayIndex, ddpi, hdpi, vdpi)
end

function GetDisplayUsableBounds(displayIndex, rect)
    ccall((:SDL_GetDisplayUsableBounds, libsdl2), Cint, (Cint, Ptr{Rect}), displayIndex, rect)
end

function GetNumDisplayModes(displayIndex)
    ccall((:SDL_GetNumDisplayModes, libsdl2), Cint, (Cint,), displayIndex)
end

function GetDisplayMode(displayIndex, modeIndex, mode)
    ccall((:SDL_GetDisplayMode, libsdl2), Cint, (Cint, Cint, Ptr{DisplayMode}), displayIndex, modeIndex, mode)
end

function GetDesktopDisplayMode(displayIndex, mode)
    ccall((:SDL_GetDesktopDisplayMode, libsdl2), Cint, (Cint, Ptr{DisplayMode}), displayIndex, mode)
end

function GetCurrentDisplayMode(displayIndex, mode)
    ccall((:SDL_GetCurrentDisplayMode, libsdl2), Cint, (Cint, Ptr{DisplayMode}), displayIndex, mode)
end

function GetClosestDisplayMode(displayIndex, mode, closest)
    ccall((:SDL_GetClosestDisplayMode, libsdl2), Ptr{DisplayMode}, (Cint, Ptr{DisplayMode}, Ptr{DisplayMode}), displayIndex, mode, closest)
end

function GetWindowDisplayIndex(window)
    ccall((:SDL_GetWindowDisplayIndex, libsdl2), Cint, (Ptr{Window},), window)
end

function SetWindowDisplayMode(window, mode)
    ccall((:SDL_SetWindowDisplayMode, libsdl2), Cint, (Ptr{Window}, Ptr{DisplayMode}), window, mode)
end

function GetWindowDisplayMode(window, mode)
    ccall((:SDL_GetWindowDisplayMode, libsdl2), Cint, (Ptr{Window}, Ptr{DisplayMode}), window, mode)
end

function GetWindowPixelFormat(window)
    ccall((:SDL_GetWindowPixelFormat, libsdl2), Uint32, (Ptr{Window},), window)
end

function CreateWindow(title, x, y, w, h, flags)
    ccall((:SDL_CreateWindow, libsdl2), Ptr{Window}, (Cstring, Cint, Cint, Cint, Cint, Uint32), title, x, y, w, h, flags)
end

function CreateWindowFrom(data)
    ccall((:SDL_CreateWindowFrom, libsdl2), Ptr{Window}, (Ptr{Cvoid},), data)
end

function GetWindowID(window)
    ccall((:SDL_GetWindowID, libsdl2), Uint32, (Ptr{Window},), window)
end

function GetWindowFromID(id)
    ccall((:SDL_GetWindowFromID, libsdl2), Ptr{Window}, (Uint32,), id)
end

function GetWindowFlags(window)
    ccall((:SDL_GetWindowFlags, libsdl2), Uint32, (Ptr{Window},), window)
end

function SetWindowTitle(window, title)
    ccall((:SDL_SetWindowTitle, libsdl2), Cvoid, (Ptr{Window}, Cstring), window, title)
end

function GetWindowTitle(window)
    ccall((:SDL_GetWindowTitle, libsdl2), Cstring, (Ptr{Window},), window)
end

function SetWindowIcon(window, icon)
    ccall((:SDL_SetWindowIcon, libsdl2), Cvoid, (Ptr{Window}, Ptr{Surface}), window, icon)
end

function SetWindowData(window, name, userdata)
    ccall((:SDL_SetWindowData, libsdl2), Ptr{Cvoid}, (Ptr{Window}, Cstring, Ptr{Cvoid}), window, name, userdata)
end

function GetWindowData(window, name)
    ccall((:SDL_GetWindowData, libsdl2), Ptr{Cvoid}, (Ptr{Window}, Cstring), window, name)
end

function SetWindowPosition(window, x, y)
    ccall((:SDL_SetWindowPosition, libsdl2), Cvoid, (Ptr{Window}, Cint, Cint), window, x, y)
end

function GetWindowPosition(window, x, y)
    ccall((:SDL_GetWindowPosition, libsdl2), Cvoid, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}), window, x, y)
end

function SetWindowSize(window, w, h)
    ccall((:SDL_SetWindowSize, libsdl2), Cvoid, (Ptr{Window}, Cint, Cint), window, w, h)
end

function GetWindowSize(window, w, h)
    ccall((:SDL_GetWindowSize, libsdl2), Cvoid, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function GetWindowBordersSize(window, top, left, bottom, right)
    ccall((:SDL_GetWindowBordersSize, libsdl2), Cint, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), window, top, left, bottom, right)
end

function SetWindowMinimumSize(window, min_w, min_h)
    ccall((:SDL_SetWindowMinimumSize, libsdl2), Cvoid, (Ptr{Window}, Cint, Cint), window, min_w, min_h)
end

function GetWindowMinimumSize(window, w, h)
    ccall((:SDL_GetWindowMinimumSize, libsdl2), Cvoid, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SetWindowMaximumSize(window, max_w, max_h)
    ccall((:SDL_SetWindowMaximumSize, libsdl2), Cvoid, (Ptr{Window}, Cint, Cint), window, max_w, max_h)
end

function GetWindowMaximumSize(window, w, h)
    ccall((:SDL_GetWindowMaximumSize, libsdl2), Cvoid, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function SetWindowBordered(window, bordered)
    ccall((:SDL_SetWindowBordered, libsdl2), Cvoid, (Ptr{Window}, bool), window, bordered)
end

function SetWindowResizable(window, resizable)
    ccall((:SDL_SetWindowResizable, libsdl2), Cvoid, (Ptr{Window}, bool), window, resizable)
end

function ShowWindow(window)
    ccall((:SDL_ShowWindow, libsdl2), Cvoid, (Ptr{Window},), window)
end

function HideWindow(window)
    ccall((:SDL_HideWindow, libsdl2), Cvoid, (Ptr{Window},), window)
end

function RaiseWindow(window)
    ccall((:SDL_RaiseWindow, libsdl2), Cvoid, (Ptr{Window},), window)
end

function MaximizeWindow(window)
    ccall((:SDL_MaximizeWindow, libsdl2), Cvoid, (Ptr{Window},), window)
end

function MinimizeWindow(window)
    ccall((:SDL_MinimizeWindow, libsdl2), Cvoid, (Ptr{Window},), window)
end

function RestoreWindow(window)
    ccall((:SDL_RestoreWindow, libsdl2), Cvoid, (Ptr{Window},), window)
end

function SetWindowFullscreen(window, flags)
    ccall((:SDL_SetWindowFullscreen, libsdl2), Cint, (Ptr{Window}, Uint32), window, flags)
end

function GetWindowSurface(window)
    ccall((:SDL_GetWindowSurface, libsdl2), Ptr{Surface}, (Ptr{Window},), window)
end

function UpdateWindowSurface(window)
    ccall((:SDL_UpdateWindowSurface, libsdl2), Cint, (Ptr{Window},), window)
end

function UpdateWindowSurfaceRects(window, rects, numrects)
    ccall((:SDL_UpdateWindowSurfaceRects, libsdl2), Cint, (Ptr{Window}, Ptr{Rect}, Cint), window, rects, numrects)
end

function SetWindowGrab(window, grabbed)
    ccall((:SDL_SetWindowGrab, libsdl2), Cvoid, (Ptr{Window}, bool), window, grabbed)
end

function GetWindowGrab(window)
    ccall((:SDL_GetWindowGrab, libsdl2), bool, (Ptr{Window},), window)
end

function GetGrabbedWindow()
    ccall((:SDL_GetGrabbedWindow, libsdl2), Ptr{Window}, ())
end

function SetWindowBrightness(window, brightness)
    ccall((:SDL_SetWindowBrightness, libsdl2), Cint, (Ptr{Window}, Cfloat), window, brightness)
end

function GetWindowBrightness(window)
    ccall((:SDL_GetWindowBrightness, libsdl2), Cfloat, (Ptr{Window},), window)
end

function SetWindowOpacity(window, opacity)
    ccall((:SDL_SetWindowOpacity, libsdl2), Cint, (Ptr{Window}, Cfloat), window, opacity)
end

function GetWindowOpacity(window, out_opacity)
    ccall((:SDL_GetWindowOpacity, libsdl2), Cint, (Ptr{Window}, Ptr{Cfloat}), window, out_opacity)
end

function SetWindowModalFor(modal_window, parent_window)
    ccall((:SDL_SetWindowModalFor, libsdl2), Cint, (Ptr{Window}, Ptr{Window}), modal_window, parent_window)
end

function SetWindowInputFocus(window)
    ccall((:SDL_SetWindowInputFocus, libsdl2), Cint, (Ptr{Window},), window)
end

function SetWindowGammaRamp(window, red, green, blue)
    ccall((:SDL_SetWindowGammaRamp, libsdl2), Cint, (Ptr{Window}, Ptr{Uint16}, Ptr{Uint16}, Ptr{Uint16}), window, red, green, blue)
end

function GetWindowGammaRamp(window, red, green, blue)
    ccall((:SDL_GetWindowGammaRamp, libsdl2), Cint, (Ptr{Window}, Ptr{Uint16}, Ptr{Uint16}, Ptr{Uint16}), window, red, green, blue)
end

function SetWindowHitTest(window, callback, callback_data)
    ccall((:SDL_SetWindowHitTest, libsdl2), Cint, (Ptr{Window}, HitTest, Ptr{Cvoid}), window, callback, callback_data)
end

function DestroyWindow(window)
    ccall((:SDL_DestroyWindow, libsdl2), Cvoid, (Ptr{Window},), window)
end

function IsScreenSaverEnabled()
    ccall((:SDL_IsScreenSaverEnabled, libsdl2), bool, ())
end

function EnableScreenSaver()
    ccall((:SDL_EnableScreenSaver, libsdl2), Cvoid, ())
end

function DisableScreenSaver()
    ccall((:SDL_DisableScreenSaver, libsdl2), Cvoid, ())
end

function GL_LoadLibrary(path)
    ccall((:SDL_GL_LoadLibrary, libsdl2), Cint, (Cstring,), path)
end

function GL_GetProcAddress(proc)
    ccall((:SDL_GL_GetProcAddress, libsdl2), Ptr{Cvoid}, (Cstring,), proc)
end

function GL_UnloadLibrary()
    ccall((:SDL_GL_UnloadLibrary, libsdl2), Cvoid, ())
end

function GL_ExtensionSupported(extension)
    ccall((:SDL_GL_ExtensionSupported, libsdl2), bool, (Cstring,), extension)
end

function GL_ResetAttributes()
    ccall((:SDL_GL_ResetAttributes, libsdl2), Cvoid, ())
end

function GL_SetAttribute(attr, value)
    ccall((:SDL_GL_SetAttribute, libsdl2), Cint, (GLattr, Cint), attr, value)
end

function GL_GetAttribute(attr, value)
    ccall((:SDL_GL_GetAttribute, libsdl2), Cint, (GLattr, Ptr{Cint}), attr, value)
end

function GL_CreateContext(window)
    ccall((:SDL_GL_CreateContext, libsdl2), GLContext, (Ptr{Window},), window)
end

function GL_MakeCurrent(window, context)
    ccall((:SDL_GL_MakeCurrent, libsdl2), Cint, (Ptr{Window}, GLContext), window, context)
end

function GL_GetCurrentWindow()
    ccall((:SDL_GL_GetCurrentWindow, libsdl2), Ptr{Window}, ())
end

function GL_GetCurrentContext()
    ccall((:SDL_GL_GetCurrentContext, libsdl2), GLContext, ())
end

function GL_GetDrawableSize(window, w, h)
    ccall((:SDL_GL_GetDrawableSize, libsdl2), Cvoid, (Ptr{Window}, Ptr{Cint}, Ptr{Cint}), window, w, h)
end

function GL_SetSwapInterval(interval)
    ccall((:SDL_GL_SetSwapInterval, libsdl2), Cint, (Cint,), interval)
end

function GL_GetSwapInterval()
    ccall((:SDL_GL_GetSwapInterval, libsdl2), Cint, ())
end

function GL_SwapWindow(window)
    ccall((:SDL_GL_SwapWindow, libsdl2), Cvoid, (Ptr{Window},), window)
end

function GL_DeleteContext(context)
    ccall((:SDL_GL_DeleteContext, libsdl2), Cvoid, (GLContext,), context)
end
# Julia wrapper for header: begin_code.h
# Automatically generated using Clang.jl

# Julia wrapper for header: close_code.h
# Automatically generated using Clang.jl

