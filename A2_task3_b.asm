.MODEL SMALL
 
.STACK 100H

.DATA 

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      

;Code here    

;Task 03

;input command
MOV AH,1
int 21h     
ADD AL,32

;input print

MOV AH,2
MOV DL,AL
int 21h





;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 