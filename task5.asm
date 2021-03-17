.MODEL SMALL
 
.STACK 100H

.DATA 

.CODE 
MAIN PROC 

;iniitialize DS

;MOV AX,@DATA 
;MOV DS,AX      

;Code here   

;task 5

ADD AL, 2

ADD BL, 4

ADD DL, 0

ADD DL,AL  ;DL e ase 2
           
ADD AL,BL  ;AL e ase 6

SUB AL,DL  ; AL e thakbe 4
   
ADD BL,DL  ; BL e ase 6

SUB DL,DL  ; DL e ase 0

ADD DL,AL  ; DL e ase 4

SUB BL,DL  ; BL e 2


;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 