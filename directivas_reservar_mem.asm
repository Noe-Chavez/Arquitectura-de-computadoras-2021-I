
		.386				;Se selecciona el microprocesador 
		.model flat,stdcall  ;El modelo de memoria

		.stack 2048   ;2KB RAM para la pila del sistema


ExitProcess PROTO, dwExitCode:DWORD

			.data		;inicio del segmento de datos

valor		BYTE ? ; //FFH
datoStr		BYTE "hola",0 
TAM_ARREGLO WORD ($ - datoStr -1)
datoB		BYTE 'a', 'B', 'C', 0 ; Reserva en memoria 4 byte contiguos
datoShort	WORD  00FFh ;0x00FF SHORT
datoInt		DWORD  00010203H

PI			REAL4  3.1413 ;FLOAT
PI_D		REAL8  3.1413 ;DOUBLE

ARREGLO_2	SWORD 2 DUP(0) 
		
		.CODE				;Inicia la sección de código
main proc 
	mov AX, #32H
	
	invoke ExitProcess, 0
main endp
	 end  


