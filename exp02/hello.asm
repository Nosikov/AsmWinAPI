.model SMALL
.386
.model flat, stdcall
.stack 100h
.data
		Message db 'Hello, World$'
.code

start:
		mov ax, @data
		mov ds, ax
		
		mov dx, offset Message
		mov ah, 9h
		int 21h
		
		mov ah, 8h
		int 21h
		
		mov ah, 4Ch
		mov al, 00h
		int 21h
		
end start
