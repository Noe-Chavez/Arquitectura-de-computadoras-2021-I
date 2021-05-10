 
		.386											; se seleciona el microprosesador
							
		.model flat, stdcall							; el modelo de memoria

		.stack 2560										; 2KB RAM para la pila del sistema  

ExitProcess PROTO, dwExitCode:DWORD		
		; Converir cadena a mayusculas.
		.data											; determina el segmento de datos								

		cadena1	BYTE "Hola MuNDo", 0				; El cero corresponde al fin de cadena.
		cadena2	BYTE 256 DUP(0)						; Reservando 256 casillas de tipo byte, inicializadas a cero.

		.CODE											; inicia la seccion del codigo
main proc
	
		MOV	ESI, OFFSET cadena1		; Se carga dirección de memoria  al registro ESI, offset se apunta a la cadenas y el resto de sus dato.
		MOV EDI, OFFSET cadena2		; Se guarda la dirección de memoria destino al registro EDI
		CLD							; D = 0, Se establece la direccion para el incremento de los registros indices.
		MOV ECX, 10
INICIO_LOOP:
		LODSB
		CMP AL, 'a'
		SETGE BL
		CMP AL, 'z'
		SETLE DL 
		AND BL, DL
		JE ETIQ1
		SUB AL, 32
ETIQ1:  STOSB
		LOOP INICIO_LOOP

	invoke ExitProcess, 0
main endp
	end