.MODEL SMALL
 
.STACK 100H

.DATA 

.CODE 
MAIN PROC 

;iniitialize DS

;MOV AX,@DATA 
;MOV DS,AX      

;Code here

;task 6-3

MOV AX,2 ;this is A
MOV BX,1 ;this is B
INC BX
ADD DX,AX ;DX is C
ADD DX,BX



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 