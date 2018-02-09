# Julia wrapper for header: /Users/bieler/Downloads/SDL2_ttf-2.0.14/libSDL_ttf.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0
include("SDL_ttf_h.jl")

function TTF_Linked_Version()
    ccall((:TTF_Linked_Version, libSDL_ttf), Ptr{SDL_version}, ())
end

function TTF_ByteSwappedUNICODE(swapped::Cint)
    ccall((:TTF_ByteSwappedUNICODE, libSDL_ttf), Void, (Cint,), swapped)
end

function TTF_Init()
    ccall((:TTF_Init, libSDL_ttf), Cint, ())
end

function TTF_OpenFont(file, ptsize)
    ccall((:TTF_OpenFont, libSDL_ttf), Ptr{TTF_Font}, (Cstring, Cint), file, ptsize)
end

function TTF_OpenFontIndex(file, ptsize::Cint, index::Clong)
    ccall((:TTF_OpenFontIndex, libSDL_ttf), Ptr{TTF_Font}, (Cstring, Cint, Clong), file, ptsize, index)
end

function TTF_OpenFontRW(src, freesrc::Cint, ptsize::Cint)
    ccall((:TTF_OpenFontRW, libSDL_ttf), Ptr{TTF_Font}, (Ptr{RWops}, Cint, Cint), src, freesrc, ptsize)
end

function TTF_OpenFontIndexRW(src, freesrc::Cint, ptsize::Cint, index::Clong)
    ccall((:TTF_OpenFontIndexRW, libSDL_ttf), Ptr{TTF_Font}, (Ptr{RWops}, Cint, Cint, Clong), src, freesrc, ptsize, index)
end

