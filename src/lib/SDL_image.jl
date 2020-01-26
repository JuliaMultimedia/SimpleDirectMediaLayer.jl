# Julia wrapper for header: /Users/bieler/Desktop/tmp/SDL2-2.0.8/include/libSDL2_image.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0
include("SDL_image_h.jl")

function IMG_Linked_Version()
    ccall((:IMG_Linked_Version, libSDL2_image), Ptr{SDL_version}, ())
end

function IMG_Init(flags::Cint)
    ccall((:IMG_Init, libSDL2_image), Cint, (Cint,), flags)
end

function IMG_Quit()
    ccall((:IMG_Quit, libSDL2_image), Cvoid, ())
end

function IMG_LoadTyped_RW(src, freesrc::Cint, _type)
    ccall((:IMG_LoadTyped_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops}, Cint, Cstring), src, freesrc, _type)
end

function IMG_Load(file)
    ccall((:IMG_Load, libSDL2_image), Ptr{Surface}, (Cstring,), file)
end

function IMG_Load_RW(src, freesrc::Cint)
    ccall((:IMG_Load_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops}, Cint), src, freesrc)
end

function IMG_LoadTexture(renderer, file)
    ccall((:IMG_LoadTexture, libSDL2_image), Ptr{Texture}, (Ptr{Renderer}, Cstring), renderer, file)
end

function IMG_LoadTexture_RW(renderer, src, freesrc::Cint)
    ccall((:IMG_LoadTexture_RW, libSDL2_image), Ptr{Texture}, (Ptr{Renderer}, Ptr{RWops}, Cint), renderer, src, freesrc)
end

function IMG_LoadTextureTyped_RW(renderer, src, freesrc::Cint, _type)
    ccall((:IMG_LoadTextureTyped_RW, libSDL2_image), Ptr{Texture}, (Ptr{Renderer}, Ptr{RWops}, Cint, Cstring), renderer, src, freesrc, _type)
end

function IMG_isICO(src)
    ccall((:IMG_isICO, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isCUR(src)
    ccall((:IMG_isCUR, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isBMP(src)
    ccall((:IMG_isBMP, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isGIF(src)
    ccall((:IMG_isGIF, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isJPG(src)
    ccall((:IMG_isJPG, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isLBM(src)
    ccall((:IMG_isLBM, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isPCX(src)
    ccall((:IMG_isPCX, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isPNG(src)
    ccall((:IMG_isPNG, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isPNM(src)
    ccall((:IMG_isPNM, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isSVG(src)
    ccall((:IMG_isSVG, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isTIF(src)
    ccall((:IMG_isTIF, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isXCF(src)
    ccall((:IMG_isXCF, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isXPM(src)
    ccall((:IMG_isXPM, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isXV(src)
    ccall((:IMG_isXV, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_isWEBP(src)
    ccall((:IMG_isWEBP, libSDL2_image), Cint, (Ptr{RWops},), src)
end

function IMG_LoadICO_RW(src)
    ccall((:IMG_LoadICO_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadCUR_RW(src)
    ccall((:IMG_LoadCUR_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadBMP_RW(src)
    ccall((:IMG_LoadBMP_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadGIF_RW(src)
    ccall((:IMG_LoadGIF_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadJPG_RW(src)
    ccall((:IMG_LoadJPG_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadLBM_RW(src)
    ccall((:IMG_LoadLBM_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadPCX_RW(src)
    ccall((:IMG_LoadPCX_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadPNG_RW(src)
    ccall((:IMG_LoadPNG_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadPNM_RW(src)
    ccall((:IMG_LoadPNM_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadSVG_RW(src)
    ccall((:IMG_LoadSVG_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadTGA_RW(src)
    ccall((:IMG_LoadTGA_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadTIF_RW(src)
    ccall((:IMG_LoadTIF_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadXCF_RW(src)
    ccall((:IMG_LoadXCF_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadXPM_RW(src)
    ccall((:IMG_LoadXPM_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadXV_RW(src)
    ccall((:IMG_LoadXV_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_LoadWEBP_RW(src)
    ccall((:IMG_LoadWEBP_RW, libSDL2_image), Ptr{Surface}, (Ptr{RWops},), src)
end

function IMG_ReadXPMFromArray(xpm)
    ccall((:IMG_ReadXPMFromArray, libSDL2_image), Ptr{Surface}, (Ptr{Cstring},), xpm)
end

function IMG_SavePNG(surface, file)
    ccall((:IMG_SavePNG, libSDL2_image), Cint, (Ptr{Surface}, Cstring), surface, file)
end

function IMG_SavePNG_RW(surface, dst, freedst::Cint)
    ccall((:IMG_SavePNG_RW, libSDL2_image), Cint, (Ptr{Surface}, Ptr{RWops}, Cint), surface, dst, freedst)
end

function IMG_SaveJPG(surface, file, quality::Cint)
    ccall((:IMG_SaveJPG, libSDL2_image), Cint, (Ptr{Surface}, Cstring, Cint), surface, file, quality)
end

function IMG_SaveJPG_RW(surface, dst, freedst::Cint, quality::Cint)
    ccall((:IMG_SaveJPG_RW, libSDL2_image), Cint, (Ptr{Surface}, Ptr{RWops}, Cint, Cint), surface, dst, freedst, quality)
end
