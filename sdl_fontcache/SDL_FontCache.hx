package sdl_fontcache;

import sdl2.SDL;

@:native("FC_Rect")
@:include("SDL_FontCache.h")
extern typedef FC_Rect = SDL_Rect;

@:native("FC_Target")
@:include("SDL_FontCache.h")
extern typedef FC_Target = SDL_Renderer;

@:native("FC_Texture")
@:include("SDL_FontCache.h")
extern typedef FC_Image = SDL_Texture;

@:native("FC_AlignEnum")
@:include("SDL_FontCache.h")
extern enum FC_AlignEnum {
    @:native("FC_ALIGN_LEFT")
    @:include("SDL_FontCache.h")
    FC_ALIGN_LEFT;
    @:native("FC_ALIGN_CENTER")
    @:include("SDL_FontCache.h")
    FC_ALIGN_CENTER;
    @:native("FC_ALIGN_RIGHT")
    @:include("SDL_FontCache.h")
    FC_ALIGN_RIGHT;
}

@:native("FC_FilterEnum")
@:include("SDL_FontCache.h")
extern enum FC_FilterEnum {
    @:native("FC_FILTER_NEAREST")
    @:include("SDL_FontCache.h")
    FC_FILTER_NEAREST;
    @:native("FC_FILTER_LINEAR")
    @:include("SDL_FontCache.h")
    FC_FILTER_LINEAR;
}

@:native("FC_Scale")
@:include("SDL_FontCache.h")
@:structInit
extern class FC_Scale {
    @:native("x")
    @:include("SDL_FontCache.h")
    @:structAccess
    public var x:Float;

    @:native("y")
    @:include("SDL_FontCache.h")
    @:structAccess
    public var y:Float;
}

@:native("FC_Effect")
@:include("SDL_FontCache.h")
@:structInit
extern class FC_Effect {
    @:include("SDL_FontCache.h")
    @:structAccess
    public var alignment:FC_AlignEnum;

    @:include("SDL_FontCache.h")
    @:structAccess
    public var scale:FC_Scale;

    @:include("SDL_FontCache.h")
    @:structAccess
    public var color:SDL_Color;
}

@:native("FC_Font")
@:include("SDL_FontCache.h")
extern class FC_Font {}

@:native("FC_GlyphData")
@:include("SDL_FontCache.h")
@:structInit
extern class FC_GlyphData {
    @:include("SDL_FontCache.h")
    @:structAccess
    public var rect:FC_Rect;

    @:include("SDL_FontCache.h")
    @:structAccess
    public var cache_level:Int;
}

