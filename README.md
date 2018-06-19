# Simple DirectMedia Layer

[![Build Status](https://travis-ci.org/jonathanBieler/SimpleDirectMediaLayer.jl.svg?branch=master)](https://travis-ci.org/jonathanBieler/SimpleDirectMediaLayer.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/kg3gx5ngbbewjstr?svg=true)](https://ci.appveyor.com/project/jonathanBieler/sdl2-jl)

[![Coverage Status](https://coveralls.io/repos/jonathanBieler/SimpleDirectMediaLayer.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/jonathanBieler/SimpleDirectMediaLayer.jl?branch=master)
[![codecov.io](http://codecov.io/github/jonathanBieler/SimpleDirectMediaLayer.jl/coverage.svg?branch=master)](http://codecov.io/github/jonathanBieler/SDLSimpleDirectMediaLayer2.jl?branch=master)

Bindings for the [Simple DirectMedia Layer](https://www.libsdl.org/) library. The bindings were generated using [Clang.jl](https://github.com/ihnorton/Clang.jl). 

It's recommended to declare a shorthand for the package after using it:

```
using SimpleDirectMediaLayer
const SDL = SimpleDirectMediaLayer
```

The `SDL_` prefix was trimmed from names so functions and types can be accessed as `SDL.foo` instead of `SDL_foo`. Documentation can be found on the [SDL wiki](https://wiki.libsdl.org/FrontPage).

A few examples are available [here](https://github.com/jonathanBieler/SimpleDirectMediaLayer.jl/blob/master/src/examples/).

# License
This project is licensed under the terms of the MIT license.

