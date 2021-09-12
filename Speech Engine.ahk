; ----------------

^+S::
send, ^c
SetTitleMatchMode 2
EM_SETSEL := 0x00B1
 
text := clipboard . " "
 
pVoice := ComObjCreate("Sapi.spvoice"), i := 1 ; the spvoice COM Object ships with the OS
 
pVoice.speak(text)