---
category: Language
title: Data Types and Matching
identifier: data_types_and_matching
index: 1
---

# Data Types and Matching

In this tutorial we learn how to build our own types in OCaml, and how to write
functions which process this new data.

## Built-in compound types

We have already seen simple data types such as `int`, `float`, `string`, and
`bool`.  Let's recap the built-in compound data types we can use in OCaml to
combine such values. First, we have lists which are ordered collections of any
number of elements of like type:

```ocaml
# [];;
- : 'a list = []
# [1; 2; 3];;
- : int list = [1; 2; 3]
# [[1; 2]; [3; 4]; [5; 6]];;
- : int list list = [[1; 2]; [3; 4]; [5; 6]]
# [false; true; false];;
- : bool list = [false; true; false]
```
