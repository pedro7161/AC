; pratica_001_14_12_20.asm
;
; Experimentos com os comandos loop, jz e jnz

; Executa ciclos para mostrar um conjunto de asteriscos no ecra
; 
; controlados pelos comandos loop, jz e jnz  


; Mostra 8 asteriscos no ecra usando ciclos


	#make_COM#
    
    ORG  100H   
    jmp inicio  

	
; Alocacao de dados

	.Data

                                                                         
; Area de codigo (instrucoes/comandos)

inicio:

	.Code
	
	mov cx, 8 ;numero de loops
	mov ah, 2
	mov dl, '!' ;  o que vai ser escrito no loop
l1:
int 21h
dec cx  ;vai reduzindo o valor de cx ate zero
jz fim
jmp l1     

; O programa esta terminado

fim:
    MOV AH, 4Ch
    INT 21h



