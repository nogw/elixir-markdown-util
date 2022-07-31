---
category: Language
title: Error Handling
identifier: error_handling
index: 2
---

# Error Handling

## Exceptions

One way of handling errors in OCaml is exceptions. The
standard library relies heavily upon them.

Exceptions belong to the type `exn` (an extensible sum type):

```ocaml
exception Foo of string

let i_will_fail () =
  raise (Foo "Oh no!")
```

Here, we add a variant `Foo` to the type `exn`, and create a function
that will raise this exception. Now, how do we handle exceptions?
The construct is `try ... with ...`: