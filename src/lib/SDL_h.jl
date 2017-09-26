# Automatically generated using Clang.jl wrap_c, version 0.0.0
# \$\(Expr\(:typealias, :(.+), :\((.+)\)\)\) -> const $1 = $2


using Compat

const OBJC_NEW_PROPERTIES = 1

# Skipping MacroDefinition: SDL_DEPRECATED __attribute__ ( ( deprecated ) )
# Skipping MacroDefinition: SDL_UNUSED __attribute__ ( ( unused ) )
# Skipping MacroDefinition: DECLSPEC __attribute__ ( ( visibility ( "default" ) ) )
# Skipping MacroDefinition: SDL_FORCE_INLINE __attribute__ ( ( always_inline ) ) static __inline__

const SIZEOF_VOIDP = 8
const HAVE_ALLOCA_H = 1
const HAVE_SYS_TYPES_H = 1
const HAVE_STDIO_H = 1
const STDC_HEADERS = 1
const HAVE_STRING_H = 1
const HAVE_INTTYPES_H = 1
const HAVE_STDINT_H = 1
const HAVE_CTYPE_H = 1
const HAVE_MATH_H = 1
const HAVE_SIGNAL_H = 1
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
const HAVE_ABS = 1
const HAVE_BCOPY = 1
const HAVE_MEMSET = 1
const HAVE_MEMCPY = 1
const HAVE_MEMMOVE = 1
const HAVE_MEMCMP = 1
const HAVE_STRLEN = 1
const HAVE_STRLCPY = 1
const HAVE_STRLCAT = 1
const HAVE_STRDUP = 1
const HAVE_STRCHR = 1
const HAVE_STRRCHR = 1
const HAVE_STRSTR = 1
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
const HAVE_CEIL = 1
const HAVE_COPYSIGN = 1
const HAVE_COS = 1
const HAVE_COSF = 1
const HAVE_FABS = 1
const HAVE_FLOOR = 1
const HAVE_LOG = 1
const HAVE_POW = 1
const HAVE_SCALBN = 1
const HAVE_SIN = 1
const HAVE_SINF = 1
const HAVE_SQRT = 1
const HAVE_SQRTF = 1
const HAVE_TAN = 1
const HAVE_TANF = 1
const HAVE_SIGACTION = 1
const HAVE_SETJMP = 1
const HAVE_NANOSLEEP = 1
const HAVE_SYSCONF = 1
const HAVE_SYSCTLBYNAME = 1
const HAVE_ATAN = 1
const HAVE_ATAN2 = 1
const HAVE_ACOS = 1
const HAVE_ASIN = 1
const SDL_AUDIO_DRIVER_COREAUDIO = 1
const SDL_AUDIO_DRIVER_DISK = 1
const SDL_AUDIO_DRIVER_DUMMY = 1
const SDL_JOYSTICK_IOKIT = 1
const SDL_HAPTIC_IOKIT = 1
const SDL_LOADSO_DLOPEN = 1
const SDL_THREAD_PTHREAD = 1
const SDL_THREAD_PTHREAD_RECURSIVE_MUTEX = 1
const SDL_TIMER_UNIX = 1
const SDL_VIDEO_DRIVER_COCOA = 1
const SDL_VIDEO_DRIVER_DUMMY = 1
const SDL_VIDEO_DRIVER_X11_DYNAMIC = "/usr/X11R6/lib/libX11.6.dylib"
const SDL_VIDEO_DRIVER_X11_DYNAMIC_XEXT = "/usr/X11R6/lib/libXext.6.dylib"
const SDL_VIDEO_DRIVER_X11_DYNAMIC_XINERAMA = "/usr/X11R6/lib/libXinerama.1.dylib"
const SDL_VIDEO_DRIVER_X11_DYNAMIC_XINPUT2 = "/usr/X11R6/lib/libXi.6.dylib"
const SDL_VIDEO_DRIVER_X11_DYNAMIC_XRANDR = "/usr/X11R6/lib/libXrandr.2.dylib"
const SDL_VIDEO_DRIVER_X11_DYNAMIC_XSS = "/usr/X11R6/lib/libXss.1.dylib"
const SDL_VIDEO_DRIVER_X11_DYNAMIC_XVIDMODE = "/usr/X11R6/lib/libXxf86vm.1.dylib"
const SDL_VIDEO_DRIVER_X11_XDBE = 1
const SDL_VIDEO_DRIVER_X11_XINERAMA = 1
const SDL_VIDEO_DRIVER_X11_XRANDR = 1
const SDL_VIDEO_DRIVER_X11_XSCRNSAVER = 1
const SDL_VIDEO_DRIVER_X11_XSHAPE = 1
const SDL_VIDEO_DRIVER_X11_XVIDMODE = 1
const SDL_VIDEO_DRIVER_X11_HAS_XKBKEYCODETOKEYSYM = 1
const SDL_VIDEO_RENDER_OGL = 1
const SDL_VIDEO_OPENGL = 1
const SDL_VIDEO_OPENGL_CGL = 1
const SDL_VIDEO_OPENGL_GLX = 1
const SDL_POWER_MACOSX = 1
const SDL_FILESYSTEM_COCOA = 1
const SDL_ASSEMBLY_ROUTINES = 1

# Skipping MacroDefinition: NULL ( ( void * ) 0 )
# Skipping MacroDefinition: offsetof ( t , d ) __builtin_offsetof ( t , d )
# Skipping MacroDefinition: va_start ( ap , param ) __builtin_va_start ( ap , param )
# Skipping MacroDefinition: va_end ( ap ) __builtin_va_end ( ap )
# Skipping MacroDefinition: va_arg ( ap , type ) __builtin_va_arg ( ap , type )
# Skipping MacroDefinition: va_copy ( dest , src ) __builtin_va_copy ( dest , src )
# Skipping MacroDefinition: SDL_arraysize ( array ) ( sizeof ( array ) / sizeof ( array [ 0 ] ) )
# Skipping MacroDefinition: SDL_TABLESIZE ( table ) SDL_arraysize ( table )
# Skipping MacroDefinition: SDL_STRINGIFY_ARG ( arg ) # arg
# Skipping MacroDefinition: SDL_reinterpret_cast ( type , expression ) ( ( type ) ( expression ) )
# Skipping MacroDefinition: SDL_static_cast ( type , expression ) ( ( type ) ( expression ) )
# Skipping MacroDefinition: SDL_const_cast ( type , expression ) ( ( type ) ( expression ) )
# Skipping MacroDefinition: SDL_FOURCC ( A , B , C , D ) ( ( SDL_static_cast ( Uint32 , SDL_static_cast ( Uint8 , ( A ) ) ) << 0 ) | ( SDL_static_cast ( Uint32 , SDL_static_cast ( Uint8 , ( B ) ) ) << 8 ) | ( SDL_static_cast ( Uint32 , SDL_static_cast ( Uint8 , ( C ) ) ) << 16 ) | ( SDL_static_cast ( Uint32 , SDL_static_cast ( Uint8 , ( D ) ) ) << 24 ) )

const SDL_PRIs64 = "lld"
const SDL_PRIu64 = "llu"
const SDL_PRIx64 = "llx"
const SDL_PRIX64 = "llX"

#const SDL_IN_BYTECAP = x
#const SDL_INOUT_Z_CAP = x
#const SDL_OUT_Z_CAP = x
#const SDL_OUT_CAP = x
#const SDL_OUT_BYTECAP = x
#const SDL_OUT_Z_BYTECAP = x

# Skipping MacroDefinition: SDL_PRINTF_VARARG_FUNC ( fmtargnumber ) __attribute__ ( ( format ( __printf__ , fmtargnumber , fmtargnumber + 1 ) ) )
# Skipping MacroDefinition: SDL_SCANF_VARARG_FUNC ( fmtargnumber ) __attribute__ ( ( format ( __scanf__ , fmtargnumber , fmtargnumber + 1 ) ) )
# Skipping MacroDefinition: SDL_COMPILE_TIME_ASSERT ( name , x ) typedef int SDL_dummy_ ## name [ ( x ) * 2 - 1 ]
# Skipping MacroDefinition: SDL_stack_alloc ( type , count ) ( type * ) alloca ( sizeof ( type ) * ( count ) )

#const SDL_stack_free = data

# Skipping MacroDefinition: SDL_min ( x , y ) ( ( ( x ) < ( y ) ) ? ( x ) : ( y ) )
# Skipping MacroDefinition: SDL_max ( x , y ) ( ( ( x ) > ( y ) ) ? ( x ) : ( y ) )
# Skipping MacroDefinition: SDL_zero ( x ) SDL_memset ( & ( x ) , 0 , sizeof ( ( x ) ) )
# Skipping MacroDefinition: SDL_zerop ( x ) SDL_memset ( ( x ) , 0 , sizeof ( * ( x ) ) )

const M_PI = 3.141592653589793

# Skipping MacroDefinition: SDL_ICONV_ERROR ( size_t ) - 1
# Skipping MacroDefinition: SDL_ICONV_E2BIG ( size_t ) - 2
# Skipping MacroDefinition: SDL_ICONV_EILSEQ ( size_t ) - 3
# Skipping MacroDefinition: SDL_ICONV_EINVAL ( size_t ) - 4
# Skipping MacroDefinition: SDL_iconv_utf8_locale ( S ) SDL_iconv_string ( "" , "UTF-8" , S , SDL_strlen ( S ) + 1 )
# Skipping MacroDefinition: SDL_iconv_utf8_ucs2 ( S ) ( Uint16 * ) SDL_iconv_string ( "UCS-2-INTERNAL" , "UTF-8" , S , SDL_strlen ( S ) + 1 )
# Skipping MacroDefinition: SDL_iconv_utf8_ucs4 ( S ) ( Uint32 * ) SDL_iconv_string ( "UCS-4-INTERNAL" , "UTF-8" , S , SDL_strlen ( S ) + 1 )

const SDL_ASSERT_LEVEL = 2

# Skipping MacroDefinition: SDL_TriggerBreakpoint ( ) __asm__ __volatile__ ( "int $3\n\t" )

#const SDL_FILE = __FILE__
#const SDL_LINE = __LINE__
const SDL_NULL_WHILE_LOOP_CONDITION = 0

# Skipping MacroDefinition: SDL_disabled_assert ( condition ) do { ( void ) sizeof ( ( condition ) ) ; } while ( SDL_NULL_WHILE_LOOP_CONDITION )
# Skipping MacroDefinition: SDL_enabled_assert ( condition ) do { while ( ! ( condition ) ) { static struct SDL_AssertData sdl_assert_data = { 0 , 0 , # condition , 0 , 0 , 0 , 0 } ; const SDL_AssertState sdl_assert_state = SDL_ReportAssertion ( & sdl_assert_data , SDL_FUNCTION , SDL_FILE , SDL_LINE ) ; if ( sdl_assert_state == SDL_ASSERTION_RETRY ) { continue ; /* go again. */ } else if ( sdl_assert_state == SDL_ASSERTION_BREAK ) { SDL_TriggerBreakpoint ( ) ; } break ; /* not retrying. */ } } while ( SDL_NULL_WHILE_LOOP_CONDITION )
# Skipping MacroDefinition: SDL_assert ( condition ) SDL_enabled_assert ( condition )
# Skipping MacroDefinition: SDL_assert_release ( condition ) SDL_enabled_assert ( condition )
# Skipping MacroDefinition: SDL_assert_paranoid ( condition ) SDL_disabled_assert ( condition )
# Skipping MacroDefinition: SDL_assert_always ( condition ) SDL_enabled_assert ( condition )

# const SDL_AssertState = Void
# const SDL_assert_state = SDL_AssertState

mutable struct SDL_AssertData
    always_ignore::Cint
    trigger_count::UInt32
    condition::Cstring
    filename::Cstring
    linenum::Cint
    _function::Cstring
    next::Ptr{Void}
end

const SDL_assert_data = SDL_AssertData

# Skipping MacroDefinition: SDL_CompilerBarrier ( ) __asm__ __volatile__ ( "" : : : "memory" )
# Skipping MacroDefinition: SDL_MemoryBarrierRelease ( ) SDL_CompilerBarrier ( )
# Skipping MacroDefinition: SDL_MemoryBarrierAcquire ( ) SDL_CompilerBarrier ( )
# Skipping MacroDefinition: SDL_AtomicIncRef ( a ) SDL_AtomicAdd ( a , 1 )
# Skipping MacroDefinition: SDL_AtomicDecRef ( a ) ( SDL_AtomicAdd ( a , - 1 ) == 1 )
# Skipping MacroDefinition: SDL_OutOfMemory ( ) SDL_Error ( SDL_ENOMEM )
# Skipping MacroDefinition: SDL_Unsupported ( ) SDL_Error ( SDL_UNSUPPORTED )
# Skipping MacroDefinition: SDL_InvalidParamError ( param ) SDL_SetError ( "Parameter '%s' is invalid" , ( param ) )

const SDL_LIL_ENDIAN = 1234
const SDL_BIG_ENDIAN = 4321
const SDL_BYTEORDER = SDL_LIL_ENDIAN

# Skipping MacroDefinition: SDL_SwapLE16 ( X ) ( X )
# Skipping MacroDefinition: SDL_SwapLE32 ( X ) ( X )
# Skipping MacroDefinition: SDL_SwapLE64 ( X ) ( X )
# Skipping MacroDefinition: SDL_SwapFloatLE ( X ) ( X )
# Skipping MacroDefinition: SDL_SwapBE16 ( X ) SDL_Swap16 ( X )
# Skipping MacroDefinition: SDL_SwapBE32 ( X ) SDL_Swap32 ( X )
# Skipping MacroDefinition: SDL_SwapBE64 ( X ) SDL_Swap64 ( X )
# Skipping MacroDefinition: SDL_SwapFloatBE ( X ) SDL_SwapFloat ( X )

const SDL_MUTEX_TIMEDOUT = 1

