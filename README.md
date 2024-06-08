# AHK for Mortal Online 2

## What is it?
This is a small collection of AutoHotkey scripts for MO2. I've tried to document features in the actual script files, and I might spend some time doing that here one day ™

## How do I even use these?
- First, download AutoHotkey
- Second, write your own script or download one. AutoHotkey scripts save as `.ahk` files and once you have the software installed your OS will recognize them.
- Double click the file to run the script

Note: Scripts run in the background and are pretty much invisible outside of the execution of their lines in whatever application they are directed towards. You can exit out of them by right+clicking the AHK icon for the script you're running in the bottom right of your desktop in the task bar.

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

## Simulating holding a key down

You can use the basic format of `{<key> Down/Up}` to either have a key pressed down, or to release it back up again. 

Example:
```
ControlSend, , {b Down}, Mortal Online 2
ControlSend, , {b Up}, Mortal Online 2

ControlSend, , {LButton Down}, Mortal Online 2
ControlSend, , {LButton Up}, Mortal Online 2
```

The first example is pushing down the `b` key, then releasing it. The second example is to show the syntax for the left mouse buttons. There is also `RButton` (right click) and `MButton` scroll wheel middle button. You can even get as specific as `LControl`, `RControl`, `LAlt`, `RAlt`, `LShift`, `RShift` which correspond to Left/Right variations for the `ctrl`, `alt`, and `shift` keys. 

The full list of programmable keys can be found here:

https://www.autohotkey.com/docs/v1/KeyList.htm