@:cppInclude("SDL_FontCache.h")
@:include("SDL_FontCache.h")
extern class SDL_FontCache {
    @:native("TTF_STYLE_OUTLINE")
    @:include("SDL_FontCache.h")
    extern public static var TTF_STYLE_OUTLINE:Int;

    @:native("FC_MakeRect")
    @:include("SDL_FontCache.h")
    extern public static function FC_MakeRect(x:Int, y:Int, w:Int, h:Int):FC_Rect;

    @:native("FC_MakeScale")
    @:include("SDL_FontCache.h")
    extern public static function FC_MakeScale(x:Float, y:Float):FC_Scale;

    @:native("FC_MakeColor")
    @:include("SDL_FontCache.h")
    extern public static function FC_MakeColor(r:UInt8, g:UInt8, b:UInt8, a:UInt8):SDL_Color;

    @:native("FC_MakeEffect")
    @:include("SDL_FontCache.h")
    extern public static function FC_MakeEffect(alignment:FC_AlignEnum, scale:FC_Scale, color:SDL_Color):FC_Effect;

    @:native("FC_MakeGlyphData")
    @:include("SDL_FontCache.h")
    extern public static function FC_MakeGlyphData(rect:FC_Rect, cache_level:Int):FC_GlyphData;

    @:native("FC_CreateFont")
    @:include("SDL_FontCache.h")
    extern public static function FC_CreateFont():Ptr<FC_Font>;

    @:native("FC_LoadFont")
    @:include("SDL_FontCache.h")
    extern public static function FC_LoadFont(font:Ptr<FC_Font>, renderer:Ptr<SDL_Renderer>, filename_ttf:ConstCharPtr, pointSize:UInt32, color:SDL_Color, style:Int):UInt8;

    @:native("FC_ClearFont")
    @:include("SDL_FontCache.h")
    extern public static function FC_ClearFont(font:Ptr<FC_Font>):Void;

    @:native("FC_FreeFont")
    @:include("SDL_FontCache.h")
    extern public static function FC_FreeFont(font:Ptr<FC_Font>):Void;

    @:native("FC_GetStringASCII")
    @:include("SDL_FontCache.h")
    extern public static function FC_GetStringASCII():Ptr<Char>;

    @:native("FC_GetStringLatin1")
    @:include("SDL_FontCache.h")
    extern public static function FC_GetStringLatin1():Ptr<Char>;

    @:native("FC_GetStringASCII_Latin1")
    @:include("SDL_FontCache.h")
    extern public static function FC_GetStringASCII_Latin1():Ptr<Char>;

    @:native("FC_SetLoadingString")
    @:include("SDL_FontCache.h")
    extern public static function FC_SetLoadingString(font:Ptr<FC_Font>, str:Ptr<Char>):Void;

    @:native("FC_GetBufferSize")
    @:include("SDL_FontCache.h")
    extern public static function FC_GetLoadingString():Int;

    @:native("FC_SetBufferSize")
    @:include("SDL_FontCache.h")
    extern public static function FC_SetBufferSize(size:UInt32):Void;

    @:native("FC_GetTabWidth")
    @:include("SDL_FontCache.h")
    extern public static function FC_GetTabWidth():UInt32;

    @:native("FC_SetTabWidth")
    @:include("SDL_FontCache.h")
    extern public static function FC_SetTabWidth(width_in_spaces:UInt32):Void;

    //////////////////////////////////////

    @:native("FC_Draw")
    @:include("SDL_FontCache.h")
    extern public static function FC_Draw(font:Ptr<FC_Font>, dest:Ptr<FC_Target>, x:Float, y:Float, formatted_text:ConstCharPtr):FC_Rect;

    @:native("FC_DrawAlign")
    @:include("SDL_FontCache.h")
    extern public static function FC_DrawAlign(font:Ptr<FC_Font>, dest:Ptr<FC_Target>, text:Ptr<Char>, x:Float, y:Float, align:FC_AlignEnum, formatted_text:ConstCharPtr):FC_Rect;

    @:native("FC_DrawScale")
    @:include("SDL_FontCache.h")
    extern public static function FC_DrawScale(font:Ptr<FC_Font>, dest:Ptr<FC_Target>, x:Float, y:Float, scale:FC_Scale, formatted_text:ConstCharPtr):FC_Rect;

    @:native("FC_DrawColor")
    @:include("SDL_FontCache.h")
    extern public static function FC_DrawColor(font:Ptr<FC_Font>, dest:Ptr<FC_Target>, x:Float, y:Float, color:SDL_Color, formatted_text:ConstCharPtr):FC_Rect;

    @:native("FC_DrawEffect")
    @:include("SDL_FontCache.h")
    extern public static function FC_DrawEffect(font:Ptr<FC_Font>, dest:Ptr<FC_Target>, x:Float, y:Float, effect:FC_Effect, formatted_text:ConstCharPtr):FC_Rect;

    //////////////////////////////////////

    @:native("FC_SetDefaultColor")
    @:include("SDL_FontCache.h")
    extern public static function FC_SetDefaultColor(font:Ptr<FC_Font>, color:SDL_Color):Void;

    @:native("FC_GetDefaultColor")
    @:include("SDL_FontCache.h")
    extern public static function FC_GetDefaultColor(font:Ptr<FC_Font>):SDL_Color;
}