# Skipping MacroDefinition: SDL_MUTEX_MAXWAIT ( ~ ( Uint32 ) 0 )
# Skipping MacroDefinition: SDL_mutexP ( m ) SDL_LockMutex ( m )
# Skipping MacroDefinition: SDL_mutexV ( m ) SDL_UnlockMutex ( m )

const SDL_RWOPS_UNKNOWN = UInt32(0)
const SDL_RWOPS_WINFILE = UInt32(1)
const SDL_RWOPS_STDFILE = UInt32(2)
const SDL_RWOPS_JNIFILE = UInt32(3)
const SDL_RWOPS_MEMORY = UInt32(4)
const SDL_RWOPS_MEMORY_RO = UInt32(5)
const RW_SEEK_SET = 0
const RW_SEEK_CUR = 1
const RW_SEEK_END = 2

# Skipping MacroDefinition: SDL_RWsize ( ctx ) ( ctx ) -> size ( ctx )
# Skipping MacroDefinition: SDL_RWseek ( ctx , offset , whence ) ( ctx ) -> seek ( ctx , offset , whence )
# Skipping MacroDefinition: SDL_RWtell ( ctx ) ( ctx ) -> seek ( ctx , 0 , RW_SEEK_CUR )
# Skipping MacroDefinition: SDL_RWread ( ctx , ptr , size , n ) ( ctx ) -> read ( ctx , ptr , size , n )
# Skipping MacroDefinition: SDL_RWwrite ( ctx , ptr , size , n ) ( ctx ) -> write ( ctx , ptr , size , n )
# Skipping MacroDefinition: SDL_RWclose ( ctx ) ( ctx ) -> close ( ctx )

const SDL_AUDIO_MASK_BITSIZE = Float32(0x0f)
const SDL_AUDIO_MASK_DATATYPE = 1 << 8
const SDL_AUDIO_MASK_ENDIAN = 1 << 12
const SDL_AUDIO_MASK_SIGNED = 1 << 15

# Skipping MacroDefinition: SDL_AUDIO_BITSIZE ( x ) ( x & SDL_AUDIO_MASK_BITSIZE )
# Skipping MacroDefinition: SDL_AUDIO_ISFLOAT ( x ) ( x & SDL_AUDIO_MASK_DATATYPE )
# Skipping MacroDefinition: SDL_AUDIO_ISBIGENDIAN ( x ) ( x & SDL_AUDIO_MASK_ENDIAN )
# Skipping MacroDefinition: SDL_AUDIO_ISSIGNED ( x ) ( x & SDL_AUDIO_MASK_SIGNED )
# Skipping MacroDefinition: SDL_AUDIO_ISINT ( x ) ( ! SDL_AUDIO_ISFLOAT ( x ) )
# Skipping MacroDefinition: SDL_AUDIO_ISLITTLEENDIAN ( x ) ( ! SDL_AUDIO_ISBIGENDIAN ( x ) )
# Skipping MacroDefinition: SDL_AUDIO_ISUNSIGNED ( x ) ( ! SDL_AUDIO_ISSIGNED ( x ) )

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
const SDL_AUDIO_ALLOW_ANY_CHANGE = (SDL_AUDIO_ALLOW_FREQUENCY_CHANGE | SDL_AUDIO_ALLOW_FORMAT_CHANGE) | SDL_AUDIO_ALLOW_CHANNELS_CHANGE

# Skipping MacroDefinition: SDL_AUDIOCVT_PACKED __attribute__ ( ( packed ) )
# Skipping MacroDefinition: SDL_LoadWAV ( file , spec , audio_buf , audio_len ) SDL_LoadWAV_RW ( SDL_RWFromFile ( file , "rb" ) , 1 , spec , audio_buf , audio_len )

const SDL_MIX_MAXVOLUME = 128
const SDL_CACHELINE_SIZE = 128
const SDL_ALPHA_OPAQUE = 255
const SDL_ALPHA_TRANSPARENT = 0

# Skipping MacroDefinition: SDL_DEFINE_PIXELFOURCC ( A , B , C , D ) SDL_FOURCC ( A , B , C , D )
# Skipping MacroDefinition: SDL_DEFINE_PIXELFORMAT ( type , order , layout , bits , bytes ) ( ( 1 << 28 ) | ( ( type ) << 24 ) | ( ( order ) << 20 ) | ( ( layout ) << 16 ) | ( ( bits ) << 8 ) | ( ( bytes ) << 0 ) )
# Skipping MacroDefinition: SDL_PIXELFLAG ( X ) ( ( ( X ) >> 28 ) & 0x0F )
# Skipping MacroDefinition: SDL_PIXELTYPE ( X ) ( ( ( X ) >> 24 ) & 0x0F )
# Skipping MacroDefinition: SDL_PIXELORDER ( X ) ( ( ( X ) >> 20 ) & 0x0F )
# Skipping MacroDefinition: SDL_PIXELLAYOUT ( X ) ( ( ( X ) >> 16 ) & 0x0F )
# Skipping MacroDefinition: SDL_BITSPERPIXEL ( X ) ( ( ( X ) >> 8 ) & 0xFF )
# Skipping MacroDefinition: SDL_BYTESPERPIXEL ( X ) ( SDL_ISPIXELFORMAT_FOURCC ( X ) ? ( ( ( ( X ) == SDL_PIXELFORMAT_YUY2 ) || ( ( X ) == SDL_PIXELFORMAT_UYVY ) || ( ( X ) == SDL_PIXELFORMAT_YVYU ) ) ? 2 : 1 ) : ( ( ( X ) >> 0 ) & 0xFF ) )
# Skipping MacroDefinition: SDL_ISPIXELFORMAT_INDEXED ( format ) ( ! SDL_ISPIXELFORMAT_FOURCC ( format ) && ( ( SDL_PIXELTYPE ( format ) == SDL_PIXELTYPE_INDEX1 ) || ( SDL_PIXELTYPE ( format ) == SDL_PIXELTYPE_INDEX4 ) || ( SDL_PIXELTYPE ( format ) == SDL_PIXELTYPE_INDEX8 ) ) )
# Skipping MacroDefinition: SDL_ISPIXELFORMAT_PACKED ( format ) ( ! SDL_ISPIXELFORMAT_FOURCC ( format ) && ( ( SDL_PIXELTYPE ( format ) == SDL_PIXELTYPE_PACKED8 ) || ( SDL_PIXELTYPE ( format ) == SDL_PIXELTYPE_PACKED16 ) || ( SDL_PIXELTYPE ( format ) == SDL_PIXELTYPE_PACKED32 ) ) )
# Skipping MacroDefinition: SDL_ISPIXELFORMAT_ARRAY ( format ) ( ! SDL_ISPIXELFORMAT_FOURCC ( format ) && ( ( SDL_PIXELTYPE ( format ) == SDL_PIXELTYPE_ARRAYU8 ) || ( SDL_PIXELTYPE ( format ) == SDL_PIXELTYPE_ARRAYU16 ) || ( SDL_PIXELTYPE ( format ) == SDL_PIXELTYPE_ARRAYU32 ) || ( SDL_PIXELTYPE ( format ) == SDL_PIXELTYPE_ARRAYF16 ) || ( SDL_PIXELTYPE ( format ) == SDL_PIXELTYPE_ARRAYF32 ) ) )
# Skipping MacroDefinition: SDL_ISPIXELFORMAT_ALPHA ( format ) ( ( SDL_ISPIXELFORMAT_PACKED ( format ) && ( ( SDL_PIXELORDER ( format ) == SDL_PACKEDORDER_ARGB ) || ( SDL_PIXELORDER ( format ) == SDL_PACKEDORDER_RGBA ) || ( SDL_PIXELORDER ( format ) == SDL_PACKEDORDER_ABGR ) || ( SDL_PIXELORDER ( format ) == SDL_PACKEDORDER_BGRA ) ) ) || ( SDL_ISPIXELFORMAT_ARRAY ( format ) && ( ( SDL_PIXELORDER ( format ) == SDL_ARRAYORDER_ARGB ) || ( SDL_PIXELORDER ( format ) == SDL_ARRAYORDER_RGBA ) || ( SDL_PIXELORDER ( format ) == SDL_ARRAYORDER_ABGR ) || ( SDL_PIXELORDER ( format ) == SDL_ARRAYORDER_BGRA ) ) ) )
# Skipping MacroDefinition: SDL_ISPIXELFORMAT_FOURCC ( format ) ( ( format ) && ( SDL_PIXELFLAG ( format ) != 1 ) )

#const Uint8 = Cint
const Uint8 = Cint

mutable struct SDL_Color
    r::Uint8
    g::Uint8
    b::Uint8
    a::Uint8
end

const SDL_Colour = SDL_Color
const SDL_SWSURFACE = 0
const SDL_PREALLOC = 0x00000001
const SDL_RLEACCEL = 0x00000002
const SDL_DONTFREE = 0x00000004

# Skipping MacroDefinition: SDL_MUSTLOCK ( S ) ( ( ( S ) -> flags & SDL_RLEACCEL ) != 0 )
# Skipping MacroDefinition: SDL_LoadBMP ( file ) SDL_LoadBMP_RW ( SDL_RWFromFile ( file , "rb" ) , 1 )
# Skipping MacroDefinition: SDL_SaveBMP ( surface , file ) SDL_SaveBMP_RW ( surface , SDL_RWFromFile ( file , "wb" ) , 1 )

#const SDL_BlitSurface = SDL_UpperBlit
#const SDL_BlitScaled = SDL_UpperBlitScaled
const SDL_WINDOWPOS_UNDEFINED_MASK = UInt32(0x1fff0000)

# Skipping MacroDefinition: SDL_WINDOWPOS_UNDEFINED_DISPLAY ( X ) ( SDL_WINDOWPOS_UNDEFINED_MASK | ( X ) )
# Skipping MacroDefinition: SDL_WINDOWPOS_UNDEFINED SDL_WINDOWPOS_UNDEFINED_DISPLAY ( 0 )
# Skipping MacroDefinition: SDL_WINDOWPOS_ISUNDEFINED ( X ) ( ( ( X ) & 0xFFFF0000 ) == SDL_WINDOWPOS_UNDEFINED_MASK )

const SDL_WINDOWPOS_CENTERED_MASK = UInt32(0x2fff0000)

# Skipping MacroDefinition: SDL_WINDOWPOS_CENTERED_DISPLAY ( X ) ( SDL_WINDOWPOS_CENTERED_MASK | ( X ) )
# Skipping MacroDefinition: SDL_WINDOWPOS_CENTERED SDL_WINDOWPOS_CENTERED_DISPLAY ( 0 )
# Skipping MacroDefinition: SDL_WINDOWPOS_ISCENTERED ( X ) ( ( ( X ) & 0xFFFF0000 ) == SDL_WINDOWPOS_CENTERED_MASK )

const SDLK_SCANCODE_MASK = 1 << 30

# Skipping MacroDefinition: SDL_SCANCODE_TO_KEYCODE ( X ) ( X | SDLK_SCANCODE_MASK )

# begin enum ANONYMOUS_23
const ANONYMOUS_23 = UInt32
const KMOD_NONE = (UInt32)(0)
const KMOD_LSHIFT = (UInt32)(1)
const KMOD_RSHIFT = (UInt32)(2)
const KMOD_LCTRL = (UInt32)(64)
const KMOD_RCTRL = (UInt32)(128)
const KMOD_LALT = (UInt32)(256)
const KMOD_RALT = (UInt32)(512)
const KMOD_LGUI = (UInt32)(1024)
const KMOD_RGUI = (UInt32)(2048)
const KMOD_NUM = (UInt32)(4096)
const KMOD_CAPS = (UInt32)(8192)
const KMOD_MODE = (UInt32)(16384)
const KMOD_RESERVED = (UInt32)(32768)
# end enum ANONYMOUS_23

const KMOD_CTRL = KMOD_LCTRL | KMOD_RCTRL
const KMOD_SHIFT = KMOD_LSHIFT | KMOD_RSHIFT
const KMOD_ALT = KMOD_LALT | KMOD_RALT
const KMOD_GUI = KMOD_LGUI | KMOD_RGUI

# Skipping MacroDefinition: SDL_BUTTON ( X ) ( 1 << ( ( X ) - 1 ) )

const SDL_BUTTON_LEFT = 1
const SDL_BUTTON_MIDDLE = 2
const SDL_BUTTON_RIGHT = 3
const SDL_BUTTON_X1 = 4
const SDL_BUTTON_X2 = 5

# Skipping MacroDefinition: SDL_BUTTON_LMASK SDL_BUTTON ( SDL_BUTTON_LEFT )
# Skipping MacroDefinition: SDL_BUTTON_MMASK SDL_BUTTON ( SDL_BUTTON_MIDDLE )
# Skipping MacroDefinition: SDL_BUTTON_RMASK SDL_BUTTON ( SDL_BUTTON_RIGHT )
# Skipping MacroDefinition: SDL_BUTTON_X1MASK SDL_BUTTON ( SDL_BUTTON_X1 )
# Skipping MacroDefinition: SDL_BUTTON_X2MASK SDL_BUTTON ( SDL_BUTTON_X2 )

const SDL_HAT_CENTERED = 0x00
const SDL_HAT_UP = 0x01
const SDL_HAT_RIGHT = 0x02
const SDL_HAT_DOWN = 0x04
const SDL_HAT_LEFT = 0x08
const SDL_HAT_RIGHTUP = SDL_HAT_RIGHT | SDL_HAT_UP
const SDL_HAT_RIGHTDOWN = SDL_HAT_RIGHT | SDL_HAT_DOWN
const SDL_HAT_LEFTUP = SDL_HAT_LEFT | SDL_HAT_UP
const SDL_HAT_LEFTDOWN = SDL_HAT_LEFT | SDL_HAT_DOWN

