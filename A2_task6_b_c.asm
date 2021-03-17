.MODEL SMALL
 
.STACK 100H

.DATA 

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      

;Code here    

;input command
MOV AH,1
int 21h     

;line break

MOV AH,2
MOV DL,0AH   ;this will break the line
int 21h

MOV AH,2
MOV DL,0DH   ;this carrige return
int 21h


;input print

MOV AH,2
MOV DL,AL
int 21h



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 