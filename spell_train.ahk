; Sleep 1000 = 1 second

F7::Reload

F6::Pause

F5::
    Loop
    {
        ;5 second delay
        Sleep, 1000 * 5
        ;Side step back and forth
        ControlSend, , {a down}, Mortal Online 2
        Sleep, 1000 * 3.0
        ControlSend, , {a up}, Mortal Online 2
        ControlSend, , {d down}, Mortal Online 2
        Sleep, 1000 * 3.0
        ControlSend, , {d up}, Mortal Online 2
        Sleep, 1000 * 1.0

        ;Cast 25 times
        Loop 25 
        {
            ControlSend, , {e}, Mortal Online 2
            Sleep, 1000 * 1.5
        }

        ;Rest key, this assume ctrl+4
        ControlSend, , {^4}, Mortal Online 2
        ;Sleep for 60 seconds
        Sleep, 1000 * 60
    }