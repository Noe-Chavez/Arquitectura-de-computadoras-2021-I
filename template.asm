		.386
		.MODEL flat, stdcall

		.STACK 2560

ExitProcess	PROTO, dwExitCode:DWORD

		.DATA

		.CODE
main	PROC 

		INVOKE ExitProcess, 0
main	ENDP 
		END