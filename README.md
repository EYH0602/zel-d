# zel-d

A deterministic version of the zel game from https://github.com/superjer/tinyc.games to benchmark game fuzzers.

## Requirements

```sh
sudo apt install libsdl2-dev libsdl2-2.0-0 -y
sudo apt install libfreetype6-dev libsdl2-ttf-dev libsdl2-ttf-2.0-0 -y
```

## Changes:

1. The entry point of the game now is always bottom left corner.
2. The game now has a fixed seed.
3. The game now exists when the player dies.