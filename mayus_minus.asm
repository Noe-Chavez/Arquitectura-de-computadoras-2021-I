	.386									; se seleciona el microprosesador
							
		.MODEL flat, stdcall					; el modelo de memoria

		; 2KB RAM para la pila del sistema  

ExitProcess PROTO, dwExitCode:DWORD		
		.DATA									; determina el segmento de datos

	cadena1	BYTE "HoLa MuNdO", 0				; para hacer comatible en en lenguaje c, se debe terminar en 0, ya que es el equivalente al nulo en c
	cadena2	BYTE 256 DUP(0)						; reserva 256 casillas consecutivos en memoria de tipo byte, inicializadas con cero 

		.CODE									; inicia la seccion del codigo
main PROC
	
	MOV ESI, OFFSET cadena1					    ; se guarda la direccion de memoria fuente al registro SI (start index), el offset es para indicar que es una dirección de memoria y es encadenada (para desplazarse según el tipo de dato)
	MOV EDI, OFFSET cadena2						; se guarda la diraccipon de memoria destino al registro DI
	CLD											; D = 0, para incrementar tanto el SI como DI en una unidad
	MOV ECX, 10

inicio_loop:
	LODSB
	CMP AL, 'a'									; si es mayor a cero
	SETGE BL									; establecesmo BL = 0
	CMP AL, 'Z'									; si es menor a cero 
	SETLE DL									; establecemos DL = 0
	AND BL, DL									; comparar EBX con EDX
	
	JE repetir
	SUB AL, 32
repetir: 
	STOSB
	LOOP inicio_loop

	INVOKE ExitProcess, 0
main ENDP
	END