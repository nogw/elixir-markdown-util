---
category: Language
title: Labels
identifier: labels
index: 6
---

# Labels

## Labelled and optional arguments to functions

Python has a nice syntax for writing arguments to functions. Here's
an example (from the Python tutorial, since I'm not a Python
programmer):

```python
def ask_ok(prompt, retries=4, complaint='Yes or no, please!'):
  # function definition omitted
```
Here are the ways we can call this Python function:

```python
ask_ok ('Do you really want to quit?')
ask_ok ('Overwrite the file?', 2)
ask_ok (prompt='Are you sure?')
ask_ok (complaint='Please answer yes or no!', prompt='Are you sure?')
```