# Skipping MacroDefinition: SDL_GameControllerAddMappingsFromFile ( file ) SDL_GameControllerAddMappingsFromRW ( SDL_RWFromFile ( file , "rb" ) , 1 )
# Skipping MacroDefinition: SDL_QuitRequested ( ) ( SDL_PumpEvents ( ) , ( SDL_PeepEvents ( NULL , 0 , SDL_PEEKEVENT , SDL_QUIT , SDL_QUIT ) > 0 ) )
# Skipping MacroDefinition: SDL_TOUCH_MOUSEID ( ( Uint32 ) - 1 )

const SDL_RELEASED = 0
const SDL_PRESSED = 1
const SDL_TEXTEDITINGEVENT_TEXT_SIZE = 32
const SDL_TEXTINPUTEVENT_TEXT_SIZE = 32
const SDL_QUERY = -1
const SDL_IGNORE = 0
const SDL_DISABLE = 0
const SDL_ENABLE = 1

# Skipping MacroDefinition: SDL_GetEventState ( type ) SDL_EventState ( type , SDL_QUERY )

const SDL_HAPTIC_CONSTANT = UInt32(1) << 0
const SDL_HAPTIC_SINE = UInt32(1) << 1
const SDL_HAPTIC_LEFTRIGHT = UInt32(1) << 2
const SDL_HAPTIC_TRIANGLE = UInt32(1) << 3
const SDL_HAPTIC_SAWTOOTHUP = UInt32(1) << 4
const SDL_HAPTIC_SAWTOOTHDOWN = UInt32(1) << 5
const SDL_HAPTIC_RAMP = UInt32(1) << 6
const SDL_HAPTIC_SPRING = UInt32(1) << 7
const SDL_HAPTIC_DAMPER = UInt32(1) << 8
const SDL_HAPTIC_INERTIA = UInt32(1) << 9
const SDL_HAPTIC_FRICTION = UInt32(1) << 10
const SDL_HAPTIC_CUSTOM = UInt32(1) << 11
const SDL_HAPTIC_GAIN = UInt32(1) << 12
const SDL_HAPTIC_AUTOCENTER = UInt32(1) << 13
const SDL_HAPTIC_STATUS = UInt32(1) << 14
const SDL_HAPTIC_PAUSE = UInt32(1) << 15
const SDL_HAPTIC_POLAR = 0
const SDL_HAPTIC_CARTESIAN = 1
const SDL_HAPTIC_SPHERICAL = 2
const SDL_HAPTIC_INFINITY = UInt32(4294967295)
const SDL_HINT_FRAMEBUFFER_ACCELERATION = "SDL_FRAMEBUFFER_ACCELERATION"
const SDL_HINT_RENDER_DRIVER = "SDL_RENDER_DRIVER"
const SDL_HINT_RENDER_OPENGL_SHADERS = "SDL_RENDER_OPENGL_SHADERS"
const SDL_HINT_RENDER_DIRECT3D_THREADSAFE = "SDL_RENDER_DIRECT3D_THREADSAFE"
const SDL_HINT_RENDER_DIRECT3D11_DEBUG = "SDL_RENDER_DIRECT3D11_DEBUG"
const SDL_HINT_RENDER_SCALE_QUALITY = "SDL_RENDER_SCALE_QUALITY"
const SDL_HINT_RENDER_VSYNC = "SDL_RENDER_VSYNC"
const SDL_HINT_VIDEO_ALLOW_SCREENSAVER = "SDL_VIDEO_ALLOW_SCREENSAVER"
const SDL_HINT_VIDEO_X11_XVIDMODE = "SDL_VIDEO_X11_XVIDMODE"
const SDL_HINT_VIDEO_X11_XINERAMA = "SDL_VIDEO_X11_XINERAMA"
const SDL_HINT_VIDEO_X11_XRANDR = "SDL_VIDEO_X11_XRANDR"
const SDL_HINT_VIDEO_X11_NET_WM_PING = "SDL_VIDEO_X11_NET_WM_PING"
const SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN = "SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN"
const SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP = "SDL_WINDOWS_ENABLE_MESSAGELOOP"
const SDL_HINT_GRAB_KEYBOARD = "SDL_GRAB_KEYBOARD"
const SDL_HINT_MOUSE_RELATIVE_MODE_WARP = "SDL_MOUSE_RELATIVE_MODE_WARP"
const SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH = "SDL_MOUSE_FOCUS_CLICKTHROUGH"
const SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS = "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS"
const SDL_HINT_IDLE_TIMER_DISABLED = "SDL_IOS_IDLE_TIMER_DISABLED"
const SDL_HINT_ORIENTATIONS = "SDL_IOS_ORIENTATIONS"
const SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS = "SDL_APPLE_TV_CONTROLLER_UI_EVENTS"
const SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION = "SDL_APPLE_TV_REMOTE_ALLOW_ROTATION"
const SDL_HINT_ACCELEROMETER_AS_JOYSTICK = "SDL_ACCELEROMETER_AS_JOYSTICK"
const SDL_HINT_XINPUT_ENABLED = "SDL_XINPUT_ENABLED"
const SDL_HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING = "SDL_XINPUT_USE_OLD_JOYSTICK_MAPPING"
const SDL_HINT_GAMECONTROLLERCONFIG = "SDL_GAMECONTROLLERCONFIG"
const SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS = "SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS"
const SDL_HINT_ALLOW_TOPMOST = "SDL_ALLOW_TOPMOST"
const SDL_HINT_TIMER_RESOLUTION = "SDL_TIMER_RESOLUTION"
const SDL_HINT_THREAD_STACK_SIZE = "SDL_THREAD_STACK_SIZE"
const SDL_HINT_VIDEO_HIGHDPI_DISABLED = "SDL_VIDEO_HIGHDPI_DISABLED"
const SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK = "SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK"
const SDL_HINT_VIDEO_WIN_D3DCOMPILER = "SDL_VIDEO_WIN_D3DCOMPILER"
const SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT = "SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT"
const SDL_HINT_WINRT_PRIVACY_POLICY_URL = "SDL_WINRT_PRIVACY_POLICY_URL"
const SDL_HINT_WINRT_PRIVACY_POLICY_LABEL = "SDL_WINRT_PRIVACY_POLICY_LABEL"
const SDL_HINT_WINRT_HANDLE_BACK_BUTTON = "SDL_WINRT_HANDLE_BACK_BUTTON"
const SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES = "SDL_VIDEO_MAC_FULLSCREEN_SPACES"
const SDL_HINT_MAC_BACKGROUND_APP = "SDL_MAC_BACKGROUND_APP"
const SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION = "SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION"
const SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION = "SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION"
const SDL_HINT_IME_INTERNAL_EDITING = "SDL_IME_INTERNAL_EDITING"
const SDL_HINT_ANDROID_SEPARATE_MOUSE_AND_TOUCH = "SDL_ANDROID_SEPARATE_MOUSE_AND_TOUCH"
const SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT = "SDL_EMSCRIPTEN_KEYBOARD_ELEMENT"
const SDL_HINT_NO_SIGNAL_HANDLERS = "SDL_NO_SIGNAL_HANDLERS"
const SDL_HINT_WINDOWS_NO_CLOSE_ON_ALT_F4 = "SDL_WINDOWS_NO_CLOSE_ON_ALT_F4"
const SDL_HINT_BMP_SAVE_LEGACY_FORMAT = "SDL_BMP_SAVE_LEGACY_FORMAT"
const SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING = "SDL_WINDOWS_DISABLE_THREAD_NAMING"
const SDL_HINT_RPI_VIDEO_LAYER = "SDL_RPI_VIDEO_LAYER"
const SDL_MAX_LOG_MESSAGE = 4096

# Skipping MacroDefinition: SDL_TICKS_PASSED ( A , B ) ( ( Sint32 ) ( ( B ) - ( A ) ) <= 0 )

const SDL_MAJOR_VERSION = 2
const SDL_MINOR_VERSION = 0
const SDL_PATCHLEVEL = 5

# Skipping MacroDefinition: SDL_VERSION ( x ) \
#{ ( x ) -> major = SDL_MAJOR_VERSION ; ( x ) -> minor = SDL_MINOR_VERSION ; ( x ) -> patch = SDL_PATCHLEVEL ; \
#}
# Skipping MacroDefinition: SDL_VERSIONNUM ( X , Y , Z ) ( ( X ) * 1000 + ( Y ) * 100 + ( Z ) )
# Skipping MacroDefinition: SDL_COMPILEDVERSION SDL_VERSIONNUM ( SDL_MAJOR_VERSION , SDL_MINOR_VERSION , SDL_PATCHLEVEL )
# Skipping MacroDefinition: SDL_VERSION_ATLEAST ( X , Y , Z ) ( SDL_COMPILEDVERSION >= SDL_VERSIONNUM ( X , Y , Z ) )

const SDL_INIT_TIMER = UInt32(0x00000001)
const SDL_INIT_AUDIO = UInt32(0x00000010)
const SDL_INIT_VIDEO = UInt32(0x00000020)
const SDL_INIT_JOYSTICK = UInt32(0x00000200)
const SDL_INIT_HAPTIC = UInt32(0x00001000)
const SDL_INIT_GAMECONTROLLER = UInt32(0x00002000)
const SDL_INIT_EVENTS = UInt32(0x00004000)
const SDL_INIT_NOPARACHUTE = UInt32(0x00100000)
const SDL_INIT_EVERYTHING = (((((SDL_INIT_TIMER | SDL_INIT_AUDIO) | SDL_INIT_VIDEO) | SDL_INIT_EVENTS) | SDL_INIT_JOYSTICK) | SDL_INIT_HAPTIC) | SDL_INIT_GAMECONTROLLER

const ptrdiff_t = Clong
const size_t = Culong
const wchar_t = Cint
const max_align_t = Float64
#const va_list = __builtin_va_list

# begin enum ANONYMOUS_1
const ANONYMOUS_1 = UInt32
const SDL_FALSE = (UInt32)(0)
const SDL_TRUE = (UInt32)(1)
# end enum ANONYMOUS_1

const SDL_bool = Bool
const Sint8 = Cint
const Sint16 = Cint
const Uint16 = Cint
const Sint32 = Cint
const Uint32 = Cint
const Sint64 = Cint
const Uint64 = Cint
const SDL_dummy_uint8 = Cint
const SDL_dummy_sint8 = Cint
const SDL_dummy_uint16 = Cint
const SDL_dummy_sint16 = Cint
const SDL_dummy_uint32 = NTuple{1, Cint}
const SDL_dummy_sint32 = NTuple{1, Cint}
const SDL_dummy_uint64 = Cint
const SDL_dummy_sint64 = Cint

# begin enum ANONYMOUS_2
const ANONYMOUS_2 = UInt32
const DUMMY_ENUM_VALUE = (UInt32)(0)
# end enum ANONYMOUS_2

const SDL_DUMMY_ENUM = Void
const SDL_dummy_enum = NTuple{1, Cint}

mutable struct _SDL_iconv_t
end

const SDL_iconv_t = Ptr{Void}

# begin enum ANONYMOUS_3
const ANONYMOUS_3 = UInt32
const SDL_ASSERTION_RETRY = (UInt32)(0)
const SDL_ASSERTION_BREAK = (UInt32)(1)
const SDL_ASSERTION_ABORT = (UInt32)(2)
const SDL_ASSERTION_IGNORE = (UInt32)(3)
const SDL_ASSERTION_ALWAYS_IGNORE = (UInt32)(4)
# end enum ANONYMOUS_3

const SDL_AssertionHandler = Ptr{Void}
const SDL_SpinLock = Cint
const SDL_atomic_t = Void

# begin enum ANONYMOUS_4
const ANONYMOUS_4 = UInt32
const SDL_ENOMEM = (UInt32)(0)
const SDL_EFREAD = (UInt32)(1)
const SDL_EFWRITE = (UInt32)(2)
const SDL_EFSEEK = (UInt32)(3)
const SDL_UNSUPPORTED = (UInt32)(4)
const SDL_LASTERROR = (UInt32)(5)
# end enum ANONYMOUS_4

const SDL_errorcode = Void

mutable struct SDL_mutex
end

mutable struct SDL_semaphore
end

const SDL_sem = Void

mutable struct SDL_cond
end

mutable struct SDL_Thread
end

const SDL_threadID = Culong
const SDL_TLSID = UInt32

# begin enum ANONYMOUS_5
const ANONYMOUS_5 = UInt32
const SDL_THREAD_PRIORITY_LOW = (UInt32)(0)
const SDL_THREAD_PRIORITY_NORMAL = (UInt32)(1)
const SDL_THREAD_PRIORITY_HIGH = (UInt32)(2)
# end enum ANONYMOUS_5

const SDL_ThreadPriority = Void
const SDL_ThreadFunction = Ptr{Void}

mutable struct SDL_RWops
    size::Ptr{Void}
    seek::Ptr{Void}
    read::Ptr{Void}
    write::Ptr{Void}
    close::Ptr{Void}
    _type::Uint32
    hidden::Void
end

const SDL_AudioFormat = Uint16
const SDL_AudioCallback = Ptr{Void}

mutable struct SDL_AudioSpec
    freq::Cint
    format::SDL_AudioFormat
    channels::Uint8
    silence::Uint8
    samples::Uint16
    padding::Uint16
    size::Uint32
    callback::SDL_AudioCallback
    userdata::Ptr{Void}
end

const SDL_AudioFilter = Ptr{Void}
const SDL_AudioDeviceID = Uint32

# begin enum ANONYMOUS_6
const ANONYMOUS_6 = UInt32
const SDL_AUDIO_STOPPED = (UInt32)(0)
const SDL_AUDIO_PLAYING = (UInt32)(1)
const SDL_AUDIO_PAUSED = (UInt32)(2)
# end enum ANONYMOUS_6

const SDL_AudioStatus = Void

