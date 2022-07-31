---
category: Language
title: If Statements, Loops and Recursions
identifier: if_statements_loops_and_recursions
index: 5
---

# If Statements, Loops and Recursions

## If statements (actually, these are if expressions)
OCaml has an `if` statement with two variations, and the obvious meaning:

<!-- $MDX skip -->
```ocaml
if boolean-condition then expression
  
if boolean-condition then expression else other-expression
```

Unlike in the conventional languages you'll be used to, `if` statements
are really expressions. In other words, they're much more like
`boolean-condition ? expression : other-expression` in C than like the if
statements you may be used to.

Here's a simple example of an `if` statement:

```ocaml
# let max a b =
  if a > b then a else b;;
val max : 'a -> 'a -> 'a = <fun>
```
