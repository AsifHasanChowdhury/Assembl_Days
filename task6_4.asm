.MODEL SMALL
 
.STACK 100H

.DATA 

.CODE 
MAIN PROC 

;iniitialize DS

;MOV AX,@DATA 
;MOV DS,AX      

;Code here
; A=B-(A-1)

MOV AL,0        

MOV BL,0 

DEC AL

NEG AL

ADD BL,AL

NEG AL

INC AL

MOV AL,BL 




;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 