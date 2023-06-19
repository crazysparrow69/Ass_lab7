.386
.model flat, stdcall
option casemap:none

extern valuesA:qword, one:qword, four:qword
public thirdProcedure

.code

thirdProcedure proc
    fld valuesA[ebp * 8] ;; a in stack
    fdiv four            ;; a/4
    fld one              ;; 1 in stack
    fsub                 ;; a/4 - 1
    ret
thirdProcedure endp

end