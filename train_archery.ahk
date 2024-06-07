F7::
    ControlSend, , {LButton Up}, Mortal Online 2
    Sleep 250
    Reload

F6::Pause

F5::
    quiver = 0
    quivers = 9
    bow = 1
    bows = 3
    bow_max_dura = 50
    bow_dura = %bow_max_dura%
    ;controlsend,, [{enter}Quiver: %quiver% Bow: %bow% %bow_dura%{enter}], Mortal Online 2
    
    while(quiver <= quivers and bow <= bows){
        Loop 50 {
            ControlSend, , {LButton Down}, Mortal Online 2
            Sleep 205
            ControlSend, , {LButton Up}, Mortal Online 2
            Sleep 1000
            bow_dura -= .10
            ;controlsend,, [{enter}bowdura: %bow_dura% {enter}], Mortal Online 2
            if(bow_dura <= 0){
                ControlSend, , {+%bow%}, Mortal Online 2
                bow++
                bow_dura = %bow_max_dura%
                Sleep 1000
            }
        }
        Sleep 1000
        ControlSend, , {%quiver%}, Mortal Online 2
        Sleep 1000
        quiver++
        ;controlsend,, [{enter}Quiver: %quiver% Bow: %bow% {enter}], Mortal Online 2
    }