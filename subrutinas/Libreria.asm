; DEFINIENDO SUBRUTINA QUE SUMA DOS DATOS
; AX GUARDA EL PRIMER ARGUMENTO DEL LA SUBRUTINA SUMAR
; BX GUARDA EL SEGUNDO ARGUMENTO DE LA SUBRUTINA SUMAR
; AX GUARDA EL VALOR DE RETORNO DE LA SUBRUTINA SUMAR


		.386											; se seleciona el microprosesador		
		.model flat, stdcall							; el modelo de memoria

.code													; para guardar en seccion del programa
Sumar proc												; Inicio de subrutina sumar
	add ax, bx											; ax <-- ax + bx
	ret													; Para regresar al contros del contador del programa.
Sumar endp												; Fin de subrutina sumar.
	end