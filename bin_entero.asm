 
		.386									; se seleciona el microprosesador
							
		.MODEL flat, stdcall					; el modelo de memoria

		; 2KB RAM para la pila del sistema  

ExitProcess PROTO, dwExitCode:DWORD		
		.DATA									; determina el segmento de datos

		multiplicando	DWORD 2
		multiplicador	DWORD 4

		base_num		DWORD 5				; valor que deseamos calcular el factorial
		fact_base_num	DWORD 0	

		.CODE									; inicia la seccion del codigo
main PROC
	
	; LOOP para calcular el producto de dos numeros sin multiplicar.
	MOV EAX, 0									; inicializamos el contador
	MOV ECX, multiplicando						; las veces que queremos que se ejecute el loop
	MOV EBX, 0
ciclo:
	INC EAX										; incremento en una unidad al registro EAX
	ADD EBX, multiplicador  
	LOOP ciclo									; mientras ECX sea distinto de cero salta a la etiqueta ciclo (debe ser cero todo el registro).

	; LOOP para calcular el factorial de un número
	MOV EDX, 0									; EDX (64 bits) <-- EAX (32 bits) + ECX (32 bits), se parte ya que no cabe en uno de 32 bits
	MOV EAX, 1									; inicializando el acumulador
	MOV ECX, base_num							; inicializando el contador
cicloFact:
	MUL ECX										; multiplicamos por el contador ya que se decrementar en uno
	LOOP cicloFact

	MOV fact_base_num, EAX 

	; LOOP condicional 


	INVOKE ExitProcess, 0
main ENDP
	END