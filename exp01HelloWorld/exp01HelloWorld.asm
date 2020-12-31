;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
;        ПРОЦ, МОДЕЛЬ, ОПЦИИ, ИНКЛУДЫ, БИБЛИОТЕКИ ИМПОРТА
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

 .386
 .model flat,stdcall
option casemap:none

includelib kernel32.lib

SetConsoleTitleA PROTO :DWORD
GetStdHandle PROTO     :DWORD
WriteConsoleA PROTO    :DWORD,:DWORD,:DWORD,:DWORD,:DWORD
ExitProcess PROTO      :DWORD
Sleep PROTO            :DWORD


;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
;                         СЕКЦИЯ КОНСТАНТ
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

 .const

sConsoleTitle  db 'My First Console Application',0
sWriteText  db 'hEILo, Wo(R)LD!!'

;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
;                          СЕКЦИЯ КОДА
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

 .code

;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
;                    Самая Главная Процедура
;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

Main PROC
  LOCAL hStdout :DWORD        ;(1)

  ;титл консоли
  push offset sConsoleTitle   ;(2)
  call SetConsoleTitleA

  ;получаем хэндл вывода      ;(3)
  push -11
  call GetStdHandle
  mov hStdout,EAX

  ;выводим HELLO, WORLD!      ;(4)
  push 0
  push 0
  push 16d
  push offset sWriteText
  push hStdout
  call WriteConsoleA

  ;задержка, чтобы полюбоваться ;(5)
  push 20000d
  call Sleep

  ;выход                       ;(6)
  push 0
  call ExitProcess

Main ENDP

;-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

end Main