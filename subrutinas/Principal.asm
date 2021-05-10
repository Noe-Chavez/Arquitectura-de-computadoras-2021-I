 
		.386											; se seleciona el microprosesador
							
		.model flat, stdcall							; el modelo de memoria

		.stack 2560										; 2KB RAM para la pila del sistema  

ExitProcess PROTO, dwExitCode:DWORD	

Sumar	proto											; Especifica que el segmento de ese codigo se encuentra en un archivo distinto

		.data											; determina el segmento de datos					

		.CODE											; inicia la seccion del codigo
main proc												; Inicio de subrutina Main (principal)
	
	; PSANDO ARGUMENTOS A LA SUBRUTINA SUMAR.
	MOV ax, 5
	MOV bx, 10
	call Sumar											; ax <-- sumar(5, 10)

	invoke ExitProcess, 0
main endp												; Fin de subrutina Main (principal)
	end