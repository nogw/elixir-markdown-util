---
category: Language
title: Functors
identifier: functors
index: 3
---

# Functors

Functors are probably one of the most complex features of OCaml, but you don't
have to use them extensively to be a successful OCaml programmer.  Actually,
you may never have to define a functor yourself, but you will surely encounter
them in the standard library. They are the only way of using the Set and Map
modules, but using them is not so difficult.

##  What are functors and why do we need them?

A functor is a module that is parametrized by another module, just like a
function is a value which is parametrized by other values, the arguments.

It allows one to parametrize a type by a value, which is not possible directly
in OCaml without functors. For example, we can define a functor that takes an
int n and returns a collection of array operations that work exclusively on
arrays of length n. If by mistake the programmer passes a regular array to one
of those functions, it will result in a compilation error. If we were not using
this functor but the standard array type, the compiler would not be able to
detect the error, and we would get a runtime error at some undetermined date in
the future, which is much worse.