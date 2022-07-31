---
category: Getting Started
title: Get Up and Running With Soda 
identifier: get_up_and_running_with_soda
index: 2
---

# Get Up and Running With Soda

This page will walk you through the installation of Soda and the Dune build system, as well as offer support for your favourite text editor or IDE. These instructions work on Unix-based systems like Linux and macOS, and there are also instructions on how to install Soda on Windows.

## Installing OCaml

It's a straightfoward process to install Soda; however you will need [Homebrew](https://brew.sh/) or [MacPorts](https://www.macports.org/) if you're running Linux or macOS. [Opam](https://opam.ocaml.org/) is OCaml's package manager, so we'll install it first. You will also use Opam when installing third-party OCaml libraries.

Find the all installation instructions for both Unix-like systems and Windows below. If you're new to the CLI, the code blocks (in black) shows the required command (the text after # gives more information on the following commands). Type each command after the prompt $, although it's often represented by a %, >, or another symbol as well. Ensure you use the exact case and spacing shown, then hit return/enter at the end of every line.

**For Linux** the preferred way is to use your system's package manager on
Linux (e.g `apt-get install opam` or similar).

**Install Compiler**
It's essential to install the OCaml compiler because OCaml is language that the compiler is build, so please don't skip this step. The first part sets up Opam, and the second part installs the OCaml base compiler:

```bash
# environment setup
$ opam init
$ eval `opam env`

# install a specific version of the OCaml base compiler
$ opam switch create 4.14.0
$ eval `opam env`
```

```json
{
  "categories": [
    {
      "name": "getting-started",
      "tabs": [
        { "title": "Get Up and Running With Soda", 
          "path": "get_up_and_running_with_soda.md" },
        { "title": "Soda on Windows",
          "path": "soda_on_windows.md" },
        { "title": "A first hour with Soda",
          "path": "a_first_hour_with_soda.md" },
      ]
    }
  ]
}
```