
.MODEL SMALL
 
.STACK 100H

.DATA 

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      

;Code here    

;Task 02

MOV AH,1
int 21h
MOV BH,AL 


MOV AH,1
int 21h
MOV BL,AL   


ADD BH,AL
SUB BH,48


MOV AH,2
MOV DL,BH
int 21h 



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 