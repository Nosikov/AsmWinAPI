.586
.model flat, stdcall
extern FindWindowA@8:near

extern SetWindowTextA@8:near

includelib C:\masm32\lib\user32.lib

data segment
	clas db "CalcFrame",0
	titl db "Компьютер",0
data ends

text segment
start:
	push 0
	push offset clas
	call FindWindowA@8
	
	
	push offset titl
	push eax
	call SetWindowTextA@8
	
	ret
text ends
end start

