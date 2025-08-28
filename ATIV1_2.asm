TITLE Eco
.MODEL SMALL
.CODE
MAIN PROC
    ; Exbibe o caracter ? na tela
    MOV AH, 2
    MOV DL, '?'
    INT 21H

    ; scan de um caractere do usuário e salva o caracter lido em AL
    MOV AH, 1
    INT 21H

    ; Copia o caractere lido para BL
    MOV BL, AL

    ; Exibe o caractere Line Feed (move o cursor para a linha seguinte)
    MOV AH, 2
    MOV DL, 10 ; O código ASC do caracter Line Feed é 10 (0Ah)
    INT 21H

    ; Exibe o caractere Carriage Return (move o cursor para o canto esquerdo da tela)
    MOV AH, 2
    MOV DL, 13 ; O código ASC do caracter Carriage Return é 13 (0Dh)
    INT 21H
    
    ; Exibe o caractere lido em BL
    MOV AH, 2
    MOV DL, BL ; o caracterew lido está em BL
    INT 21H

    ; Finaliza o programa
    MOV AH, 4Ch
    INT 21H
MAIN endp
END MAIN
