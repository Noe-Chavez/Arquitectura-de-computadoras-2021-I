		.386
		.model flat, stdcall

		.stack 2560

ExitProcess	proto, dwExitCode:dword

;Convertir 

		.data
lista	word 4,3,1,7,6
fact_N  dword 0
N		DWORD 15
max  word 0

		.code
main	proc 
		
		mov EDX, 0
		mov eax,1
		mov ecx, N

eti1:	MUL ecx
		loop eti1

		MOV fact_N, EAX


		invoke ExitProcess, 0
main	endp 
		end