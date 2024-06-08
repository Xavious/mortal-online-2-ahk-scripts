# AHK for Mortal Online 2

## What is it?
This is a small collection of AutoHotkey scripts for MO2. I've tried to document features in the actual script files, and I might spend some time doing that here one day ™

## AutoHotkey Modifiers
`^` - ctrl
`!` - shift
`+` - alt

Example:
```
^g::
  controlsend,, {4}, Mortal Online 2
  controlsend,, {8}, Mortal Online 2
```

Pushing `ctrl+g` sends two keypresses to the application, in this case `4` followed by `8`. This allows you to create your own key modifiers in situations where this level of complexity and control isn't facilitated by the game client.
