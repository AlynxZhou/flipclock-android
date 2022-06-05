FlipClock Android
=================

The Android wrapper for [FlipClock](https://github.com/AlynxZhou/flipclock/).
-----------------------------------------------------------------------------

[Google Play Store Page](https://play.google.com/store/apps/details?id=one.alynx.flipclock)

# WHY?

Fliqlo, the closed-source app for macOS has an iOS version, so I tried to make an Android version.

# HOW?

First, find a phone with LCD screen. Modern phones with non-square screens use OLED, and displaying similar patterns (FlipClock is one of those) will leave permanent mark on OLED screen.

Clone this repo, then run `git submodule update --init` to get FlipClock, then the font symlink under assets should work, if not, run `ln -s app/jni/flipclock/dists/flipclock.ttf app/src/main/assets/flipclock.ttf`. Open this project with Android Studio and try to build by yourself.

When the APP started, 2 fingers touch/double tap to switch between 12/24-hour clock format, 3 fingers touch to toggle second, rotate your phone to switch between landscape and portrait, don't forget to enable your phone's auto-rotate option.

Java shim was taken directly from SDL2's `android-project` subdir and I won't modify them to keep consistnt with upstream.

The original FlipClock was used as a git submodule here to keep code clean, because we need to build SDL2 and SDL2_ttf's source inside this project (that's bad, but it's the only way).

The original FlipClock uses Meson, but we cannot use Meson when building Android APP. So I just write some `Android.mk` files for building.

Wanna an iOS version? Just buy your closed-source Tesla! I am not interested in users of closed-source systems. Paying extra thousands of dollars (for buying a Mac) to gain the right for developing apps for my own mobile device is ridiculous.

# LICENSE

Code taken directly from SDL2 and SDL2_ttf should keep the same License with SDL2 and SDL2_ttf.

Code modified by myself should use [Apache-2.0](./LICENSE).
