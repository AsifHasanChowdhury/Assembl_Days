.MODEL SMALL
 
.STACK 100H

.DATA 

s db "THE SUM OF $"   

a db " AND $" 

b db " IS $"

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
MOV BL,AL


MOV AH,1
int 21h     
MOV BH,AL



;line break print
MOV AH,2
MOV DL,0AH   ;this will break the line
int 21h

MOV AH,2
MOV DL,0DH   ;this carrige return
int 21h

;input print

MOV AH,9
LEA DX,s    ;THE SUM of
int 21h

MOV AH,2
MOV DL,BL   ;value 1
int 21h  

MOV AH,9
LEA DX,a    ; AND
int 21h   


MOV AH,2
MOV DL,BH   ;value 2
int 21h 


MOV AH,9  
LEA DX,b    ; is 
int 21h   

ADD BH,BL
SUB BH,48


MOV AH,2
MOV DL,BH   ; the sum
int 21h




;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 