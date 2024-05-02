c_seg SEGMENT
ASSUME CS:c_seg
start: XOR AX, BX
JZ L1
MOV AX, 0 
L1: MOV AX, 1
c_seg ENDS
END start