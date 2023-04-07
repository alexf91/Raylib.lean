# Raylib.lean

Partial [raylib](https://github.com/raysan5/raylib) `4.5-dev` bindings for Lean4.

## Coverage

* Images and textures
* Audio
* Most of 2D rendering
* 3D primitive rendering (w/o shaders)

Callbacks are not implemented.

## Usage

Add this to `lakefile.lean`, uses system-wide `raylib` by default:
```
require Raylib from git
  "https://github.com/KislyjKisel/Raylib.lean.git" @ "main"
```

Then run `lake update`.

### Options

Options can be specified by appending `with $opts` (where `$opts` is a `NameMap`) to the `require` statement

* `raylib`: `"system"` by default. `"submodule"` to compile from source using git submodules. `"custom"` to not pass library or header directories to the compiler.
* `unsafe_opts`: if present, enables some optimizations that use assumptions I am unsure about.
* `cc`: c compiler invoked to compile ffi; `"cc"` by default.
* `cflags`: additional flags passed to `cc`.
* `lflags`: additional flags used to link test executable.
* `cmdout`: if present, print output of commands used when building submodule.

## Example

To run the example:
```
lake update
lake build
./build/bin/test
```