# begin enum ANONYMOUS_7
const ANONYMOUS_7 = UInt32
const SDL_PIXELTYPE_UNKNOWN = (UInt32)(0)
const SDL_PIXELTYPE_INDEX1 = (UInt32)(1)
const SDL_PIXELTYPE_INDEX4 = (UInt32)(2)
const SDL_PIXELTYPE_INDEX8 = (UInt32)(3)
const SDL_PIXELTYPE_PACKED8 = (UInt32)(4)
const SDL_PIXELTYPE_PACKED16 = (UInt32)(5)
const SDL_PIXELTYPE_PACKED32 = (UInt32)(6)
const SDL_PIXELTYPE_ARRAYU8 = (UInt32)(7)
const SDL_PIXELTYPE_ARRAYU16 = (UInt32)(8)
const SDL_PIXELTYPE_ARRAYU32 = (UInt32)(9)
const SDL_PIXELTYPE_ARRAYF16 = (UInt32)(10)
const SDL_PIXELTYPE_ARRAYF32 = (UInt32)(11)
# end enum ANONYMOUS_7

# begin enum ANONYMOUS_8
const ANONYMOUS_8 = UInt32
const SDL_BITMAPORDER_NONE = (UInt32)(0)
const SDL_BITMAPORDER_4321 = (UInt32)(1)
const SDL_BITMAPORDER_1234 = (UInt32)(2)
# end enum ANONYMOUS_8

# begin enum ANONYMOUS_9
const ANONYMOUS_9 = UInt32
const SDL_PACKEDORDER_NONE = (UInt32)(0)
const SDL_PACKEDORDER_XRGB = (UInt32)(1)
const SDL_PACKEDORDER_RGBX = (UInt32)(2)
const SDL_PACKEDORDER_ARGB = (UInt32)(3)
const SDL_PACKEDORDER_RGBA = (UInt32)(4)
const SDL_PACKEDORDER_XBGR = (UInt32)(5)
const SDL_PACKEDORDER_BGRX = (UInt32)(6)
const SDL_PACKEDORDER_ABGR = (UInt32)(7)
const SDL_PACKEDORDER_BGRA = (UInt32)(8)
# end enum ANONYMOUS_9

# begin enum ANONYMOUS_10
const ANONYMOUS_10 = UInt32
const SDL_ARRAYORDER_NONE = (UInt32)(0)
const SDL_ARRAYORDER_RGB = (UInt32)(1)
const SDL_ARRAYORDER_RGBA = (UInt32)(2)
const SDL_ARRAYORDER_ARGB = (UInt32)(3)
const SDL_ARRAYORDER_BGR = (UInt32)(4)
const SDL_ARRAYORDER_BGRA = (UInt32)(5)
const SDL_ARRAYORDER_ABGR = (UInt32)(6)
# end enum ANONYMOUS_10

# begin enum ANONYMOUS_11
const ANONYMOUS_11 = UInt32
const SDL_PACKEDLAYOUT_NONE = (UInt32)(0)
const SDL_PACKEDLAYOUT_332 = (UInt32)(1)
const SDL_PACKEDLAYOUT_4444 = (UInt32)(2)
const SDL_PACKEDLAYOUT_1555 = (UInt32)(3)
const SDL_PACKEDLAYOUT_5551 = (UInt32)(4)
const SDL_PACKEDLAYOUT_565 = (UInt32)(5)
const SDL_PACKEDLAYOUT_8888 = (UInt32)(6)
const SDL_PACKEDLAYOUT_2101010 = (UInt32)(7)
const SDL_PACKEDLAYOUT_1010102 = (UInt32)(8)
# end enum ANONYMOUS_11

# begin enum ANONYMOUS_12
const ANONYMOUS_12 = UInt32
const SDL_PIXELFORMAT_UNKNOWN = (UInt32)(0)
const SDL_PIXELFORMAT_INDEX1LSB = (UInt32)(286261504)
const SDL_PIXELFORMAT_INDEX1MSB = (UInt32)(287310080)
const SDL_PIXELFORMAT_INDEX4LSB = (UInt32)(303039488)
const SDL_PIXELFORMAT_INDEX4MSB = (UInt32)(304088064)
const SDL_PIXELFORMAT_INDEX8 = (UInt32)(318769153)
const SDL_PIXELFORMAT_RGB332 = (UInt32)(336660481)
const SDL_PIXELFORMAT_RGB444 = (UInt32)(353504258)
const SDL_PIXELFORMAT_RGB555 = (UInt32)(353570562)
const SDL_PIXELFORMAT_BGR555 = (UInt32)(357764866)
const SDL_PIXELFORMAT_ARGB4444 = (UInt32)(355602434)
const SDL_PIXELFORMAT_RGBA4444 = (UInt32)(356651010)
const SDL_PIXELFORMAT_ABGR4444 = (UInt32)(359796738)
const SDL_PIXELFORMAT_BGRA4444 = (UInt32)(360845314)
const SDL_PIXELFORMAT_ARGB1555 = (UInt32)(355667970)
const SDL_PIXELFORMAT_RGBA5551 = (UInt32)(356782082)
const SDL_PIXELFORMAT_ABGR1555 = (UInt32)(359862274)
const SDL_PIXELFORMAT_BGRA5551 = (UInt32)(360976386)
const SDL_PIXELFORMAT_RGB565 = (UInt32)(353701890)
const SDL_PIXELFORMAT_BGR565 = (UInt32)(357896194)
const SDL_PIXELFORMAT_RGB24 = (UInt32)(386930691)
const SDL_PIXELFORMAT_BGR24 = (UInt32)(390076419)
const SDL_PIXELFORMAT_RGB888 = (UInt32)(370546692)
const SDL_PIXELFORMAT_RGBX8888 = (UInt32)(371595268)
const SDL_PIXELFORMAT_BGR888 = (UInt32)(374740996)
const SDL_PIXELFORMAT_BGRX8888 = (UInt32)(375789572)
const SDL_PIXELFORMAT_ARGB8888 = (UInt32)(372645892)
const SDL_PIXELFORMAT_RGBA8888 = (UInt32)(373694468)
const SDL_PIXELFORMAT_ABGR8888 = (UInt32)(376840196)
const SDL_PIXELFORMAT_BGRA8888 = (UInt32)(377888772)
const SDL_PIXELFORMAT_ARGB2101010 = (UInt32)(372711428)
const SDL_PIXELFORMAT_RGBA32 = (UInt32)(376840196)
const SDL_PIXELFORMAT_ARGB32 = (UInt32)(377888772)
const SDL_PIXELFORMAT_BGRA32 = (UInt32)(372645892)
const SDL_PIXELFORMAT_ABGR32 = (UInt32)(373694468)
const SDL_PIXELFORMAT_YV12 = (UInt32)(842094169)
const SDL_PIXELFORMAT_IYUV = (UInt32)(1448433993)
const SDL_PIXELFORMAT_YUY2 = (UInt32)(844715353)
const SDL_PIXELFORMAT_UYVY = (UInt32)(1498831189)
const SDL_PIXELFORMAT_YVYU = (UInt32)(1431918169)
const SDL_PIXELFORMAT_NV12 = (UInt32)(842094158)
const SDL_PIXELFORMAT_NV21 = (UInt32)(825382478)
# end enum ANONYMOUS_12

mutable struct SDL_Palette
    ncolors::Cint
    colors::Ptr{SDL_Color}
    version::Uint32
    refcount::Cint
end

mutable struct SDL_PixelFormat
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
    next::Ptr{Void}
end

mutable struct SDL_Point
    x::Cint
    y::Cint
end

mutable struct SDL_Rect
    x::Cint
    y::Cint
    w::Cint
    h::Cint
end

# begin enum ANONYMOUS_13
const ANONYMOUS_13 = UInt32
const SDL_BLENDMODE_NONE = (UInt32)(0)
const SDL_BLENDMODE_BLEND = (UInt32)(1)
const SDL_BLENDMODE_ADD = (UInt32)(2)
const SDL_BLENDMODE_MOD = (UInt32)(4)
# end enum ANONYMOUS_13

const SDL_BlendMode = Void

mutable struct SDL_Surface
    flags::Uint32
    format::Ptr{SDL_PixelFormat}
    w::Cint
    h::Cint
    pitch::Cint
    pixels::Ptr{Void}
    userdata::Ptr{Void}
    locked::Cint
    lock_data::Ptr{Void}
    clip_rect::SDL_Rect
    map::Ptr{Void}
    refcount::Cint
end

const SDL_blit = Ptr{Void}
const SDL_DisplayMode = Void

mutable struct SDL_Window
end

# begin enum ANONYMOUS_14
const ANONYMOUS_14 = UInt32
const SDL_WINDOW_FULLSCREEN = (UInt32)(1)
const SDL_WINDOW_OPENGL = (UInt32)(2)
const SDL_WINDOW_SHOWN = (UInt32)(4)
const SDL_WINDOW_HIDDEN = (UInt32)(8)
const SDL_WINDOW_BORDERLESS = (UInt32)(16)
const SDL_WINDOW_RESIZABLE = (UInt32)(32)
const SDL_WINDOW_MINIMIZED = (UInt32)(64)
const SDL_WINDOW_MAXIMIZED = (UInt32)(128)
const SDL_WINDOW_INPUT_GRABBED = (UInt32)(256)
const SDL_WINDOW_INPUT_FOCUS = (UInt32)(512)
const SDL_WINDOW_MOUSE_FOCUS = (UInt32)(1024)
const SDL_WINDOW_FULLSCREEN_DESKTOP = (UInt32)(4097)
const SDL_WINDOW_FOREIGN = (UInt32)(2048)
const SDL_WINDOW_ALLOW_HIGHDPI = (UInt32)(8192)
const SDL_WINDOW_MOUSE_CAPTURE = (UInt32)(16384)
const SDL_WINDOW_ALWAYS_ON_TOP = (UInt32)(32768)
const SDL_WINDOW_SKIP_TASKBAR = (UInt32)(65536)
const SDL_WINDOW_UTILITY = (UInt32)(131072)
const SDL_WINDOW_TOOLTIP = (UInt32)(262144)
const SDL_WINDOW_POPUP_MENU = (UInt32)(524288)
# end enum ANONYMOUS_14

const SDL_WindowFlags = Void

# begin enum ANONYMOUS_15
const ANONYMOUS_15 = UInt32
const SDL_WINDOWEVENT_NONE = (UInt32)(0)
const SDL_WINDOWEVENT_SHOWN = (UInt32)(1)
const SDL_WINDOWEVENT_HIDDEN = (UInt32)(2)
const SDL_WINDOWEVENT_EXPOSED = (UInt32)(3)
const SDL_WINDOWEVENT_MOVED = (UInt32)(4)
const SDL_WINDOWEVENT_RESIZED = (UInt32)(5)
const SDL_WINDOWEVENT_SIZE_CHANGED = (UInt32)(6)
const SDL_WINDOWEVENT_MINIMIZED = (UInt32)(7)
const SDL_WINDOWEVENT_MAXIMIZED = (UInt32)(8)
const SDL_WINDOWEVENT_RESTORED = (UInt32)(9)
const SDL_WINDOWEVENT_ENTER = (UInt32)(10)
const SDL_WINDOWEVENT_LEAVE = (UInt32)(11)
const SDL_WINDOWEVENT_FOCUS_GAINED = (UInt32)(12)
const SDL_WINDOWEVENT_FOCUS_LOST = (UInt32)(13)
const SDL_WINDOWEVENT_CLOSE = (UInt32)(14)
const SDL_WINDOWEVENT_TAKE_FOCUS = (UInt32)(15)
const SDL_WINDOWEVENT_HIT_TEST = (UInt32)(16)
# end enum ANONYMOUS_15

const SDL_WindowEventID = Void
const SDL_GLContext = Ptr{Void}

# begin enum ANONYMOUS_16
const ANONYMOUS_16 = UInt32
const SDL_GL_RED_SIZE = (UInt32)(0)
const SDL_GL_GREEN_SIZE = (UInt32)(1)
const SDL_GL_BLUE_SIZE = (UInt32)(2)
const SDL_GL_ALPHA_SIZE = (UInt32)(3)
const SDL_GL_BUFFER_SIZE = (UInt32)(4)
const SDL_GL_DOUBLEBUFFER = (UInt32)(5)
const SDL_GL_DEPTH_SIZE = (UInt32)(6)
const SDL_GL_STENCIL_SIZE = (UInt32)(7)
const SDL_GL_ACCUM_RED_SIZE = (UInt32)(8)
const SDL_GL_ACCUM_GREEN_SIZE = (UInt32)(9)
const SDL_GL_ACCUM_BLUE_SIZE = (UInt32)(10)
const SDL_GL_ACCUM_ALPHA_SIZE = (UInt32)(11)
const SDL_GL_STEREO = (UInt32)(12)
const SDL_GL_MULTISAMPLEBUFFERS = (UInt32)(13)
const SDL_GL_MULTISAMPLESAMPLES = (UInt32)(14)
const SDL_GL_ACCELERATED_VISUAL = (UInt32)(15)
const SDL_GL_RETAINED_BACKING = (UInt32)(16)
const SDL_GL_CONTEXT_MAJOR_VERSION = (UInt32)(17)
const SDL_GL_CONTEXT_MINOR_VERSION = (UInt32)(18)
const SDL_GL_CONTEXT_EGL = (UInt32)(19)
const SDL_GL_CONTEXT_FLAGS = (UInt32)(20)
const SDL_GL_CONTEXT_PROFILE_MASK = (UInt32)(21)
const SDL_GL_SHARE_WITH_CURRENT_CONTEXT = (UInt32)(22)
const SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = (UInt32)(23)
const SDL_GL_CONTEXT_RELEASE_BEHAVIOR = (UInt32)(24)
# end enum ANONYMOUS_16

const SDL_GLattr = UInt32

