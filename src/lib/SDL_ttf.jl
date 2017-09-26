# Julia wrapper for header: /Users/bieler/Downloads/SDL2_ttf-2.0.14/SDL_ttf.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0
include("SDL_ttf_h.jl")

function TTF_Linked_Version()
    ccall((:TTF_Linked_Version, SDL_ttf), Ptr{SDL_version}, ())
end

function TTF_ByteSwappedUNICODE(swapped::Cint)
    ccall((:TTF_ByteSwappedUNICODE, SDL_ttf), Void, (Cint,), swapped)
end

function TTF_Init()
    ccall((:TTF_Init, SDL_ttf), Cint, ())
end

function TTF_OpenFont(file, ptsize)
    ccall((:TTF_OpenFont, SDL_ttf), Ptr{TTF_Font}, (Cstring, Cint), file, ptsize)
end

function TTF_OpenFontIndex(file, ptsize::Cint, index::Clong)
    ccall((:TTF_OpenFontIndex, SDL_ttf), Ptr{TTF_Font}, (Cstring, Cint, Clong), file, ptsize, index)
end

function TTF_OpenFontRW(src, freesrc::Cint, ptsize::Cint)
    ccall((:TTF_OpenFontRW, SDL_ttf), Ptr{TTF_Font}, (Ptr{SDL_RWops}, Cint, Cint), src, freesrc, ptsize)
end

function TTF_OpenFontIndexRW(src, freesrc::Cint, ptsize::Cint, index::Clong)
    ccall((:TTF_OpenFontIndexRW, SDL_ttf), Ptr{TTF_Font}, (Ptr{SDL_RWops}, Cint, Cint, Clong), src, freesrc, ptsize, index)
end

