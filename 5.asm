assume cs:c_seg, ds:d_seg

d_seg segment
array DB ?
d_seg ends

c_seg segment
start:
	MOV AX, 100
	MOV BX, 13
	MOV BX, OFFSET array
	INT 3
c_seg ends
end start