 
		.586											; se seleciona el microprosesador
							
		.model flat, stdcall							; el modelo de memoria

		.stack 2048										; 2KB RAM para la pila del sistema  

ExitProcess PROTO, dwExitCode:DWORD		
		.data											; determina el segmento de datos								

	valorA	BYTE	0FFh
	valorB	BYTE	0AAh
; Intercambia el contenido de ambas variables
		.CODE											; inicia la seccion del codigo
main proc
	
	MOV AL, valorA	; carga el valor de valorA al registro AL
	MOV BL, valorB	; carga el valor de valorB al registro BL
	MOV CL, AL		; mover al registro CL el valor cargado en el registro AL
	MOV AL, BL
	MOV BL, CL
	MOV	valorA, AL
	MOV valorB, BL

	invoke ExitProcess, 0
main endp
	end