# begin enum ANONYMOUS_17
const ANONYMOUS_17 = UInt32
const SDL_GL_CONTEXT_PROFILE_CORE = (UInt32)(1)
const SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = (UInt32)(2)
const SDL_GL_CONTEXT_PROFILE_ES = (UInt32)(4)
# end enum ANONYMOUS_17

const SDL_GLprofile = Void

# begin enum ANONYMOUS_18
const ANONYMOUS_18 = UInt32
const SDL_GL_CONTEXT_DEBUG_FLAG = (UInt32)(1)
const SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = (UInt32)(2)
const SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = (UInt32)(4)
const SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = (UInt32)(8)
# end enum ANONYMOUS_18

const SDL_GLcontextFlag = Void

# begin enum ANONYMOUS_19
const ANONYMOUS_19 = UInt32
const SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = (UInt32)(0)
const SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = (UInt32)(1)
# end enum ANONYMOUS_19

const SDL_GLcontextReleaseFlag = Void

# begin enum ANONYMOUS_20
const ANONYMOUS_20 = UInt32
const SDL_HITTEST_NORMAL = (UInt32)(0)
const SDL_HITTEST_DRAGGABLE = (UInt32)(1)
const SDL_HITTEST_RESIZE_TOPLEFT = (UInt32)(2)
const SDL_HITTEST_RESIZE_TOP = (UInt32)(3)
const SDL_HITTEST_RESIZE_TOPRIGHT = (UInt32)(4)
const SDL_HITTEST_RESIZE_RIGHT = (UInt32)(5)
const SDL_HITTEST_RESIZE_BOTTOMRIGHT = (UInt32)(6)
const SDL_HITTEST_RESIZE_BOTTOM = (UInt32)(7)
const SDL_HITTEST_RESIZE_BOTTOMLEFT = (UInt32)(8)
const SDL_HITTEST_RESIZE_LEFT = (UInt32)(9)
# end enum ANONYMOUS_20

const SDL_HitTestResult = Void
const SDL_HitTest = Ptr{Void}

# begin enum ANONYMOUS_21
const ANONYMOUS_21 = UInt32
const SDL_SCANCODE_UNKNOWN = (UInt32)(0)
const SDL_SCANCODE_A = (UInt32)(4)
const SDL_SCANCODE_B = (UInt32)(5)
const SDL_SCANCODE_C = (UInt32)(6)
const SDL_SCANCODE_D = (UInt32)(7)
const SDL_SCANCODE_E = (UInt32)(8)
const SDL_SCANCODE_F = (UInt32)(9)
const SDL_SCANCODE_G = (UInt32)(10)
const SDL_SCANCODE_H = (UInt32)(11)
const SDL_SCANCODE_I = (UInt32)(12)
const SDL_SCANCODE_J = (UInt32)(13)
const SDL_SCANCODE_K = (UInt32)(14)
const SDL_SCANCODE_L = (UInt32)(15)
const SDL_SCANCODE_M = (UInt32)(16)
const SDL_SCANCODE_N = (UInt32)(17)
const SDL_SCANCODE_O = (UInt32)(18)
const SDL_SCANCODE_P = (UInt32)(19)
const SDL_SCANCODE_Q = (UInt32)(20)
const SDL_SCANCODE_R = (UInt32)(21)
const SDL_SCANCODE_S = (UInt32)(22)
const SDL_SCANCODE_T = (UInt32)(23)
const SDL_SCANCODE_U = (UInt32)(24)
const SDL_SCANCODE_V = (UInt32)(25)
const SDL_SCANCODE_W = (UInt32)(26)
const SDL_SCANCODE_X = (UInt32)(27)
const SDL_SCANCODE_Y = (UInt32)(28)
const SDL_SCANCODE_Z = (UInt32)(29)
const SDL_SCANCODE_1 = (UInt32)(30)
const SDL_SCANCODE_2 = (UInt32)(31)
const SDL_SCANCODE_3 = (UInt32)(32)
const SDL_SCANCODE_4 = (UInt32)(33)
const SDL_SCANCODE_5 = (UInt32)(34)
const SDL_SCANCODE_6 = (UInt32)(35)
const SDL_SCANCODE_7 = (UInt32)(36)
const SDL_SCANCODE_8 = (UInt32)(37)
const SDL_SCANCODE_9 = (UInt32)(38)
const SDL_SCANCODE_0 = (UInt32)(39)
const SDL_SCANCODE_RETURN = (UInt32)(40)
const SDL_SCANCODE_ESCAPE = (UInt32)(41)
const SDL_SCANCODE_BACKSPACE = (UInt32)(42)
const SDL_SCANCODE_TAB = (UInt32)(43)
const SDL_SCANCODE_SPACE = (UInt32)(44)
const SDL_SCANCODE_MINUS = (UInt32)(45)
const SDL_SCANCODE_EQUALS = (UInt32)(46)
const SDL_SCANCODE_LEFTBRACKET = (UInt32)(47)
const SDL_SCANCODE_RIGHTBRACKET = (UInt32)(48)
const SDL_SCANCODE_BACKSLASH = (UInt32)(49)
const SDL_SCANCODE_NONUSHASH = (UInt32)(50)
const SDL_SCANCODE_SEMICOLON = (UInt32)(51)
const SDL_SCANCODE_APOSTROPHE = (UInt32)(52)
const SDL_SCANCODE_GRAVE = (UInt32)(53)
const SDL_SCANCODE_COMMA = (UInt32)(54)
const SDL_SCANCODE_PERIOD = (UInt32)(55)
const SDL_SCANCODE_SLASH = (UInt32)(56)
const SDL_SCANCODE_CAPSLOCK = (UInt32)(57)
const SDL_SCANCODE_F1 = (UInt32)(58)
const SDL_SCANCODE_F2 = (UInt32)(59)
const SDL_SCANCODE_F3 = (UInt32)(60)
const SDL_SCANCODE_F4 = (UInt32)(61)
const SDL_SCANCODE_F5 = (UInt32)(62)
const SDL_SCANCODE_F6 = (UInt32)(63)
const SDL_SCANCODE_F7 = (UInt32)(64)
const SDL_SCANCODE_F8 = (UInt32)(65)
const SDL_SCANCODE_F9 = (UInt32)(66)
const SDL_SCANCODE_F10 = (UInt32)(67)
const SDL_SCANCODE_F11 = (UInt32)(68)
const SDL_SCANCODE_F12 = (UInt32)(69)
const SDL_SCANCODE_PRINTSCREEN = (UInt32)(70)
const SDL_SCANCODE_SCROLLLOCK = (UInt32)(71)
const SDL_SCANCODE_PAUSE = (UInt32)(72)
const SDL_SCANCODE_INSERT = (UInt32)(73)
const SDL_SCANCODE_HOME = (UInt32)(74)
const SDL_SCANCODE_PAGEUP = (UInt32)(75)
const SDL_SCANCODE_DELETE = (UInt32)(76)
const SDL_SCANCODE_END = (UInt32)(77)
const SDL_SCANCODE_PAGEDOWN = (UInt32)(78)
const SDL_SCANCODE_RIGHT = (UInt32)(79)
const SDL_SCANCODE_LEFT = (UInt32)(80)
const SDL_SCANCODE_DOWN = (UInt32)(81)
const SDL_SCANCODE_UP = (UInt32)(82)
const SDL_SCANCODE_NUMLOCKCLEAR = (UInt32)(83)
const SDL_SCANCODE_KP_DIVIDE = (UInt32)(84)
const SDL_SCANCODE_KP_MULTIPLY = (UInt32)(85)
const SDL_SCANCODE_KP_MINUS = (UInt32)(86)
const SDL_SCANCODE_KP_PLUS = (UInt32)(87)
const SDL_SCANCODE_KP_ENTER = (UInt32)(88)
const SDL_SCANCODE_KP_1 = (UInt32)(89)
const SDL_SCANCODE_KP_2 = (UInt32)(90)
const SDL_SCANCODE_KP_3 = (UInt32)(91)
const SDL_SCANCODE_KP_4 = (UInt32)(92)
const SDL_SCANCODE_KP_5 = (UInt32)(93)
const SDL_SCANCODE_KP_6 = (UInt32)(94)
const SDL_SCANCODE_KP_7 = (UInt32)(95)
const SDL_SCANCODE_KP_8 = (UInt32)(96)
const SDL_SCANCODE_KP_9 = (UInt32)(97)
const SDL_SCANCODE_KP_0 = (UInt32)(98)
const SDL_SCANCODE_KP_PERIOD = (UInt32)(99)
const SDL_SCANCODE_NONUSBACKSLASH = (UInt32)(100)
const SDL_SCANCODE_APPLICATION = (UInt32)(101)
const SDL_SCANCODE_POWER = (UInt32)(102)
const SDL_SCANCODE_KP_EQUALS = (UInt32)(103)
const SDL_SCANCODE_F13 = (UInt32)(104)
const SDL_SCANCODE_F14 = (UInt32)(105)
const SDL_SCANCODE_F15 = (UInt32)(106)
const SDL_SCANCODE_F16 = (UInt32)(107)
const SDL_SCANCODE_F17 = (UInt32)(108)
const SDL_SCANCODE_F18 = (UInt32)(109)
const SDL_SCANCODE_F19 = (UInt32)(110)
const SDL_SCANCODE_F20 = (UInt32)(111)
const SDL_SCANCODE_F21 = (UInt32)(112)
const SDL_SCANCODE_F22 = (UInt32)(113)
const SDL_SCANCODE_F23 = (UInt32)(114)
const SDL_SCANCODE_F24 = (UInt32)(115)
const SDL_SCANCODE_EXECUTE = (UInt32)(116)
const SDL_SCANCODE_HELP = (UInt32)(117)
const SDL_SCANCODE_MENU = (UInt32)(118)
const SDL_SCANCODE_SELECT = (UInt32)(119)
const SDL_SCANCODE_STOP = (UInt32)(120)
const SDL_SCANCODE_AGAIN = (UInt32)(121)
const SDL_SCANCODE_UNDO = (UInt32)(122)
const SDL_SCANCODE_CUT = (UInt32)(123)
const SDL_SCANCODE_COPY = (UInt32)(124)
const SDL_SCANCODE_PASTE = (UInt32)(125)
const SDL_SCANCODE_FIND = (UInt32)(126)
const SDL_SCANCODE_MUTE = (UInt32)(127)
const SDL_SCANCODE_VOLUMEUP = (UInt32)(128)
const SDL_SCANCODE_VOLUMEDOWN = (UInt32)(129)
const SDL_SCANCODE_KP_COMMA = (UInt32)(133)
const SDL_SCANCODE_KP_EQUALSAS400 = (UInt32)(134)
const SDL_SCANCODE_INTERNATIONAL1 = (UInt32)(135)
const SDL_SCANCODE_INTERNATIONAL2 = (UInt32)(136)
const SDL_SCANCODE_INTERNATIONAL3 = (UInt32)(137)
const SDL_SCANCODE_INTERNATIONAL4 = (UInt32)(138)
const SDL_SCANCODE_INTERNATIONAL5 = (UInt32)(139)
const SDL_SCANCODE_INTERNATIONAL6 = (UInt32)(140)
const SDL_SCANCODE_INTERNATIONAL7 = (UInt32)(141)
const SDL_SCANCODE_INTERNATIONAL8 = (UInt32)(142)
const SDL_SCANCODE_INTERNATIONAL9 = (UInt32)(143)
const SDL_SCANCODE_LANG1 = (UInt32)(144)
const SDL_SCANCODE_LANG2 = (UInt32)(145)
const SDL_SCANCODE_LANG3 = (UInt32)(146)
const SDL_SCANCODE_LANG4 = (UInt32)(147)
const SDL_SCANCODE_LANG5 = (UInt32)(148)
const SDL_SCANCODE_LANG6 = (UInt32)(149)
const SDL_SCANCODE_LANG7 = (UInt32)(150)
const SDL_SCANCODE_LANG8 = (UInt32)(151)
const SDL_SCANCODE_LANG9 = (UInt32)(152)
const SDL_SCANCODE_ALTERASE = (UInt32)(153)
const SDL_SCANCODE_SYSREQ = (UInt32)(154)
const SDL_SCANCODE_CANCEL = (UInt32)(155)
const SDL_SCANCODE_CLEAR = (UInt32)(156)
const SDL_SCANCODE_PRIOR = (UInt32)(157)
const SDL_SCANCODE_RETURN2 = (UInt32)(158)
const SDL_SCANCODE_SEPARATOR = (UInt32)(159)
const SDL_SCANCODE_OUT = (UInt32)(160)
const SDL_SCANCODE_OPER = (UInt32)(161)
const SDL_SCANCODE_CLEARAGAIN = (UInt32)(162)
const SDL_SCANCODE_CRSEL = (UInt32)(163)
const SDL_SCANCODE_EXSEL = (UInt32)(164)
const SDL_SCANCODE_KP_00 = (UInt32)(176)
const SDL_SCANCODE_KP_000 = (UInt32)(177)
const SDL_SCANCODE_THOUSANDSSEPARATOR = (UInt32)(178)
const SDL_SCANCODE_DECIMALSEPARATOR = (UInt32)(179)
const SDL_SCANCODE_CURRENCYUNIT = (UInt32)(180)
const SDL_SCANCODE_CURRENCYSUBUNIT = (UInt32)(181)
const SDL_SCANCODE_KP_LEFTPAREN = (UInt32)(182)
const SDL_SCANCODE_KP_RIGHTPAREN = (UInt32)(183)
const SDL_SCANCODE_KP_LEFTBRACE = (UInt32)(184)
const SDL_SCANCODE_KP_RIGHTBRACE = (UInt32)(185)
const SDL_SCANCODE_KP_TAB = (UInt32)(186)
const SDL_SCANCODE_KP_BACKSPACE = (UInt32)(187)
const SDL_SCANCODE_KP_A = (UInt32)(188)
const SDL_SCANCODE_KP_B = (UInt32)(189)
const SDL_SCANCODE_KP_C = (UInt32)(190)
const SDL_SCANCODE_KP_D = (UInt32)(191)
const SDL_SCANCODE_KP_E = (UInt32)(192)
const SDL_SCANCODE_KP_F = (UInt32)(193)
const SDL_SCANCODE_KP_XOR = (UInt32)(194)
const SDL_SCANCODE_KP_POWER = (UInt32)(195)
const SDL_SCANCODE_KP_PERCENT = (UInt32)(196)
const SDL_SCANCODE_KP_LESS = (UInt32)(197)
const SDL_SCANCODE_KP_GREATER = (UInt32)(198)
const SDL_SCANCODE_KP_AMPERSAND = (UInt32)(199)
const SDL_SCANCODE_KP_DBLAMPERSAND = (UInt32)(200)
const SDL_SCANCODE_KP_VERTICALBAR = (UInt32)(201)
const SDL_SCANCODE_KP_DBLVERTICALBAR = (UInt32)(202)
const SDL_SCANCODE_KP_COLON = (UInt32)(203)
const SDL_SCANCODE_KP_HASH = (UInt32)(204)
const SDL_SCANCODE_KP_SPACE = (UInt32)(205)
const SDL_SCANCODE_KP_AT = (UInt32)(206)
const SDL_SCANCODE_KP_EXCLAM = (UInt32)(207)
const SDL_SCANCODE_KP_MEMSTORE = (UInt32)(208)
const SDL_SCANCODE_KP_MEMRECALL = (UInt32)(209)
const SDL_SCANCODE_KP_MEMCLEAR = (UInt32)(210)
const SDL_SCANCODE_KP_MEMADD = (UInt32)(211)
const SDL_SCANCODE_KP_MEMSUBTRACT = (UInt32)(212)
const SDL_SCANCODE_KP_MEMMULTIPLY = (UInt32)(213)
const SDL_SCANCODE_KP_MEMDIVIDE = (UInt32)(214)
const SDL_SCANCODE_KP_PLUSMINUS = (UInt32)(215)
const SDL_SCANCODE_KP_CLEAR = (UInt32)(216)
const SDL_SCANCODE_KP_CLEARENTRY = (UInt32)(217)
const SDL_SCANCODE_KP_BINARY = (UInt32)(218)
const SDL_SCANCODE_KP_OCTAL = (UInt32)(219)
const SDL_SCANCODE_KP_DECIMAL = (UInt32)(220)
const SDL_SCANCODE_KP_HEXADECIMAL = (UInt32)(221)
const SDL_SCANCODE_LCTRL = (UInt32)(224)
const SDL_SCANCODE_LSHIFT = (UInt32)(225)
const SDL_SCANCODE_LALT = (UInt32)(226)
const SDL_SCANCODE_LGUI = (UInt32)(227)
const SDL_SCANCODE_RCTRL = (UInt32)(228)
const SDL_SCANCODE_RSHIFT = (UInt32)(229)
const SDL_SCANCODE_RALT = (UInt32)(230)
const SDL_SCANCODE_RGUI = (UInt32)(231)
const SDL_SCANCODE_MODE = (UInt32)(257)
const SDL_SCANCODE_AUDIONEXT = (UInt32)(258)
const SDL_SCANCODE_AUDIOPREV = (UInt32)(259)
const SDL_SCANCODE_AUDIOSTOP = (UInt32)(260)
const SDL_SCANCODE_AUDIOPLAY = (UInt32)(261)
const SDL_SCANCODE_AUDIOMUTE = (UInt32)(262)
const SDL_SCANCODE_MEDIASELECT = (UInt32)(263)
const SDL_SCANCODE_WWW = (UInt32)(264)
const SDL_SCANCODE_MAIL = (UInt32)(265)
const SDL_SCANCODE_CALCULATOR = (UInt32)(266)
const SDL_SCANCODE_COMPUTER = (UInt32)(267)
const SDL_SCANCODE_AC_SEARCH = (UInt32)(268)
const SDL_SCANCODE_AC_HOME = (UInt32)(269)
const SDL_SCANCODE_AC_BACK = (UInt32)(270)
const SDL_SCANCODE_AC_FORWARD = (UInt32)(271)
const SDL_SCANCODE_AC_STOP = (UInt32)(272)
const SDL_SCANCODE_AC_REFRESH = (UInt32)(273)
const SDL_SCANCODE_AC_BOOKMARKS = (UInt32)(274)
const SDL_SCANCODE_BRIGHTNESSDOWN = (UInt32)(275)
const SDL_SCANCODE_BRIGHTNESSUP = (UInt32)(276)
const SDL_SCANCODE_DISPLAYSWITCH = (UInt32)(277)
const SDL_SCANCODE_KBDILLUMTOGGLE = (UInt32)(278)
const SDL_SCANCODE_KBDILLUMDOWN = (UInt32)(279)
const SDL_SCANCODE_KBDILLUMUP = (UInt32)(280)
const SDL_SCANCODE_EJECT = (UInt32)(281)
const SDL_SCANCODE_SLEEP = (UInt32)(282)
const SDL_SCANCODE_APP1 = (UInt32)(283)
const SDL_SCANCODE_APP2 = (UInt32)(284)
const SDL_NUM_SCANCODES = (UInt32)(512)
# end enum ANONYMOUS_21

