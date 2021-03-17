.MODEL SMALL
 
.STACK 100H

.DATA 

.CODE 
MAIN PROC 

;iniitialize DS

;MOV AX,@DATA 
;MOV DS,AX      

;Code here  
; X*Y/Z

MOV AX,2 ; AX is Y
MOV BX,2 ; BX is Z
DIV BX
MOV CX,2 ; CX is X
MUL CX



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 