function TTF_GetFontStyle(font)
    ccall((:TTF_GetFontStyle, SDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontStyle(font, style::Cint)
    ccall((:TTF_SetFontStyle, SDL_ttf), Void, (Ptr{TTF_Font}, Cint), font, style)
end

function TTF_GetFontOutline(font)
    ccall((:TTF_GetFontOutline, SDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontOutline(font, outline::Cint)
    ccall((:TTF_SetFontOutline, SDL_ttf), Void, (Ptr{TTF_Font}, Cint), font, outline)
end

function TTF_GetFontHinting(font)
    ccall((:TTF_GetFontHinting, SDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontHinting(font, hinting::Cint)
    ccall((:TTF_SetFontHinting, SDL_ttf), Void, (Ptr{TTF_Font}, Cint), font, hinting)
end

function TTF_FontHeight(font)
    ccall((:TTF_FontHeight, SDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontAscent(font)
    ccall((:TTF_FontAscent, SDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontDescent(font)
    ccall((:TTF_FontDescent, SDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontLineSkip(font)
    ccall((:TTF_FontLineSkip, SDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_GetFontKerning(font)
    ccall((:TTF_GetFontKerning, SDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_SetFontKerning(font, allowed::Cint)
    ccall((:TTF_SetFontKerning, SDL_ttf), Void, (Ptr{TTF_Font}, Cint), font, allowed)
end

function TTF_FontFaces(font)
    ccall((:TTF_FontFaces, SDL_ttf), Clong, (Ptr{TTF_Font},), font)
end

function TTF_FontFaceIsFixedWidth(font)
    ccall((:TTF_FontFaceIsFixedWidth, SDL_ttf), Cint, (Ptr{TTF_Font},), font)
end

function TTF_FontFaceFamilyName(font)
    ccall((:TTF_FontFaceFamilyName, SDL_ttf), Cstring, (Ptr{TTF_Font},), font)
end

function TTF_FontFaceStyleName(font)
    ccall((:TTF_FontFaceStyleName, SDL_ttf), Cstring, (Ptr{TTF_Font},), font)
end

function TTF_GlyphIsProvided(font, ch::Uint16)
    ccall((:TTF_GlyphIsProvided, SDL_ttf), Cint, (Ptr{TTF_Font}, Uint16), font, ch)
end

function TTF_GlyphMetrics(font, ch::Uint16, minx, maxx, miny, maxy, advance)
    ccall((:TTF_GlyphMetrics, SDL_ttf), Cint, (Ptr{TTF_Font}, Uint16, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), font, ch, minx, maxx, miny, maxy, advance)
end

function TTF_SizeText(font, text, w, h)
    ccall((:TTF_SizeText, SDL_ttf), Cint, (Ptr{TTF_Font}, Cstring, Ptr{Cint}, Ptr{Cint}), font, text, w, h)
end

function TTF_SizeUTF8(font, text, w, h)
    ccall((:TTF_SizeUTF8, SDL_ttf), Cint, (Ptr{TTF_Font}, Cstring, Ptr{Cint}, Ptr{Cint}), font, text, w, h)
end

function TTF_SizeUNICODE(font, text, w, h)
    ccall((:TTF_SizeUNICODE, SDL_ttf), Cint, (Ptr{TTF_Font}, Ptr{Uint16}, Ptr{Cint}, Ptr{Cint}), font, text, w, h)
end

function TTF_RenderText_Solid(font, text, fg::SDL_Color)
    ccall((:TTF_RenderText_Solid, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Cstring, SDL_Color), font, text, fg)
end

function TTF_RenderUTF8_Solid(font, text, fg::SDL_Color)
    ccall((:TTF_RenderUTF8_Solid, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Cstring, SDL_Color), font, text, fg)
end

function TTF_RenderUNICODE_Solid(font, text, fg::SDL_Color)
    ccall((:TTF_RenderUNICODE_Solid, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, SDL_Color), font, text, fg)
end

function TTF_RenderGlyph_Solid(font, ch::Uint16, fg::SDL_Color)
    ccall((:TTF_RenderGlyph_Solid, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Uint16, SDL_Color), font, ch, fg)
end

function TTF_RenderText_Shaded(font, text, fg::SDL_Color, bg::SDL_Color)
    ccall((:TTF_RenderText_Shaded, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Cstring, SDL_Color, SDL_Color), font, text, fg, bg)
end

function TTF_RenderUTF8_Shaded(font, text, fg::SDL_Color, bg::SDL_Color)
    ccall((:TTF_RenderUTF8_Shaded, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Cstring, SDL_Color, SDL_Color), font, text, fg, bg)
end

function TTF_RenderUNICODE_Shaded(font, text, fg::SDL_Color, bg::SDL_Color)
    ccall((:TTF_RenderUNICODE_Shaded, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, SDL_Color, SDL_Color), font, text, fg, bg)
end

function TTF_RenderGlyph_Shaded(font, ch::Uint16, fg::SDL_Color, bg::SDL_Color)
    ccall((:TTF_RenderGlyph_Shaded, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Uint16, SDL_Color, SDL_Color), font, ch, fg, bg)
end

function TTF_RenderText_Blended(font, text, fg::SDL_Color)
    ccall((:TTF_RenderText_Blended, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Cstring, SDL_Color), font, text, fg)
end

function TTF_RenderUTF8_Blended(font, text, fg::SDL_Color)
    ccall((:TTF_RenderUTF8_Blended, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Cstring, SDL_Color), font, text, fg)
end

function TTF_RenderUNICODE_Blended(font, text, fg::SDL_Color)
    ccall((:TTF_RenderUNICODE_Blended, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, SDL_Color), font, text, fg)
end

function TTF_RenderText_Blended_Wrapped(font, text, fg::SDL_Color, wrapLength::Uint32)
    ccall((:TTF_RenderText_Blended_Wrapped, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Cstring, SDL_Color, Uint32), font, text, fg, wrapLength)
end

function TTF_RenderUTF8_Blended_Wrapped(font, text, fg::SDL_Color, wrapLength::Uint32)
    ccall((:TTF_RenderUTF8_Blended_Wrapped, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Cstring, SDL_Color, Uint32), font, text, fg, wrapLength)
end

function TTF_RenderUNICODE_Blended_Wrapped(font, text, fg::SDL_Color, wrapLength::Uint32)
    ccall((:TTF_RenderUNICODE_Blended_Wrapped, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Ptr{Uint16}, SDL_Color, Uint32), font, text, fg, wrapLength)
end

function TTF_RenderGlyph_Blended(font, ch::Uint16, fg::SDL_Color)
    ccall((:TTF_RenderGlyph_Blended, SDL_ttf), Ptr{SDL_Surface}, (Ptr{TTF_Font}, Uint16, SDL_Color), font, ch, fg)
end

function TTF_CloseFont(font)
    ccall((:TTF_CloseFont, SDL_ttf), Void, (Ptr{TTF_Font},), font)
end

function TTF_Quit()
    ccall((:TTF_Quit, SDL_ttf), Void, ())
end

function TTF_WasInit()
    ccall((:TTF_WasInit, SDL_ttf), Cint, ())
end

function TTF_GetFontKerningSize(font, prev_index::Cint, index::Cint)
    ccall((:TTF_GetFontKerningSize, SDL_ttf), Cint, (Ptr{TTF_Font}, Cint, Cint), font, prev_index, index)
end

function TTF_GetFontKerningSizeGlyphs(font, previous_ch::Uint16, ch::Uint16)
    ccall((:TTF_GetFontKerningSizeGlyphs, SDL_ttf), Cint, (Ptr{TTF_Font}, Uint16, Uint16), font, previous_ch, ch)
end
