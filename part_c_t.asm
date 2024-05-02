.model small

.stack 100

.data
    MUL_CAND_L DW 010h
    MUL_CAND_H DW 0h
    MUL_LIER_L DW 034h
    MUL_LIER_H DW 0h

    PRODUCT_0 DW 1 DUP(0)
    PRODUCT_1 DW 1 DUP(0)
    PRODUCT_2 DW 1 DUP(0)
    PRODUCT_3 DW 1 DUP(0)

.code
main    PROC FAR
        MOV AX, @DATA
        MOV DS, AX
        MOV AX, MUL_CAND_L
        MUL MUL_LIER_L
        MOV CX, AX
        MOV BP, DX
        MOV AX, MUL_CAND_H
        MUL MUL_LIER_H
        MOV DI, AX
        MOV SI, DX
        MOV AX, MUL_CAND_H
        MUL MUL_LIER_L
        ADD BP, AX
        ADC DI, DX
        ADC SI, 0H
        MOV AX, MUL_CAND_L
        MUL MUL_LIER_H
        ADD BP, AX        
        ADC DI, DX
        ADC SI, 0H
        MOV PRODUCT_0, CX
        MOV PRODUCT_1, BP
        MOV PRODUCT_2, DI
        MOV PRODUCT_3, SI
        INT 3H
main    ENDP
END MAIN
