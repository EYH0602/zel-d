
release:
	clang -O3 -Wall -Wextra -Wno-unused-parameter -I/usr/include/SDL2 -o bin zel.c -lm -lSDL2 -lSDL2_ttf

debug:
	clang -O0 -fprofile-instr-generate -fcoverage-mapping -g -Wall -Wextra -Wno-unused-parameter -I/usr/include/SDL2 -o bin zel.c -lm -lSDL2 -lSDL2_ttf

debug_asan:
	clang -O0 -fprofile-instr-generate -fcoverage-mapping -fsanitize=address,leak,undefined -g -Wall -Wextra -Wno-unused-parameter -I/usr/include/SDL2 -o bin zel.c -lm -lSDL2 -lSDL2_ttf

clean:
	rm -f bin *.profraw *.profdata *.lcov
