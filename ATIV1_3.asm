TITLE Verificação de caractere
.MODEL SMALL
.DATA
    MSG1 DB 'Digite um caractere: $'
    MSG2 DB 'O caractere digitado foi: $'
.CODE
MAIN PROC

    ; Permite o acesso às variáveis definidas em .DATA
    MOV AX, @DATA
    MOV DS, AX

    ;  Imprime a mensagem solicitando a entrada de um caractere
    MOV AH, 9
    LEA DX, MSG1
    int 21h

    ; scan do input do usuário
    MOV AH, 1
    INT 21H

    ; Move o caractere lido para BL
    MOV BL, AL

    ; Exibe o caracter Line Feed (move o cursor para a linha seguinte)
    MOV AH, 2
    MOV DL, 10 ; O código ASC do caracter Line Feed é 10 (0Ah)
    INT 21H

    ; Exibe a mensagem com o caractere digitado
    MOV AH, 9
    LEA DX, MSG2
    int 21h

    ; Exibe o caracter lido em BL
    MOV AH, 2
    MOV DL, BL ; o caracter lido está em BL
    INT 21H

    ; Finaliza o programa
    MOV AH, 4Ch
    INT 21H
Main endp
END MAIN
