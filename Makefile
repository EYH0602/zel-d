CC = clang

release:
    $(CC) -O3 -Wall -Wextra -Wno-unused-parameter -I/usr/include/SDL2 -o bin zel.c -lm -lSDL2 -lSDL2_ttf

debug:
    $(CC) -O0 -g -fprofile-instr-generate -fcoverage-mapping -Wall -Wextra -Wno-unused-parameter -I/usr/include/SDL2 -o bin zel.c -lm -lSDL2 -lSDL2_ttf

coverage: debug
    llvm-profdata merge -sparse *.profraw -o default.profdata
	llvm-cov export ./bin -instr-profile=default.profdata -format=text -summary-only > coverage.json

clean:
    rm -f bin zel.profraw zel.profdata
