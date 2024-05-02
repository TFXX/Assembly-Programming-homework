data segment
org 20h
    num1=8
    num2=num1+10h
    da1 db 'IBM PC'
    da2 db 0ah, 0dh
    count equ $-da1
data ends
end