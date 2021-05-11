		.386
		.model flat, stdcall

		.stack 2560

ExitProcess	proto, dwExitCode:dword
		.data
lista	word 4,3,1,7,6
result  word 0

		.code
main2	proc 
		
		mov ax, 0  ; acum <--0
		mov esi, 0 ; i<--0
InicioWhile: 
		cmp esi, 5	; i - 5 ==> signo se enceinde o se apaga
		jge FinWhile
		add ax, lista[2*esi]
		inc esi
		jmp InicioWhile
FinWhile:
		mov result, ax

		

		;El modo de direccionamiento indirecto
		;mov edx, OFFSET lista
		;mov esi, 0

		
		
		;mov ax, [edx + 2*esi] ; ax <-- 4
		;mov ax, lista[2*esi]
		;inc esi
		;mov bx, [edx + 2]; bx <-- 3
		;add ax, [edx + 2*esi]  ; ax <-- ax + bx (ax <-- 4 + 3=7)
		;add ax, lista[2*esi]
		;inc esi
		;mov bx, [edx + 4] ; bx <-- 1
		;add ax, [edx + 2*esi]			; ax <-- ax + bx (ax <-- 7 + 1 = 8)
		;add ax, lista[2*esi]
		;inc esi
		
		;mov bx, [edx + 6] ; bx <-- 7
		;add ax, [edx + 2*esi]			; ax <-- ax + bx (ax <-- 8 + 7 = 15)
		;add ax, lista[2*esi]
		;inc esi

		;mov bx, [edx + 8] ; bx <-- 6
		;add ax, [edx + 2*esi]
		;add ax, lista[2*esi]
		;inc esi

		

		;El modo de direccionamiento directo
		;mov ax, [lista] ; ax <-- 4
		;mov bx, [lista + 2]; bx <-- 3
		;add ax, bx  ; ax <-- ax + bx (ax <-- 4 + 3=7)
		;mov bx, [lista + 4] ; bx <-- 1
		;add ax, bx			; ax <-- ax + bx (ax <-- 7 + 1 = 8)
		
		;mov bx, [lista + 6] ; bx <-- 7
		;add ax, bx			; ax <-- ax + bx (ax <-- 8 + 7 = 15)

		;mov bx, [lista + 8] ; bx <-- 6
		;add ax, bx			; ax <-- ax + bx (ax <-- 15 + 6 = 21)

		;mov result, ax
		
		invoke ExitProcess, 0
main2	endp 
		end