const SDL_Scancode = Void
const SDL_Keycode = Sint32

# begin enum ANONYMOUS_22
const ANONYMOUS_22 = UInt32
const SDLK_UNKNOWN = (UInt32)(0)
const SDLK_RETURN = (UInt32)(13)
const SDLK_ESCAPE = (UInt32)(27)
const SDLK_BACKSPACE = (UInt32)(8)
const SDLK_TAB = (UInt32)(9)
const SDLK_SPACE = (UInt32)(32)
const SDLK_EXCLAIM = (UInt32)(33)
const SDLK_QUOTEDBL = (UInt32)(34)
const SDLK_HASH = (UInt32)(35)
const SDLK_PERCENT = (UInt32)(37)
const SDLK_DOLLAR = (UInt32)(36)
const SDLK_AMPERSAND = (UInt32)(38)
const SDLK_QUOTE = (UInt32)(39)
const SDLK_LEFTPAREN = (UInt32)(40)
const SDLK_RIGHTPAREN = (UInt32)(41)
const SDLK_ASTERISK = (UInt32)(42)
const SDLK_PLUS = (UInt32)(43)
const SDLK_COMMA = (UInt32)(44)
const SDLK_MINUS = (UInt32)(45)
const SDLK_PERIOD = (UInt32)(46)
const SDLK_SLASH = (UInt32)(47)
const SDLK_0 = (UInt32)(48)
const SDLK_1 = (UInt32)(49)
const SDLK_2 = (UInt32)(50)
const SDLK_3 = (UInt32)(51)
const SDLK_4 = (UInt32)(52)
const SDLK_5 = (UInt32)(53)
const SDLK_6 = (UInt32)(54)
const SDLK_7 = (UInt32)(55)
const SDLK_8 = (UInt32)(56)
const SDLK_9 = (UInt32)(57)
const SDLK_COLON = (UInt32)(58)
const SDLK_SEMICOLON = (UInt32)(59)
const SDLK_LESS = (UInt32)(60)
const SDLK_EQUALS = (UInt32)(61)
const SDLK_GREATER = (UInt32)(62)
const SDLK_QUESTION = (UInt32)(63)
const SDLK_AT = (UInt32)(64)
const SDLK_LEFTBRACKET = (UInt32)(91)
const SDLK_BACKSLASH = (UInt32)(92)
const SDLK_RIGHTBRACKET = (UInt32)(93)
const SDLK_CARET = (UInt32)(94)
const SDLK_UNDERSCORE = (UInt32)(95)
const SDLK_BACKQUOTE = (UInt32)(96)
const SDLK_a = (UInt32)(97)
const SDLK_b = (UInt32)(98)
const SDLK_c = (UInt32)(99)
const SDLK_d = (UInt32)(100)
const SDLK_e = (UInt32)(101)
const SDLK_f = (UInt32)(102)
const SDLK_g = (UInt32)(103)
const SDLK_h = (UInt32)(104)
const SDLK_i = (UInt32)(105)
const SDLK_j = (UInt32)(106)
const SDLK_k = (UInt32)(107)
const SDLK_l = (UInt32)(108)
const SDLK_m = (UInt32)(109)
const SDLK_n = (UInt32)(110)
const SDLK_o = (UInt32)(111)
const SDLK_p = (UInt32)(112)
const SDLK_q = (UInt32)(113)
const SDLK_r = (UInt32)(114)
const SDLK_s = (UInt32)(115)
const SDLK_t = (UInt32)(116)
const SDLK_u = (UInt32)(117)
const SDLK_v = (UInt32)(118)
const SDLK_w = (UInt32)(119)
const SDLK_x = (UInt32)(120)
const SDLK_y = (UInt32)(121)
const SDLK_z = (UInt32)(122)
const SDLK_CAPSLOCK = (UInt32)(1073741881)
const SDLK_F1 = (UInt32)(1073741882)
const SDLK_F2 = (UInt32)(1073741883)
const SDLK_F3 = (UInt32)(1073741884)
const SDLK_F4 = (UInt32)(1073741885)
const SDLK_F5 = (UInt32)(1073741886)
const SDLK_F6 = (UInt32)(1073741887)
const SDLK_F7 = (UInt32)(1073741888)
const SDLK_F8 = (UInt32)(1073741889)
const SDLK_F9 = (UInt32)(1073741890)
const SDLK_F10 = (UInt32)(1073741891)
const SDLK_F11 = (UInt32)(1073741892)
const SDLK_F12 = (UInt32)(1073741893)
const SDLK_PRINTSCREEN = (UInt32)(1073741894)
const SDLK_SCROLLLOCK = (UInt32)(1073741895)
const SDLK_PAUSE = (UInt32)(1073741896)
const SDLK_INSERT = (UInt32)(1073741897)
const SDLK_HOME = (UInt32)(1073741898)
const SDLK_PAGEUP = (UInt32)(1073741899)
const SDLK_DELETE = (UInt32)(127)
const SDLK_END = (UInt32)(1073741901)
const SDLK_PAGEDOWN = (UInt32)(1073741902)
const SDLK_RIGHT = (UInt32)(1073741903)
const SDLK_LEFT = (UInt32)(1073741904)
const SDLK_DOWN = (UInt32)(1073741905)
const SDLK_UP = (UInt32)(1073741906)
const SDLK_NUMLOCKCLEAR = (UInt32)(1073741907)
const SDLK_KP_DIVIDE = (UInt32)(1073741908)
const SDLK_KP_MULTIPLY = (UInt32)(1073741909)
const SDLK_KP_MINUS = (UInt32)(1073741910)
const SDLK_KP_PLUS = (UInt32)(1073741911)
const SDLK_KP_ENTER = (UInt32)(1073741912)
const SDLK_KP_1 = (UInt32)(1073741913)
const SDLK_KP_2 = (UInt32)(1073741914)
const SDLK_KP_3 = (UInt32)(1073741915)
const SDLK_KP_4 = (UInt32)(1073741916)
const SDLK_KP_5 = (UInt32)(1073741917)
const SDLK_KP_6 = (UInt32)(1073741918)
const SDLK_KP_7 = (UInt32)(1073741919)
const SDLK_KP_8 = (UInt32)(1073741920)
const SDLK_KP_9 = (UInt32)(1073741921)
const SDLK_KP_0 = (UInt32)(1073741922)
const SDLK_KP_PERIOD = (UInt32)(1073741923)
const SDLK_APPLICATION = (UInt32)(1073741925)
const SDLK_POWER = (UInt32)(1073741926)
const SDLK_KP_EQUALS = (UInt32)(1073741927)
const SDLK_F13 = (UInt32)(1073741928)
const SDLK_F14 = (UInt32)(1073741929)
const SDLK_F15 = (UInt32)(1073741930)
const SDLK_F16 = (UInt32)(1073741931)
const SDLK_F17 = (UInt32)(1073741932)
const SDLK_F18 = (UInt32)(1073741933)
const SDLK_F19 = (UInt32)(1073741934)
const SDLK_F20 = (UInt32)(1073741935)
const SDLK_F21 = (UInt32)(1073741936)
const SDLK_F22 = (UInt32)(1073741937)
const SDLK_F23 = (UInt32)(1073741938)
const SDLK_F24 = (UInt32)(1073741939)
const SDLK_EXECUTE = (UInt32)(1073741940)
const SDLK_HELP = (UInt32)(1073741941)
const SDLK_MENU = (UInt32)(1073741942)
const SDLK_SELECT = (UInt32)(1073741943)
const SDLK_STOP = (UInt32)(1073741944)
const SDLK_AGAIN = (UInt32)(1073741945)
const SDLK_UNDO = (UInt32)(1073741946)
const SDLK_CUT = (UInt32)(1073741947)
const SDLK_COPY = (UInt32)(1073741948)
const SDLK_PASTE = (UInt32)(1073741949)
const SDLK_FIND = (UInt32)(1073741950)
const SDLK_MUTE = (UInt32)(1073741951)
const SDLK_VOLUMEUP = (UInt32)(1073741952)
const SDLK_VOLUMEDOWN = (UInt32)(1073741953)
const SDLK_KP_COMMA = (UInt32)(1073741957)
const SDLK_KP_EQUALSAS400 = (UInt32)(1073741958)
const SDLK_ALTERASE = (UInt32)(1073741977)
const SDLK_SYSREQ = (UInt32)(1073741978)
const SDLK_CANCEL = (UInt32)(1073741979)
const SDLK_CLEAR = (UInt32)(1073741980)
const SDLK_PRIOR = (UInt32)(1073741981)
const SDLK_RETURN2 = (UInt32)(1073741982)
const SDLK_SEPARATOR = (UInt32)(1073741983)
const SDLK_OUT = (UInt32)(1073741984)
const SDLK_OPER = (UInt32)(1073741985)
const SDLK_CLEARAGAIN = (UInt32)(1073741986)
const SDLK_CRSEL = (UInt32)(1073741987)
const SDLK_EXSEL = (UInt32)(1073741988)
const SDLK_KP_00 = (UInt32)(1073742000)
const SDLK_KP_000 = (UInt32)(1073742001)
const SDLK_THOUSANDSSEPARATOR = (UInt32)(1073742002)
const SDLK_DECIMALSEPARATOR = (UInt32)(1073742003)
const SDLK_CURRENCYUNIT = (UInt32)(1073742004)
const SDLK_CURRENCYSUBUNIT = (UInt32)(1073742005)
const SDLK_KP_LEFTPAREN = (UInt32)(1073742006)
const SDLK_KP_RIGHTPAREN = (UInt32)(1073742007)
const SDLK_KP_LEFTBRACE = (UInt32)(1073742008)
const SDLK_KP_RIGHTBRACE = (UInt32)(1073742009)
const SDLK_KP_TAB = (UInt32)(1073742010)
const SDLK_KP_BACKSPACE = (UInt32)(1073742011)
const SDLK_KP_A = (UInt32)(1073742012)
const SDLK_KP_B = (UInt32)(1073742013)
const SDLK_KP_C = (UInt32)(1073742014)
const SDLK_KP_D = (UInt32)(1073742015)
const SDLK_KP_E = (UInt32)(1073742016)
const SDLK_KP_F = (UInt32)(1073742017)
const SDLK_KP_XOR = (UInt32)(1073742018)
const SDLK_KP_POWER = (UInt32)(1073742019)
const SDLK_KP_PERCENT = (UInt32)(1073742020)
const SDLK_KP_LESS = (UInt32)(1073742021)
const SDLK_KP_GREATER = (UInt32)(1073742022)
const SDLK_KP_AMPERSAND = (UInt32)(1073742023)
const SDLK_KP_DBLAMPERSAND = (UInt32)(1073742024)
const SDLK_KP_VERTICALBAR = (UInt32)(1073742025)
const SDLK_KP_DBLVERTICALBAR = (UInt32)(1073742026)
const SDLK_KP_COLON = (UInt32)(1073742027)
const SDLK_KP_HASH = (UInt32)(1073742028)
const SDLK_KP_SPACE = (UInt32)(1073742029)
const SDLK_KP_AT = (UInt32)(1073742030)
const SDLK_KP_EXCLAM = (UInt32)(1073742031)
const SDLK_KP_MEMSTORE = (UInt32)(1073742032)
const SDLK_KP_MEMRECALL = (UInt32)(1073742033)
const SDLK_KP_MEMCLEAR = (UInt32)(1073742034)
const SDLK_KP_MEMADD = (UInt32)(1073742035)
const SDLK_KP_MEMSUBTRACT = (UInt32)(1073742036)
const SDLK_KP_MEMMULTIPLY = (UInt32)(1073742037)
const SDLK_KP_MEMDIVIDE = (UInt32)(1073742038)
const SDLK_KP_PLUSMINUS = (UInt32)(1073742039)
const SDLK_KP_CLEAR = (UInt32)(1073742040)
const SDLK_KP_CLEARENTRY = (UInt32)(1073742041)
const SDLK_KP_BINARY = (UInt32)(1073742042)
const SDLK_KP_OCTAL = (UInt32)(1073742043)
const SDLK_KP_DECIMAL = (UInt32)(1073742044)
const SDLK_KP_HEXADECIMAL = (UInt32)(1073742045)
const SDLK_LCTRL = (UInt32)(1073742048)
const SDLK_LSHIFT = (UInt32)(1073742049)
const SDLK_LALT = (UInt32)(1073742050)
const SDLK_LGUI = (UInt32)(1073742051)
const SDLK_RCTRL = (UInt32)(1073742052)
const SDLK_RSHIFT = (UInt32)(1073742053)
const SDLK_RALT = (UInt32)(1073742054)
const SDLK_RGUI = (UInt32)(1073742055)
const SDLK_MODE = (UInt32)(1073742081)
const SDLK_AUDIONEXT = (UInt32)(1073742082)
const SDLK_AUDIOPREV = (UInt32)(1073742083)
const SDLK_AUDIOSTOP = (UInt32)(1073742084)
const SDLK_AUDIOPLAY = (UInt32)(1073742085)
const SDLK_AUDIOMUTE = (UInt32)(1073742086)
const SDLK_MEDIASELECT = (UInt32)(1073742087)
const SDLK_WWW = (UInt32)(1073742088)
const SDLK_MAIL = (UInt32)(1073742089)
const SDLK_CALCULATOR = (UInt32)(1073742090)
const SDLK_COMPUTER = (UInt32)(1073742091)
const SDLK_AC_SEARCH = (UInt32)(1073742092)
const SDLK_AC_HOME = (UInt32)(1073742093)
const SDLK_AC_BACK = (UInt32)(1073742094)
const SDLK_AC_FORWARD = (UInt32)(1073742095)
const SDLK_AC_STOP = (UInt32)(1073742096)
const SDLK_AC_REFRESH = (UInt32)(1073742097)
const SDLK_AC_BOOKMARKS = (UInt32)(1073742098)
const SDLK_BRIGHTNESSDOWN = (UInt32)(1073742099)
const SDLK_BRIGHTNESSUP = (UInt32)(1073742100)
const SDLK_DISPLAYSWITCH = (UInt32)(1073742101)
const SDLK_KBDILLUMTOGGLE = (UInt32)(1073742102)
const SDLK_KBDILLUMDOWN = (UInt32)(1073742103)
const SDLK_KBDILLUMUP = (UInt32)(1073742104)
const SDLK_EJECT = (UInt32)(1073742105)
const SDLK_SLEEP = (UInt32)(1073742106)
# end enum ANONYMOUS_22

