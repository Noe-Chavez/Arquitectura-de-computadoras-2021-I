		.386
		.model flat, stdcall

		.stack 2560

ExitProcess	proto, dwExitCode:dword

;Convertir una cadena en mayúsculas
		

		.data
cadena1  BYTE "hOlA munDo", 0
cadena2  BYTE 256 DUP(0)



		.code
main	proc 
		
		MOV ESI, OFFSET cadena1		;Se guarda la dirección de memoria fuente al registro SI
		MOV EDI, OFFSET cadena2		;Se guarda la dirección de memoria destino al registro DI

		CLD					; D=0 Se establece la dirección para incremento de los registro indices

		MOV ECX, 10

INICIO_LOOP:
		LODSB

		CMP al, 'a'
		SETGE BL
		CMP al, 'z'
		SETLE DL
		AND BL, DL
		JE ETIQ1

		SUB AL,32

ETIQ1:	STOSB
		
		LOOP INICIO_LOOP
		
		
	

		invoke ExitProcess, 0
main	endp 
		end