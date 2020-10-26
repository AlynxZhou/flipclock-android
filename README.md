FlipClock Android
=================

The Android wrapper for [FlipClock](https://github.com/AlynxZhou/flipclock/).
-----------------------------------------------------------------------------

# WHY?

Fliqlo, the closed-source app for macOS has an iOS version, so I tried to make an Android version.

# HOW?

First, find a phone with LCD screen. Modern phones with non-square screens use OLED, and displaying similar patterns (FlipClock is one of those) will leave permanent mark on OLED screen.

Clone this repo, then call `git submodule update --init` to get FlipClock, then the font symlink under assets should work. Open this project with Android Studio and try to build by yourself.

When the APP started, double tap to switch between 12/24-hour clock format, rotate your phone to switch between landscape and portrait, don't forget to enable your phone's auto-rotate option.

Java shim was taken directly from SDL2's `android-project` subdir and I won't modify them to keep consistnt with upstream.

The original FlipClock was used as a git submodule here to keep code clean, because we need to build SDL2 and SDL2_ttf's source inside this project (that's bad, but it's the only way).

The original FlipClock uses CMake, but we cannot use CMake when building Android APP. Android SDK do support CMake now, but the `FindSDL2.cmake` is written for finding pre-built SDL2, instead of building together from source code, also, SDL2_ttf's `CMakeLists.txt` cannot handle static build, either. So I just write some `Android.mk` files for building.

Wanna an iOS version? Just buy your closed-source Tesla! I am not interested in users of closed-source systems.

# LICENSE

Code taken directly from SDL2 and SDL2_ttf should keep the same License with SDL2 and SDL2_ttf.

Code modified by me should use [Apache-2.0](./LICENSE).
