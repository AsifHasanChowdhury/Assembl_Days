.MODEL SMALL
 
.STACK 100H

.DATA 

.CODE 
MAIN PROC 

;iniitialize DS

;MOV AX,@DATA 
;MOV DS,AX      

;Code here

;C2A2*ABCD/BED

MOV AX,0ABCDh
MOV BX,0BEDh 
DIV BX
MOV CX,0C2A2h  
MUL CX



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 