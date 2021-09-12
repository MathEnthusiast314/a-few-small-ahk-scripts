
PgUp::
p:=Morse()
If (p = "01")
{
extractdata := "a"
}
else if (p = "1000")
{ 
extractdata := "b"
}
else if (p = "1010") 
{
extractdata := "c"
}
else if (p = "100") 
{
extractdata := "d"
}
else if (p = "0") 
{
extractdata := "e"
}
else if (p = "0010") 
{
extractdata := "f"
}
else if (p = "110") 
{
extractdata := "g"
}
else if (p = "0000") 
{
extractdata := "h"
}
else if (p = "00") 
{
extractdata := "i"
}
else if (p = "0111") 
{
extractdata := "j"
}
else if (p = "101") 
{
extractdata := "k"
}
else if (p = "0100") 
{
extractdata := "l"
}
else if (p = "11") 
{
extractdata := "m"
}
else if (p = "10") 
{
extractdata := "n"
}
else if (p = "111") 
{
extractdata := "o"
}
else if (p = "0110") 
{
extractdata := "p"
}
else if (p = "1101") 
{
extractdata := "q"
}
else if (p = "010") 
{
extractdata := "r"
}
else if (p = "000") 
{
extractdata := "s"
}
else if (p = "1") 
{
extractdata := "t"
}
else if (p = "001") 
{
extractdata := "u"
}
else if (p = "0001") 
{
extractdata := "v"
}
else if (p = "011") 
{
extractdata := "w"
}
else if (p = "1001") 
{
extractdata := "x"
}
else if (p = "1011") 
{
extractdata := "y"
}
else if (p = "1100") 
{
extractdata := "z"
}
else if (p = "01111") 
{
extractdata := "1"
}
else if (p = "00111") 
{
extractdata := "2"
}
else if (p = "00011") 
{
extractdata := "3"
}
else if (p = "00001") 
{
extractdata := "4"
}
else if (p = "00000") 
{
extractdata := "5"
}
else if (p = "10000") 
{
extractdata := "6"
}
else if (p = "11000") 
{
extractdata := "7"
}
else if (p = "11100") 
{
extractdata := "8"
}
else if (p = "11110") 
{
extractdata := "9"
}
else if (p = "11111") 
{
extractdata := "0"
}
else if (p = "010101") 
{
extractdata := "."
}
else if (p = "110011") 
{
extractdata := ","
}
else if (p = "001100") 
{
extractdata := "?"
}
else
{
extractdata := ""
}
Send, %extractdata%
return

;; Functions
Morse(timeout = 230) ;; Change this value according to your own tastes with respect to timeout 
{
	tout := timeout/1000
	key := RegExReplace(A_ThisHotKey,"[\*\~\$\#\+\!\^]")
	Loop {
		t := A_TickCount
		KeyWait %key%
		Pattern .= A_TickCount-t > timeout
		KeyWait %key%,DT%tout%
		If (ErrorLevel)
			Return Pattern
	}
}