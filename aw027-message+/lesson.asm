.586
.model flat, stdcall
extern MessageBoxA@16:near

includelib C:\masm32\lib\user32.lib

data segment
	head db "�������������",0
	mess db "���� ����� ����� ����.",13,
	        "����� ����� � ���� ���.",13, 
			"����� � ���� ���� �����.",13, 
			"��� �� ���� ����� - ���.",13,13,
            "��������� ���������?",0	
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

