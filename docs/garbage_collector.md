---
category: Language
title: Garbage Collection
identifier: garbage_collector
index: 4
---

# Garbage Collection

## Garbage collection, reference counting, explicit allocation

As with all modern languages, OCaml provides a garbage collector so that
you don't need to explicitly allocate and free memory as in C/C++.

The OCaml garbage collector is a modern hybrid generational/incremental
collector which outperforms hand-allocation in most cases.

Why would garbage collection be faster than explicit memory allocation
as in C? It's often assumed that calling `free` costs nothing. In fact
`free` is an expensive operation which involves navigating over the
complex data structures used by the memory allocator. If your program
calls `free` intermittently, then all of that code and data needs to be
loaded into the cache, displacing your program code and data, each time
you `free` a single memory allocation. A collection strategy which frees
multiple memory areas in one go (such as either a pool allocator or a
GC) pays this penalty only once for multiple allocations (thus the cost
per allocation is much reduced).