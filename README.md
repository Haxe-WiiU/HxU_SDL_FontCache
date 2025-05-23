# Haxe-WiiU - SDL_FontCache
With this library, you can make use of [SDL_FontCache](https://github.com/grimfang4/SDL_FontCache) natively in Haxe, to develop homebrew for the Nintendo Wii U. This is a library in conjunction with [HxCompileU](https://github.com/Slushi-Github/hxCompileU), which is the utility for compiling to the Wii U using [Reflaxe.CPP](https://github.com/SomeRanDev/reflaxe.CPP).


This library is **NOT** for normal use in Haxe, do not try to use it in a common project.


# Installation
To install this library, just install it through Haxelib:
```
haxelib git hxu_sdl_fontcache https://github.com/Slushi-Github/HxU_SDL_FontCache
```
And then add the library to your HxCompileU JSON config (You need HxCompileU version 1.3.2 or higher):
```json
{
    "extraLibs": ["SDL_FontCache"],
}
```
