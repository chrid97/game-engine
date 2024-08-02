#!/bin/bash

render="src/engine/render/render.c src/engine/render/render_init.c src/engine/render/render_util.c"
io="src/engine/io/io.c"
config="src/engine/config/config.c"
input="src/engine/input/input.c"
time="src/engine/time/time.c"
files="src/glad.c src/main.c src/engine/global.c $io $render $config $input $time"

include_dirs="-I W:/include -I include"

lib_dirs="-L W:/lib"

libs="-lSDL2main -lSDL2"

gcc -g $include_dirs $files $lib_dirs $libs -o game.exe