function TTF_GetFontStyle(font)
    ccall((:TTF_GetFontStyle, libSDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontStyle(font, style::Cint)
    ccall((:TTF_SetFontStyle, libSDL_ttf), Void, (Ptr{TTF_Font}, Cint), font, style)
end

function TTF_GetFontOutline(font)
    ccall((:TTF_GetFontOutline, libSDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontOutline(font, outline::Cint)
    ccall((:TTF_SetFontOutline, libSDL_ttf), Void, (Ptr{TTF_Font}, Cint), font, outline)
end

function TTF_GetFontHinting(font)
    ccall((:TTF_GetFontHinting, libSDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontHinting(font, hinting::Cint)
    ccall((:TTF_SetFontHinting, libSDL_ttf), Void, (Ptr{TTF_Font}, Cint), font, hinting)
end

function TTF_FontHeight(font)
    ccall((:TTF_FontHeight, libSDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontAscent(font)
    ccall((:TTF_FontAscent, libSDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontDescent(font)
    ccall((:TTF_FontDescent, libSDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontLineSkip(font)
    ccall((:TTF_FontLineSkip, libSDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_GetFontKerning(font)
    ccall((:TTF_GetFontKerning, libSDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontKerning(font, allowed::Cint)
    ccall((:TTF_SetFontKerning, libSDL_ttf), Void, (Ptr{TTF_Font}, Cint), font, allowed)
end

function TTF_FontFaces(font)
    ccall((:TTF_FontFaces, libSDL_ttf), Clong, (Ptr{TTF_Font},), font)
end

function TTF_FontFaceIsFixedWidth(font)
    ccall((:TTF_FontFaceIsFixedWidth, libSDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontFaceFamilyName(font)
    ccall((:TTF_FontFaceFamilyName, libSDL_ttf), Cstring, (Ptr{TTF_Font},), font)
end

function TTF_FontFaceStyleName(font)
    ccall((:TTF_FontFaceStyleName, libSDL_ttf), Cstring, (Ptr{TTF_Font},), font)
end

function TTF_GlyphIsProvided(font, ch::Uint16)
    ccall((:TTF_GlyphIsProvided, libSDL_ttf), Cint, (Ptr{TTF_Font}, Uint16), font, ch)
end

function TTF_GlyphMetrics(font, ch::Uint16, minx, maxx, miny, maxy, advance)
    ccall((:TTF_GlyphMetrics, libSDL_ttf), Cint, (Ptr{TTF_Font}, Uint16, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), font, ch, minx, maxx, miny, maxy, advance)
end

function TTF_SizeText(font, text, w, h)
    ccall((:TTF_SizeText, libSDL_ttf), Cint, (Ptr{TTF_Font}, Cstring, Ptr{Cint}, Ptr{Cint}), font, text, w, h)
end

function TTF_SizeUTF8(font, text, w, h)
    ccall((:TTF_SizeUTF8, libSDL_ttf), Cint, (Ptr{TTF_Font}, Cstring, Ptr{Cint}, Ptr{Cint}), font, text, w, h)
end

function TTF_SizeUNICODE(font, text, w, h)
    ccall((:TTF_SizeUNICODE, libSDL_ttf), Cint, (Ptr{TTF_Font}, Ptr{Uint16}, Ptr{Cint}, Ptr{Cint}), font, text, w, h)
end

function TTF_RenderText_Solid(font, text, fg::Color)
    ccall((:TTF_RenderText_Solid, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Cstring, Color), font, text, fg)
end

function TTF_RenderUTF8_Solid(font, text, fg::Color)
    ccall((:TTF_RenderUTF8_Solid, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Cstring, Color), font, text, fg)
end

function TTF_RenderUNICODE_Solid(font, text, fg::Color)
    ccall((:TTF_RenderUNICODE_Solid, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, Color), font, text, fg)
end

function TTF_RenderGlyph_Solid(font, ch::Uint16, fg::Color)
    ccall((:TTF_RenderGlyph_Solid, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Uint16, Color), font, ch, fg)
end

function TTF_RenderText_Shaded(font, text, fg::Color, bg::Color)
    ccall((:TTF_RenderText_Shaded, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Cstring, Color, Color), font, text, fg, bg)
end

function TTF_RenderUTF8_Shaded(font, text, fg::Color, bg::Color)
    ccall((:TTF_RenderUTF8_Shaded, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Cstring, Color, Color), font, text, fg, bg)
end

function TTF_RenderUNICODE_Shaded(font, text, fg::Color, bg::Color)
    ccall((:TTF_RenderUNICODE_Shaded, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, Color, Color), font, text, fg, bg)
end

function TTF_RenderGlyph_Shaded(font, ch::Uint16, fg::Color, bg::Color)
    ccall((:TTF_RenderGlyph_Shaded, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Uint16, Color, Color), font, ch, fg, bg)
end

function TTF_RenderText_Blended(font, text, fg::Color)
    ccall((:TTF_RenderText_Blended, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Cstring, Color), font, text, fg)
end

function TTF_RenderUTF8_Blended(font, text, fg::Color)
    ccall((:TTF_RenderUTF8_Blended, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Cstring, Color), font, text, fg)
end

function TTF_RenderUNICODE_Blended(font, text, fg::Color)
    ccall((:TTF_RenderUNICODE_Blended, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, Color), font, text, fg)
end

function TTF_RenderText_Blended_Wrapped(font, text, fg::Color, wrapLength::Uint32)
    ccall((:TTF_RenderText_Blended_Wrapped, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Cstring, Color, Uint32), font, text, fg, wrapLength)
end

function TTF_RenderUTF8_Blended_Wrapped(font, text, fg::Color, wrapLength::Uint32)
    ccall((:TTF_RenderUTF8_Blended_Wrapped, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Cstring, Color, Uint32), font, text, fg, wrapLength)
end

function TTF_RenderUNICODE_Blended_Wrapped(font, text, fg::Color, wrapLength::Uint32)
    ccall((:TTF_RenderUNICODE_Blended_Wrapped, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, Color, Uint32), font, text, fg, wrapLength)
end

function TTF_RenderGlyph_Blended(font, ch::Uint16, fg::Color)
    ccall((:TTF_RenderGlyph_Blended, libSDL_ttf), Ptr{Surface}, (Ptr{TTF_Font}, Uint16, Color), font, ch, fg)
end

function TTF_CloseFont(font)
    ccall((:TTF_CloseFont, libSDL_ttf), Void, (Ptr{TTF_Font},), font)
end

function TTF_Quit()
    ccall((:TTF_Quit, libSDL_ttf), Void, ())
end

function TTF_WasInit()
    ccall((:TTF_WasInit, libSDL_ttf), Cint, ())
end

function TTF_GetFontKerningSize(font, prev_index::Cint, index::Cint)
    ccall((:TTF_GetFontKerningSize, libSDL_ttf), Cint, (Ptr{TTF_Font}, Cint, Cint), font, prev_index, index)
end

function TTF_GetFontKerningSizeGlyphs(font, previous_ch::Uint16, ch::Uint16)
    ccall((:TTF_GetFontKerningSizeGlyphs, libSDL_ttf), Cint, (Ptr{TTF_Font}, Uint16, Uint16), font, previous_ch, ch)
end