const SDL_Keymod = Void

mutable struct SDL_Keysym
    scancode::SDL_Scancode
    sym::SDL_Keycode
    mod::Uint16
    unused::Uint32
end

mutable struct SDL_Cursor
end

# begin enum ANONYMOUS_24
const ANONYMOUS_24 = UInt32
const SDL_SYSTEM_CURSOR_ARROW = (UInt32)(0)
const SDL_SYSTEM_CURSOR_IBEAM = (UInt32)(1)
const SDL_SYSTEM_CURSOR_WAIT = (UInt32)(2)
const SDL_SYSTEM_CURSOR_CROSSHAIR = (UInt32)(3)
const SDL_SYSTEM_CURSOR_WAITARROW = (UInt32)(4)
const SDL_SYSTEM_CURSOR_SIZENWSE = (UInt32)(5)
const SDL_SYSTEM_CURSOR_SIZENESW = (UInt32)(6)
const SDL_SYSTEM_CURSOR_SIZEWE = (UInt32)(7)
const SDL_SYSTEM_CURSOR_SIZENS = (UInt32)(8)
const SDL_SYSTEM_CURSOR_SIZEALL = (UInt32)(9)
const SDL_SYSTEM_CURSOR_NO = (UInt32)(10)
const SDL_SYSTEM_CURSOR_HAND = (UInt32)(11)
const SDL_NUM_SYSTEM_CURSORS = (UInt32)(12)
# end enum ANONYMOUS_24

const SDL_SystemCursor = Void

# begin enum ANONYMOUS_25
const ANONYMOUS_25 = UInt32
const SDL_MOUSEWHEEL_NORMAL = (UInt32)(0)
const SDL_MOUSEWHEEL_FLIPPED = (UInt32)(1)
# end enum ANONYMOUS_25

const SDL_MouseWheelDirection = Void

mutable struct _SDL_Joystick
end

const SDL_Joystick = Void
const SDL_JoystickGUID = Void
const SDL_JoystickID = Sint32

# begin enum ANONYMOUS_26
const ANONYMOUS_26 = Cint
const SDL_JOYSTICK_POWER_UNKNOWN = (Int32)(-1)
const SDL_JOYSTICK_POWER_EMPTY = (Int32)(0)
const SDL_JOYSTICK_POWER_LOW = (Int32)(1)
const SDL_JOYSTICK_POWER_MEDIUM = (Int32)(2)
const SDL_JOYSTICK_POWER_FULL = (Int32)(3)
const SDL_JOYSTICK_POWER_WIRED = (Int32)(4)
const SDL_JOYSTICK_POWER_MAX = (Int32)(5)
# end enum ANONYMOUS_26

const SDL_JoystickPowerLevel = Void

mutable struct _SDL_GameController
end

const SDL_GameController = Void

# begin enum ANONYMOUS_27
const ANONYMOUS_27 = UInt32
const SDL_CONTROLLER_BINDTYPE_NONE = (UInt32)(0)
const SDL_CONTROLLER_BINDTYPE_BUTTON = (UInt32)(1)
const SDL_CONTROLLER_BINDTYPE_AXIS = (UInt32)(2)
const SDL_CONTROLLER_BINDTYPE_HAT = (UInt32)(3)
# end enum ANONYMOUS_27

const SDL_GameControllerBindType = Void

mutable struct SDL_GameControllerButtonBind
    bindType::SDL_GameControllerBindType
    value::Void
end

# begin enum ANONYMOUS_28
const ANONYMOUS_28 = Cint
const SDL_CONTROLLER_AXIS_INVALID = (Int32)(-1)
const SDL_CONTROLLER_AXIS_LEFTX = (Int32)(0)
const SDL_CONTROLLER_AXIS_LEFTY = (Int32)(1)
const SDL_CONTROLLER_AXIS_RIGHTX = (Int32)(2)
const SDL_CONTROLLER_AXIS_RIGHTY = (Int32)(3)
const SDL_CONTROLLER_AXIS_TRIGGERLEFT = (Int32)(4)
const SDL_CONTROLLER_AXIS_TRIGGERRIGHT = (Int32)(5)
const SDL_CONTROLLER_AXIS_MAX = (Int32)(6)
# end enum ANONYMOUS_28

const SDL_GameControllerAxis = Void

# begin enum ANONYMOUS_29
const ANONYMOUS_29 = Cint
const SDL_CONTROLLER_BUTTON_INVALID = (Int32)(-1)
const SDL_CONTROLLER_BUTTON_A = (Int32)(0)
const SDL_CONTROLLER_BUTTON_B = (Int32)(1)
const SDL_CONTROLLER_BUTTON_X = (Int32)(2)
const SDL_CONTROLLER_BUTTON_Y = (Int32)(3)
const SDL_CONTROLLER_BUTTON_BACK = (Int32)(4)
const SDL_CONTROLLER_BUTTON_GUIDE = (Int32)(5)
const SDL_CONTROLLER_BUTTON_START = (Int32)(6)
const SDL_CONTROLLER_BUTTON_LEFTSTICK = (Int32)(7)
const SDL_CONTROLLER_BUTTON_RIGHTSTICK = (Int32)(8)
const SDL_CONTROLLER_BUTTON_LEFTSHOULDER = (Int32)(9)
const SDL_CONTROLLER_BUTTON_RIGHTSHOULDER = (Int32)(10)
const SDL_CONTROLLER_BUTTON_DPAD_UP = (Int32)(11)
const SDL_CONTROLLER_BUTTON_DPAD_DOWN = (Int32)(12)
const SDL_CONTROLLER_BUTTON_DPAD_LEFT = (Int32)(13)
const SDL_CONTROLLER_BUTTON_DPAD_RIGHT = (Int32)(14)
const SDL_CONTROLLER_BUTTON_MAX = (Int32)(15)
# end enum ANONYMOUS_29

const SDL_GameControllerButton = Void
const SDL_TouchID = Sint64
const SDL_FingerID = Sint64

mutable struct SDL_Finger
    id::SDL_FingerID
    x::Cfloat
    y::Cfloat
    pressure::Cfloat
end

const SDL_GestureID = Sint64

# begin enum ANONYMOUS_30
const ANONYMOUS_30 = UInt32
const SDL_FIRSTEVENT = (UInt32)(0)
const SDL_QUIT = (UInt32)(256)
const SDL_APP_TERMINATING = (UInt32)(257)
const SDL_APP_LOWMEMORY = (UInt32)(258)
const SDL_APP_WILLENTERBACKGROUND = (UInt32)(259)
const SDL_APP_DIDENTERBACKGROUND = (UInt32)(260)
const SDL_APP_WILLENTERFOREGROUND = (UInt32)(261)
const SDL_APP_DIDENTERFOREGROUND = (UInt32)(262)
const SDL_WINDOWEVENT = (UInt32)(512)
const SDL_SYSWMEVENT = (UInt32)(513)
const SDL_KEYDOWN = (UInt32)(768)
const SDL_KEYUP = (UInt32)(769)
const SDL_TEXTEDITING = (UInt32)(770)
const SDL_TEXTINPUT = (UInt32)(771)
const SDL_KEYMAPCHANGED = (UInt32)(772)
const SDL_MOUSEMOTION = (UInt32)(1024)
const SDL_MOUSEBUTTONDOWN = (UInt32)(1025)
const SDL_MOUSEBUTTONUP = (UInt32)(1026)
const SDL_MOUSEWHEEL = (UInt32)(1027)
const SDL_JOYAXISMOTION = (UInt32)(1536)
const SDL_JOYBALLMOTION = (UInt32)(1537)
const SDL_JOYHATMOTION = (UInt32)(1538)
const SDL_JOYBUTTONDOWN = (UInt32)(1539)
const SDL_JOYBUTTONUP = (UInt32)(1540)
const SDL_JOYDEVICEADDED = (UInt32)(1541)
const SDL_JOYDEVICEREMOVED = (UInt32)(1542)
const SDL_CONTROLLERAXISMOTION = (UInt32)(1616)
const SDL_CONTROLLERBUTTONDOWN = (UInt32)(1617)
const SDL_CONTROLLERBUTTONUP = (UInt32)(1618)
const SDL_CONTROLLERDEVICEADDED = (UInt32)(1619)
const SDL_CONTROLLERDEVICEREMOVED = (UInt32)(1620)
const SDL_CONTROLLERDEVICEREMAPPED = (UInt32)(1621)
const SDL_FINGERDOWN = (UInt32)(1792)
const SDL_FINGERUP = (UInt32)(1793)
const SDL_FINGERMOTION = (UInt32)(1794)
const SDL_DOLLARGESTURE = (UInt32)(2048)
const SDL_DOLLARRECORD = (UInt32)(2049)
const SDL_MULTIGESTURE = (UInt32)(2050)
const SDL_CLIPBOARDUPDATE = (UInt32)(2304)
const SDL_DROPFILE = (UInt32)(4096)
const SDL_DROPTEXT = (UInt32)(4097)
const SDL_DROPBEGIN = (UInt32)(4098)
const SDL_DROPCOMPLETE = (UInt32)(4099)
const SDL_AUDIODEVICEADDED = (UInt32)(4352)
const SDL_AUDIODEVICEREMOVED = (UInt32)(4353)
const SDL_RENDER_TARGETS_RESET = (UInt32)(8192)
const SDL_RENDER_DEVICE_RESET = (UInt32)(8193)
const SDL_USEREVENT = (UInt32)(32768)
const SDL_LASTEVENT = (UInt32)(65535)
# end enum ANONYMOUS_30

