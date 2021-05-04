 
		.386									; se seleciona el microprosesador
							
		.MODEL flat, stdcall					; el modelo de memoria

		; 2KB RAM para la pila del sistema  

ExitProcess PROTO, dwExitCode:DWORD		
		.DATA									; determina el segmento de datos

		num_1	BYTE "1", 0						; valor en ANCII del primer valor
		num_2   BYTE "3", 0						; valor en ANCII del segundo valor
		result	DB ?							; declaración de variable que almacena el resultado

		.CODE									; inicia la seccion del codigo
main PROC
	
	MOV AL, num_1								; AL <-- num_1
	MOV BL, num_2								; BL <-- num_2
	SUB AL, 30h									; AL <-- AL - 30h, para encontrar el valor equivalente numérico 1. 
	SUB BL, 30h									; BL <-- BL - 30h, para encontrar el valor equivalente numérico 3.

	ADD AL, BL									; AL <-- AL + valorB
	MOV result, AL								; result <-- AL

	INVOKE ExitProcess, 0
main ENDP
	END