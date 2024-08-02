#!/bin/bash

render="src/engine/render/render.c src/engine/render/render_init.c src/engine/render/render_util.c"
io="src/engine/io/io.c"
files="src/glad.c src/main.c src/engine/global.c $io $render"

include_dirs="-I W:/include -I include"

lib_dirs="-L W:/lib"

libs="-lSDL2main -lSDL2 -lfreetype"

gcc -g $include_dirs $files $lib_dirs $libs -o game.exe

