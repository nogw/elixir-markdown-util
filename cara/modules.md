---
category: Language
title: Modules
identifier: modules
index: 7
---

# Modules

## Basic usage

In OCaml, every piece of code is wrapped into a module. Optionally, a module
itself can be a submodule of another module, pretty much like directories in a
file system - but we don't do this very often.

When you write a program let's say using two files `amodule.ml` and
`bmodule.ml`, each of these files automatically defines a module named
`Amodule` and a module named `Bmodule` that provide whatever you put into the
files.

Here is the code that we have in our file `amodule.ml`:

<!-- $MDX file=examples/amodule.ml -->
```ocaml
let hello () = print_endline "Hello"
```

And here is what we have in `bmodule.ml`:

<!-- $MDX file=examples/bmodule.ml -->
```ocaml
let () = Amodule.hello ()
```