---
category: Getting Started
title: Functional Programming
identifier: functional_programming
index: 4
---

# Functional Programming

## What is functional programming?
We've got quite far into the tutorial, yet we haven't really considered
**functional programming**. All of the features given so far - rich data
types, pattern matching, type inference, nested functions - you could
imagine could exist in a kind of "super C" language. These are Cool
Features certainly, and make your code concise, easy to read, and have
fewer bugs, but they actually have very little to do with functional
programming. In fact my argument is going to be that the reason that
functional languages are so great is *not* because of functional
programming, but because we've been stuck with C-like languages for
years and in the meantime the cutting edge of programming has moved on
considerably. So while we were writing
`struct { int type; union { ... } }` for the umpteenth time, ML and
Haskell programmers had safe variants and pattern matching on datatypes.
While we were being careful to `free` all our `malloc`s, there have been
languages with garbage collectors able to outperform hand-coding since
the 80s.

Well, after that I'd better tell you what functional programming is
anyhow.

The basic, and not very enlightening definition is this: in a
**functional language**, **functions** are first-class citizens.