
_aleatorio:

;exercicio2.c,24 :: 		int aleatorio(){
;exercicio2.c,25 :: 		return (rand()%6)+1;
	CALL        _rand+0, 0
	MOVLW       6
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	INFSNZ      R0, 1 
	INCF        R1, 1 
;exercicio2.c,26 :: 		}
L_end_aleatorio:
	RETURN      0
; end of _aleatorio

_acendeLedD:

;exercicio2.c,29 :: 		void acendeLedD(int n){
;exercicio2.c,30 :: 		if(n == 1){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD35
	MOVLW       1
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD35:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD0
;exercicio2.c,31 :: 		portd.rd1 = 1;
	BSF         PORTD+0, 1 
;exercicio2.c,32 :: 		}
	GOTO        L_acendeLedD1
L_acendeLedD0:
;exercicio2.c,33 :: 		else if(n == 2){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD36
	MOVLW       2
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD36:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD2
;exercicio2.c,34 :: 		portd.rd2 = 1;
	BSF         PORTD+0, 2 
;exercicio2.c,35 :: 		}
	GOTO        L_acendeLedD3
L_acendeLedD2:
;exercicio2.c,36 :: 		else if(n == 3){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD37
	MOVLW       3
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD37:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD4
;exercicio2.c,37 :: 		portd.rd3 = 1;
	BSF         PORTD+0, 3 
;exercicio2.c,38 :: 		}
	GOTO        L_acendeLedD5
L_acendeLedD4:
;exercicio2.c,39 :: 		else if(n == 4){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD38
	MOVLW       4
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD38:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD6
;exercicio2.c,40 :: 		portd.rd4 = 1;
	BSF         PORTD+0, 4 
;exercicio2.c,41 :: 		}
	GOTO        L_acendeLedD7
L_acendeLedD6:
;exercicio2.c,42 :: 		else if(n == 5){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD39
	MOVLW       5
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD39:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD8
;exercicio2.c,43 :: 		portd.rd5 = 1;
	BSF         PORTD+0, 5 
;exercicio2.c,44 :: 		}
	GOTO        L_acendeLedD9
L_acendeLedD8:
;exercicio2.c,45 :: 		else if(n == 6){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD40
	MOVLW       6
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD40:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD10
;exercicio2.c,46 :: 		portd.rd6 = 1;
	BSF         PORTD+0, 6 
;exercicio2.c,47 :: 		}
L_acendeLedD10:
L_acendeLedD9:
L_acendeLedD7:
L_acendeLedD5:
L_acendeLedD3:
L_acendeLedD1:
;exercicio2.c,48 :: 		}
L_end_acendeLedD:
	RETURN      0
; end of _acendeLedD

_acendeLedB:

;exercicio2.c,51 :: 		void acendeLedB(int n){
;exercicio2.c,52 :: 		if(n == 1){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB42
	MOVLW       1
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB42:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB11
;exercicio2.c,53 :: 		portb.rb1 = 1;
	BSF         PORTB+0, 1 
;exercicio2.c,54 :: 		}
	GOTO        L_acendeLedB12
L_acendeLedB11:
;exercicio2.c,55 :: 		else if(n == 2){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB43
	MOVLW       2
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB43:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB13
;exercicio2.c,56 :: 		portb.rb2 = 1;
	BSF         PORTB+0, 2 
;exercicio2.c,57 :: 		}
	GOTO        L_acendeLedB14
L_acendeLedB13:
;exercicio2.c,58 :: 		else if(n == 3){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB44
	MOVLW       3
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB44:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB15
;exercicio2.c,59 :: 		portb.rb3 = 1;
	BSF         PORTB+0, 3 
;exercicio2.c,60 :: 		}
	GOTO        L_acendeLedB16
L_acendeLedB15:
;exercicio2.c,61 :: 		else if(n == 4){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB45
	MOVLW       4
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB45:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB17
;exercicio2.c,62 :: 		portb.rb4 = 1;
	BSF         PORTB+0, 4 
;exercicio2.c,63 :: 		}
	GOTO        L_acendeLedB18
L_acendeLedB17:
;exercicio2.c,64 :: 		else if(n == 5){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB46
	MOVLW       5
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB46:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB19
;exercicio2.c,65 :: 		portb.rb5 = 1;
	BSF         PORTB+0, 5 
;exercicio2.c,66 :: 		}
	GOTO        L_acendeLedB20
L_acendeLedB19:
;exercicio2.c,67 :: 		else if(n == 6){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB47
	MOVLW       6
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB47:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB21
;exercicio2.c,68 :: 		portb.rb6 = 1;
	BSF         PORTB+0, 6 
;exercicio2.c,69 :: 		}
L_acendeLedB21:
L_acendeLedB20:
L_acendeLedB18:
L_acendeLedB16:
L_acendeLedB14:
L_acendeLedB12:
;exercicio2.c,70 :: 		}
L_end_acendeLedB:
	RETURN      0
