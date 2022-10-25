docker run --rm -v `pwd`:/build ykasidit/android_ndk_c_rust_go_builder:latest bash -c "cd /build && ndk-build clean && ndk-build -j `nproc`" && echo "== BUILD SUCCESS == see binaries in: libs/x86_64" && ls -l libs/arm64-v8a/tiny*
