
release:
	clang -O3 -Wall -Wextra -Wno-unused-parameter -I/usr/include/SDL2 -o bin zel.c -lm -lSDL2 -lSDL2_ttf

debug:
	clang -O0 -fprofile-instr-generate -fcoverage-mapping -g -Wall -Wextra -Wno-unused-parameter -I/usr/include/SDL2 -o bin zel.c -lm -lSDL2 -lSDL2_ttf

coverage:
	llvm-profdata merge -sparse *.profraw -o default.profdata
	llvm-cov export ./bin -instr-profile=default.profdata -format=text -summary-only > coverage.json

clean:
	rm -f bin *.profraw *.profdata
