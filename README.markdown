tinyalsa-ndk
===========

This is a slightly modified ['tinyalsa'](https://github.com/tinyalsa/tinyalsa) lib to make it compile using android-ndk - especially the tinymix utility.

- This repo also holds the precompiled binaries (compiled with ndk) of tinymix and related utils in the libs/armeabi/ directory.

how to compile:

Simply cd into the jni folder, then call ndk-build normally

Example:
<pre>
kasidit@kasidit:~/tinyalsa-ndk/jni$ ~/adt/sdk/ndk/ndk-build
[armeabi] Compile thumb  : tinyalsa <= mixer.c
[armeabi] Compile thumb  : tinyalsa <= pcm.c
[armeabi] SharedLibrary  : libtinyalsa.so
[armeabi] Install        : libtinyalsa.so => libs/armeabi/libtinyalsa.so
[armeabi] Compile thumb  : tinycap <= tinycap.c
[armeabi] Executable     : tinycap
[armeabi] Install        : tinycap => libs/armeabi/tinycap
[armeabi] Compile thumb  : tinymix <= tinymix.c
[armeabi] Executable     : tinymix
[armeabi] Install        : tinymix => libs/armeabi/tinymix
[armeabi] Compile thumb  : tinypcminfo <= tinypcminfo.c
[armeabi] Executable     : tinypcminfo
[armeabi] Install        : tinypcminfo => libs/armeabi/tinypcminfo
[armeabi] Compile thumb  : tinyplay <= tinyplay.c
[armeabi] Executable     : tinyplay
[armeabi] Install        : tinyplay => libs/armeabi/tinyplay
kasidit@kasidit:~/tinyalsa-ndk/jni$ 
</pre>