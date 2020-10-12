.586
.model flat, stdcall
extern MessageBoxA@16:near

includelib C:\masm32\lib\user32.lib

data segment
	head db "Стихотворение",0
	mess db "Ехал Грека через реку.",13,
	        "Видит Грека в реке рак.",13, 
			"Сунул в реку руку Грека.",13, 
			"Рак за руку Греку - цап.",13,13,
            "Завершить программу?",0	
data ends

text segment
start:
	push 68
	push offset head
	push offset mess
	push 0
	call MessageBoxA@16
	cmp eax,7
	jz start
	ret
text ends
end start

