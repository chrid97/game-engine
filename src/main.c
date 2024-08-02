#include "engine/global.h"
#include "engine/render/render.h"
#include <glad/glad.h>
#include <stdbool.h>
#include <stdio.h>
#define SDL_MAIN_HANDLED
#include <SDL2/SDL.h>

int main(int argc, char *argv[]) {
  render_init();
  puts("Hello there!");

  bool should_quit = false;

  while (!should_quit) {
    SDL_Event event;

    while (SDL_PollEvent(&event)) {
      switch (event.type) {
      case SDL_QUIT:
        should_quit = true;
        break;
      default:
        break;
      }
    }

    render_begin();

    render_quad((vec2){global.render.width * 0.5, global.render.height * 0.5},
            (vec2){50, 50}, (vec4){0, 1, 0, 1});

    render_end();
  }

  return 0;
}