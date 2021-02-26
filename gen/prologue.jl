const SDL_MIN_SINT8 = reinterpret(Int8, ~0x7F)
const SDL_MIN_SINT16 = reinterpret(Int16, ~0x7FFF)
const SDL_MIN_SINT32 = reinterpret(Int32, ~0x7FFFFFFF)
const SDL_MIN_SINT64 = reinterpret(Int64, ~0x7FFFFFFFFFFFFFFF)

const SDL_ICONV_ERROR = reinterpret(Csize_t, -1)
const SDL_ICONV_E2BIG = reinterpret(Csize_t, -2)
const SDL_ICONV_EILSEQ = reinterpret(Csize_t, -3)
const SDL_ICONV_EINVAL = reinterpret(Csize_t, -4)

const SDL_TOUCH_MOUSEID = reinterpret(UInt32, Int32(-1))
