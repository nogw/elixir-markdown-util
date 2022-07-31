---
category: Language
title: Pointers
identifier: pointers
index: 9
---

# Pointers

## Status of pointers in OCaml
Pointers exist in OCaml, and in fact they spread all over the place.
They are used either implicitly (in the most cases), or explicitly (in
the rare occasions where implicit pointers are not more handy). The vast
majority of pointers usages that are found in usual programming
languages simply disappear in OCaml, or more exactly, those pointers are
totally automatically handled by the compiler. Thus, the OCaml programmer
can safely ignore the existence of pointers, focusing on the semantics of their
program.

For instance, lists or trees are defined without explicit pointers using
a concrete datatype definition. The underlying implementation uses
pointers, but this is hidden from the programmer since pointer
handling is done by the compiler.

In the rare occasions where explicit pointers are needed (the most
common case is when translating into OCaml an algorithm described in a
classic imperative language), OCaml provides references that are
full-fledged pointers, even first class citizen pointers (references can
be passed as argument, embedded into arbitrary data structures, and
returned as function results).