; end of _acendeLedB

_main:

;exercicio2.c,72 :: 		void main ()
;exercicio2.c,78 :: 		trisb = 1;
	MOVLW       1
	MOVWF       TRISB+0 
;exercicio2.c,82 :: 		trisd = 0;
	CLRF        TRISD+0 
;exercicio2.c,87 :: 		trisc = 0xFD; // 0b11111101
	MOVLW       253
	MOVWF       TRISC+0 
;exercicio2.c,90 :: 		portc.rc1 = 1;
	BSF         PORTC+0, 1 
;exercicio2.c,93 :: 		portb = 0;
	CLRF        PORTB+0 
;exercicio2.c,94 :: 		portd = 0;
	CLRF        PORTD+0 
;exercicio2.c,97 :: 		while(1)
L_main22:
;exercicio2.c,101 :: 		while (portb.rb0 == 0)
L_main24:
	BTFSC       PORTB+0, 0 
	GOTO        L_main25
;exercicio2.c,104 :: 		portb = 0;
	CLRF        PORTB+0 
;exercicio2.c,105 :: 		portd = 0;
	CLRF        PORTD+0 
;exercicio2.c,109 :: 		if ((ledB == 6) && (ledD == 6)){
	MOVLW       0
	XORWF       _ledB+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main49
	MOVLW       6
	XORWF       _ledB+0, 0 
L__main49:
	BTFSS       STATUS+0, 2 
	GOTO        L_main28
	MOVLW       0
	XORWF       _ledD+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main50
	MOVLW       6
	XORWF       _ledD+0, 0 
L__main50:
	BTFSS       STATUS+0, 2 
	GOTO        L_main28
L__main32:
;exercicio2.c,110 :: 		portc.rc1 = 0;
	BCF         PORTC+0, 1 
;exercicio2.c,111 :: 		acendeLedB(ledB);
	MOVF        _ledB+0, 0 
	MOVWF       FARG_acendeLedB_n+0 
	MOVF        _ledB+1, 0 
	MOVWF       FARG_acendeLedB_n+1 
	CALL        _acendeLedB+0, 0
;exercicio2.c,112 :: 		acendeLedD(ledD);
	MOVF        _ledD+0, 0 
	MOVWF       FARG_acendeLedD_n+0 
	MOVF        _ledD+1, 0 
	MOVWF       FARG_acendeLedD_n+1 
	CALL        _acendeLedD+0, 0
;exercicio2.c,113 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main29:
	DECFSZ      R13, 1, 1
	BRA         L_main29
	DECFSZ      R12, 1, 1
	BRA         L_main29
	DECFSZ      R11, 1, 1
	BRA         L_main29
	NOP
	NOP
;exercicio2.c,114 :: 		portc.rc1 = 1;
	BSF         PORTC+0, 1 
;exercicio2.c,115 :: 		}
	GOTO        L_main30
L_main28:
;exercicio2.c,118 :: 		acendeLedB(ledB);
	MOVF        _ledB+0, 0 
	MOVWF       FARG_acendeLedB_n+0 
	MOVF        _ledB+1, 0 
	MOVWF       FARG_acendeLedB_n+1 
	CALL        _acendeLedB+0, 0
;exercicio2.c,119 :: 		acendeLedD(ledD);
	MOVF        _ledD+0, 0 
	MOVWF       FARG_acendeLedD_n+0 
	MOVF        _ledD+1, 0 
	MOVWF       FARG_acendeLedD_n+1 
	CALL        _acendeLedD+0, 0
;exercicio2.c,120 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main31:
	DECFSZ      R13, 1, 1
	BRA         L_main31
	DECFSZ      R12, 1, 1
	BRA         L_main31
	DECFSZ      R11, 1, 1
	BRA         L_main31
	NOP
	NOP
;exercicio2.c,121 :: 		}
L_main30:
;exercicio2.c,123 :: 		ledB = aleatorio();
	CALL        _aleatorio+0, 0
	MOVF        R0, 0 
	MOVWF       _ledB+0 
	MOVF        R1, 0 
	MOVWF       _ledB+1 
;exercicio2.c,124 :: 		ledD = aleatorio();
	CALL        _aleatorio+0, 0
	MOVF        R0, 0 
	MOVWF       _ledD+0 
	MOVF        R1, 0 
	MOVWF       _ledD+1 
;exercicio2.c,125 :: 		}
	GOTO        L_main24
L_main25:
;exercicio2.c,128 :: 		portb = 0;
	CLRF        PORTB+0 
;exercicio2.c,129 :: 		portd = 0;
	CLRF        PORTD+0 
;exercicio2.c,130 :: 		}
	GOTO        L_main22
;exercicio2.c,131 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
