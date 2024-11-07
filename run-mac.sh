export DYLD_FRAMEWORK_PATH=./macos

clang -I./macos/SDL2.framework/Headers -I./macos/SDL2_ttf.framework/Headers -F./macos -framework SDL2 -framework SDL2_ttf -o zel zel.c && ./zel
