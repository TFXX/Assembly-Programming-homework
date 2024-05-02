D_SEG segment
AUGEND dw 9251
SUM dw 0
D_SEG ends

E_SEG segment
ADDEND dw -5962
E_SEG ends

S_SEG segment STACK
S_SEG ends

C_SEG segment
    assume cs:C_SEG, ds:D_SEG, es:E_SEG, ss:S_SEG
start:
    mov ax, ds:[AUGEND]
    add ax, es:[ADDEND]
    mov ds:[SUM], ax
C_SEG ends
end start