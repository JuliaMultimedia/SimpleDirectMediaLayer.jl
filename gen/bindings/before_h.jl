# Clang warns that it skips these types because they're not supported.
const AudioCVT = Cvoid
const BlitMap = Cvoid

# Clang has generated functions like this:
#
# function DestroyCond(cond::Ptr{SDL_cond})
#     ccall((:SDL_DestroyCond, libsdl2), Cvoid, (Ptr{SDL_cond},), cond)
# end
#
# But I've taken the SDL_ part off and now the argument `cond` shadows the type
# `cond` (previously SDL_cond) and Julia gets (rightly) confused. This is
# another issue with removing the SDL_ prefix.
#
# LoadError: could not evaluate ccall argument type (it might depend on a local variable)
const Mutex = Cvoid
const Sem = Cvoid
const Cond = Cvoid
