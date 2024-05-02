d_seg SEGMENT
a DW ?
b DW ?
c DW ?
n DW ?
d_seg ENDS

c_seg SEGMENT
ASSUME CS:c_seg, DS:d_seg
start:
	MOV AX, a
	MOV BX, b
	MOV CX, c
	MOV DX, BX
	ADD DX, CX
	CMP AX, DX
	JL L1
L2: CMP BX, CX
	JE L3
	CMP AX, BX
	JNL L4
L3: ADD AX, BX
L4:	LOOP L2
	CMP AX, 0H
	JNE L1
	MOV DX, n
	CMP DX, 0H
	JNE L1
	INC CX
L1:
c_seg ENDS
END start