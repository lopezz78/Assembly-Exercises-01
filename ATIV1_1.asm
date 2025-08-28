TITLE Mensagens
.MODEL SMALL
.DATA ; Define strings que serão usados no programa
    MSG1 DB 'Mensagem 1.$'
    MSG2 DB 10,13,'Mensagem 2.$'
.CODE
MAIN proc
    ; Permite o acesso às variáveis definidas em .DATA
    MOV AX, @DATA
    MOV DS, AX ; Inicializa o segmento de dados

    ; Exibe na tela a string MSG1
    MOV AH, 9
    LEA DX, MSG1
    INT 21H

    ; Exibe na tela a string MSG2
    MOV AH, 9 
    LEA DX, MSG2
    INT 21H

    ; Finaliza o programa
    MOV AH,4CH 
    INT 21H  
MAIN endp ; Finaliza a função principal
END MAIN ; Indica o fim do programa

