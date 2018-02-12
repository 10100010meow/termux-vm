# Termux VM
TermuxVM allows you to use [ArchLinux](https://www.archlinux.org/) running on the [QEMU emulator](https://www.qemu.org/). This should give the experience of using the original distribution of ArchLinux with all its functions, but due to the fact that the operating system is running in the emulator, the performance will be much lower.

Termux VM is the replacement for [Termux RootFS](https://archive.org/details/termux-rootfs). So support of Termux RootFS was ended and now if you want to use it, you can download last version from the Internet Archive: https://archive.org/details/termux-rootfs.

<p float="left">
  <img src="/screenshots/TermuxVM_01.png" width="420" />
  <img src="/screenshots/TermuxVM_02.png" width="420" />
</p>

## Requirements
* High-end device with AArch64 multicore CPU
* Android 6.x or higher
* 2+ GB of free space in /data
* [Patched Termux](./android-apps/Termux.apk) (Termux:Boot, Termux:Styling, Termux:Widget are integrated)

## NOTICE
Termux RootFS initially was created for **personal use by it's author (Leonid Plyushch <leonid.plyushch@gmail.com>)**, keep this in mind.
Therefore, **author is not responsible about any damage or data loss that can cause usage of this software** !

If you want to use this software - please, follow these rules:
1. Don't ask me how to use or why to use this software.
2. Don't ask me to make Termux RootFS smaller.
3. Don't ask me to port Termux RootFS to another architectures (such as ARM).
4. Don't ask me to add a specific program or library that is not available. Termux RootFS provides enough tools for compiling software so you can built it yourself.
5. Don't send pull requests. If you send one, it will be closed. I don't trust binaries coming from unknown sources.

## Useful links
Termux resources:
 * Termux Home: https://termux.com/
 * Termux Help: https://termux.com/help.html
 * Termux Wiki: https://wiki.termux.com/
 * Termux Twitter: https://twitter.com/termux/
 * Termux Google+: https://plus.google.com/communities/101692629528551299417

Termux on Github:
 * Termux Gitter: https://gitter.im/termux/termux
 * Termux App: https://github.com/termux/termux-app
 * Termux Packages: https://github.com/termux/termux-packages
