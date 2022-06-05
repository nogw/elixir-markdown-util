---
category: Language
title: Objects
identifier: objects
index: 8
---

# Objects

## Objects and classes
OCaml is an object-oriented, imperative, functional programming language
:-) It mixes all these paradigms and lets you use the most appropriate
(or most familiar) programming paradigm for the task at hand. In this
chapter I'm going to look at object-oriented programming in OCaml, but
I'm also going to talk about why you might or might not want to write
object-oriented programs.

The classic noddy example used in text books to demonstrate
object-oriented programming is the stack class. This is a pretty
terrible example in many ways, but I'm going to use it here to show the
basics of writing object-oriented OCaml.

Here's some basic code to provide a stack of integers. The class is
implemented using a linked list.