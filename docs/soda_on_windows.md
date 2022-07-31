---
category: Getting Started
title: Soda on Windows
identifier: soda_on_windows
index: 3
---

# Soda on Windows

Full support for OCaml on Windows is actively being worked on and a workable
environment can already be achieved today. A gentle reminder that if you do not
need Windows binaries, then a more stable option is to use WSL2. This is
described on the [up and running page](/docs/up-and-running-with-ocaml).

## opam-repository-mingw

[opam-repository-mingw](https://github.com/fdopen/opam-repository-mingw) is an
[opam repository](https://opam.ocaml.org/doc/Manual.html#Repositories)
containing patches for packages to build and install on Windows as well as
mingw-w64 and MSVC compiler variants (in both 32 and 64-bit). For a long time this has been
maintained by [@fdopen](https://fdopen.github.io/opam-repository-mingw/) along
with [installers](https://fdopen.github.io/opam-repository-mingw/installation/)
to create a custom Cygwin environment with opam and OCaml installed.

As of August 2021, [the repository will no longer be updated](https://fdopen.github.io/opam-repository-mingw/2021/02/26/repo-discontinued/). It is still useful as an overlay to
the [default opam repository](https://github.com/ocaml/opam-repository). This
means if a package exists in `opam-repository-mingw` the opam client will use
that information, otherwise it will fall through to `opam-repository`. To add
`opam-repository` as an underlay to your opam setup (assuming you followed the
manual installation from the [OCaml for Windows](https://fdopen.github.io/opam-repository-mingw/installation/)
site), you can use:

```
opam repo add upstream https://opam.ocaml.org --rank 2 --all-switches --set-default
```