const SDL_EventType = Void

mutable struct SDL_CommonEvent
    _type::Uint32
    timestamp::Uint32
end

mutable struct SDL_WindowEvent
    _type::Uint32
    timestamp::Uint32
    windowID::Uint32
    event::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    data1::Sint32
    data2::Sint32
end

mutable struct SDL_KeyboardEvent
    _type::Uint32
    timestamp::Uint32
    windowID::Uint32
    state::Uint8
    repeat::Uint8
    padding2::Uint8
    padding3::Uint8
    keysym::SDL_Keysym
end

mutable struct SDL_TextEditingEvent
    _type::Uint32
    timestamp::Uint32
    windowID::Uint32
    text::NTuple{32, UInt8}
    start::Sint32
    length::Sint32
end

mutable struct SDL_TextInputEvent
    _type::Uint32
    timestamp::Uint32
    windowID::Uint32
    text::NTuple{32, UInt8}
end

mutable struct SDL_MouseMotionEvent
    _type::Uint32
    timestamp::Uint32
    windowID::Uint32
    which::Uint32
    state::Uint32
    x::Sint32
    y::Sint32
    xrel::Sint32
    yrel::Sint32
end

mutable struct SDL_MouseButtonEvent
    _type::Uint32
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

mutable struct SDL_MouseWheelEvent
    _type::Uint32
    timestamp::Uint32
    windowID::Uint32
    which::Uint32
    x::Sint32
    y::Sint32
    direction::Uint32
end

mutable struct SDL_JoyAxisEvent
    _type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    axis::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    value::Sint16
    padding4::Uint16
end

mutable struct SDL_JoyBallEvent
    _type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    ball::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    xrel::Sint16
    yrel::Sint16
end

mutable struct SDL_JoyHatEvent
    _type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    hat::Uint8
    value::Uint8
    padding1::Uint8
    padding2::Uint8
end

mutable struct SDL_JoyButtonEvent
    _type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    button::Uint8
    state::Uint8
    padding1::Uint8
    padding2::Uint8
end

mutable struct SDL_JoyDeviceEvent
    _type::Uint32
    timestamp::Uint32
    which::Sint32
end

mutable struct SDL_ControllerAxisEvent
    _type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    axis::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    value::Sint16
    padding4::Uint16
end

mutable struct SDL_ControllerButtonEvent
    _type::Uint32
    timestamp::Uint32
    which::SDL_JoystickID
    button::Uint8
    state::Uint8
    padding1::Uint8
    padding2::Uint8
end

mutable struct SDL_ControllerDeviceEvent
    _type::Uint32
    timestamp::Uint32
    which::Sint32
end

mutable struct SDL_AudioDeviceEvent
    _type::Uint32
    timestamp::Uint32
    which::Uint32
    iscapture::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
end

mutable struct SDL_TouchFingerEvent
    _type::Uint32
    timestamp::Uint32
    touchId::SDL_TouchID
    fingerId::SDL_FingerID
    x::Cfloat
    y::Cfloat
    dx::Cfloat
    dy::Cfloat
    pressure::Cfloat
end

mutable struct SDL_MultiGestureEvent
    _type::Uint32
    timestamp::Uint32
    touchId::SDL_TouchID
    dTheta::Cfloat
    dDist::Cfloat
    x::Cfloat
    y::Cfloat
    numFingers::Uint16
    padding::Uint16
end

mutable struct SDL_DollarGestureEvent
    _type::Uint32
    timestamp::Uint32
    touchId::SDL_TouchID
    gestureId::SDL_GestureID
    numFingers::Uint32
    error::Cfloat
    x::Cfloat
    y::Cfloat
end

mutable struct SDL_DropEvent
    _type::Uint32
    timestamp::Uint32
    file::Cstring
    windowID::Uint32
end

mutable struct SDL_QuitEvent
    _type::Uint32
    timestamp::Uint32
end

mutable struct SDL_OSEvent
    _type::Uint32
    timestamp::Uint32
end

mutable struct SDL_UserEvent
    _type::Uint32
    timestamp::Uint32
    windowID::Uint32
    code::Sint32
    data1::Ptr{Void}
    data2::Ptr{Void}
end

mutable struct SDL_SysWMmsg
end

mutable struct SDL_SysWMEvent
    _type::Uint32
    timestamp::Uint32
    msg::Ptr{SDL_SysWMmsg}
end

mutable struct SDL_Event
    _SDL_Event::NTuple{56, Uint8}
end

#const SDL_Event = Void

# begin enum ANONYMOUS_31
const ANONYMOUS_31 = UInt32
const SDL_ADDEVENT = (UInt32)(0)
const SDL_PEEKEVENT = (UInt32)(1)
const SDL_GETEVENT = (UInt32)(2)
# end enum ANONYMOUS_31

const SDL_eventaction = Void
const SDL_EventFilter = Ptr{Void}

mutable struct _SDL_Haptic
end

const SDL_Haptic = Void

mutable struct SDL_HapticDirection
    _type::Uint8
    dir::NTuple{3, Sint32}
end

mutable struct SDL_HapticConstant
    _type::Uint16
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

mutable struct SDL_HapticPeriodic
    _type::Uint16
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

mutable struct SDL_HapticCondition
    _type::Uint16
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

mutable struct SDL_HapticRamp
    _type::Uint16
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

mutable struct SDL_HapticLeftRight
    _type::Uint16
    length::Uint32
    large_magnitude::Uint16
    small_magnitude::Uint16
end

mutable struct SDL_HapticCustom
    _type::Uint16
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

mutable struct SDL_HapticEffect
    _SDL_HapticEffect::Uint16
end

#const SDL_HapticEffect = Void

# begin enum ANONYMOUS_32
const ANONYMOUS_32 = UInt32
const SDL_HINT_DEFAULT = (UInt32)(0)
const SDL_HINT_NORMAL = (UInt32)(1)
const SDL_HINT_OVERRIDE = (UInt32)(2)
# end enum ANONYMOUS_32

const SDL_HintPriority = Void
const SDL_HintCallback = Ptr{Void}

# begin enum ANONYMOUS_33
const ANONYMOUS_33 = UInt32
const SDL_LOG_CATEGORY_APPLICATION = (UInt32)(0)
const SDL_LOG_CATEGORY_ERROR = (UInt32)(1)
const SDL_LOG_CATEGORY_ASSERT = (UInt32)(2)
const SDL_LOG_CATEGORY_SYSTEM = (UInt32)(3)
const SDL_LOG_CATEGORY_AUDIO = (UInt32)(4)
const SDL_LOG_CATEGORY_VIDEO = (UInt32)(5)
const SDL_LOG_CATEGORY_RENDER = (UInt32)(6)
const SDL_LOG_CATEGORY_INPUT = (UInt32)(7)
const SDL_LOG_CATEGORY_TEST = (UInt32)(8)
const SDL_LOG_CATEGORY_RESERVED1 = (UInt32)(9)
const SDL_LOG_CATEGORY_RESERVED2 = (UInt32)(10)
const SDL_LOG_CATEGORY_RESERVED3 = (UInt32)(11)
const SDL_LOG_CATEGORY_RESERVED4 = (UInt32)(12)
const SDL_LOG_CATEGORY_RESERVED5 = (UInt32)(13)
const SDL_LOG_CATEGORY_RESERVED6 = (UInt32)(14)
const SDL_LOG_CATEGORY_RESERVED7 = (UInt32)(15)
const SDL_LOG_CATEGORY_RESERVED8 = (UInt32)(16)
const SDL_LOG_CATEGORY_RESERVED9 = (UInt32)(17)
const SDL_LOG_CATEGORY_RESERVED10 = (UInt32)(18)
const SDL_LOG_CATEGORY_CUSTOM = (UInt32)(19)
# end enum ANONYMOUS_33

# begin enum ANONYMOUS_34
const ANONYMOUS_34 = UInt32
const SDL_LOG_PRIORITY_VERBOSE = (UInt32)(1)
const SDL_LOG_PRIORITY_DEBUG = (UInt32)(2)
const SDL_LOG_PRIORITY_INFO = (UInt32)(3)
const SDL_LOG_PRIORITY_WARN = (UInt32)(4)
const SDL_LOG_PRIORITY_ERROR = (UInt32)(5)
const SDL_LOG_PRIORITY_CRITICAL = (UInt32)(6)
const SDL_NUM_LOG_PRIORITIES = (UInt32)(7)
# end enum ANONYMOUS_34

const SDL_LogPriority = Void
const SDL_LogOutputFunction = Ptr{Void}

# begin enum ANONYMOUS_35
const ANONYMOUS_35 = UInt32
const SDL_MESSAGEBOX_ERROR = (UInt32)(16)
const SDL_MESSAGEBOX_WARNING = (UInt32)(32)
const SDL_MESSAGEBOX_INFORMATION = (UInt32)(64)
# end enum ANONYMOUS_35

const SDL_MessageBoxFlags = Void

# begin enum ANONYMOUS_36
const ANONYMOUS_36 = UInt32
const SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = (UInt32)(1)
const SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = (UInt32)(2)
# end enum ANONYMOUS_36

const SDL_MessageBoxButtonFlags = Void
const SDL_MessageBoxButtonData = Void
const SDL_MessageBoxColor = Void

# begin enum ANONYMOUS_37
const ANONYMOUS_37 = UInt32
const SDL_MESSAGEBOX_COLOR_BACKGROUND = (UInt32)(0)
const SDL_MESSAGEBOX_COLOR_TEXT = (UInt32)(1)
const SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = (UInt32)(2)
const SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = (UInt32)(3)
const SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = (UInt32)(4)
const SDL_MESSAGEBOX_COLOR_MAX = (UInt32)(5)
# end enum ANONYMOUS_37

const SDL_MessageBoxColorType = Void
const SDL_MessageBoxColorScheme = Void
const SDL_MessageBoxData = Void

# begin enum ANONYMOUS_38
const ANONYMOUS_38 = UInt32
const SDL_POWERSTATE_UNKNOWN = (UInt32)(0)
const SDL_POWERSTATE_ON_BATTERY = (UInt32)(1)
const SDL_POWERSTATE_NO_BATTERY = (UInt32)(2)
const SDL_POWERSTATE_CHARGING = (UInt32)(3)
const SDL_POWERSTATE_CHARGED = (UInt32)(4)
# end enum ANONYMOUS_38

const SDL_PowerState = Void

# begin enum ANONYMOUS_39
const ANONYMOUS_39 = UInt32
const SDL_RENDERER_SOFTWARE = (UInt32)(1)
const SDL_RENDERER_ACCELERATED = (UInt32)(2)
const SDL_RENDERER_PRESENTVSYNC = (UInt32)(4)
const SDL_RENDERER_TARGETTEXTURE = (UInt32)(8)
# end enum ANONYMOUS_39

const SDL_RendererFlags = Void

mutable struct SDL_RendererInfo
    name::Cstring
    flags::Uint32
    num_texture_formats::Uint32
    texture_formats::NTuple{16, Uint32}
    max_texture_width::Cint
    max_texture_height::Cint
end

# begin enum ANONYMOUS_40
const ANONYMOUS_40 = UInt32
const SDL_TEXTUREACCESS_STATIC = (UInt32)(0)
const SDL_TEXTUREACCESS_STREAMING = (UInt32)(1)
const SDL_TEXTUREACCESS_TARGET = (UInt32)(2)
# end enum ANONYMOUS_40

const SDL_TextureAccess = Void

# begin enum ANONYMOUS_41
const ANONYMOUS_41 = UInt32
const SDL_TEXTUREMODULATE_NONE = (UInt32)(0)
const SDL_TEXTUREMODULATE_COLOR = (UInt32)(1)
const SDL_TEXTUREMODULATE_ALPHA = (UInt32)(2)
# end enum ANONYMOUS_41

const SDL_TextureModulate = Void

# begin enum ANONYMOUS_42
const ANONYMOUS_42 = UInt32
const SDL_FLIP_NONE = (UInt32)(0)
const SDL_FLIP_HORIZONTAL = (UInt32)(1)
const SDL_FLIP_VERTICAL = (UInt32)(2)
# end enum ANONYMOUS_42

const SDL_RendererFlip = Void

mutable struct SDL_Renderer
end

mutable struct SDL_Texture
end

const SDL_TimerCallback = Ptr{Void}
const SDL_TimerID = Cint

mutable struct SDL_version
    major::Uint8
    minor::Uint8
    patch::Uint8
end
