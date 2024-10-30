
_aleatorio:

;exercicio2.c,19 :: 		int aleatorio(){
;exercicio2.c,20 :: 		return (rand()%6)+1;
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
;exercicio2.c,21 :: 		}
L_end_aleatorio:
	RETURN      0
; end of _aleatorio

_acendeLedD:

;exercicio2.c,23 :: 		void acendeLedD(int n){
;exercicio2.c,24 :: 		if(n == 1){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD33
	MOVLW       1
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD33:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD0
;exercicio2.c,25 :: 		portd.rd1 = 1;
	BSF         PORTD+0, 1 
;exercicio2.c,26 :: 		}
	GOTO        L_acendeLedD1
L_acendeLedD0:
;exercicio2.c,27 :: 		else if(n == 2){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD34
	MOVLW       2
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD34:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD2
;exercicio2.c,28 :: 		portd.rd2 = 1;
	BSF         PORTD+0, 2 
;exercicio2.c,29 :: 		}
	GOTO        L_acendeLedD3
L_acendeLedD2:
;exercicio2.c,30 :: 		else if(n == 3){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD35
	MOVLW       3
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD35:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD4
;exercicio2.c,31 :: 		portd.rd3 = 1;
	BSF         PORTD+0, 3 
;exercicio2.c,32 :: 		}
	GOTO        L_acendeLedD5
L_acendeLedD4:
;exercicio2.c,33 :: 		else if(n == 4){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD36
	MOVLW       4
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD36:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD6
;exercicio2.c,34 :: 		portd.rd4 = 1;
	BSF         PORTD+0, 4 
;exercicio2.c,35 :: 		}
	GOTO        L_acendeLedD7
L_acendeLedD6:
;exercicio2.c,36 :: 		else if(n == 5){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD37
	MOVLW       5
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD37:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD8
;exercicio2.c,37 :: 		portd.rd5 = 1;
	BSF         PORTD+0, 5 
;exercicio2.c,38 :: 		}
	GOTO        L_acendeLedD9
L_acendeLedD8:
;exercicio2.c,39 :: 		else if(n == 6){
	MOVLW       0
	XORWF       FARG_acendeLedD_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedD38
	MOVLW       6
	XORWF       FARG_acendeLedD_n+0, 0 
L__acendeLedD38:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedD10
;exercicio2.c,40 :: 		portd.rd6 = 1;
	BSF         PORTD+0, 6 
;exercicio2.c,41 :: 		}
L_acendeLedD10:
L_acendeLedD9:
L_acendeLedD7:
L_acendeLedD5:
L_acendeLedD3:
L_acendeLedD1:
;exercicio2.c,42 :: 		}
L_end_acendeLedD:
	RETURN      0
; end of _acendeLedD

_acendeLedB:

;exercicio2.c,44 :: 		void acendeLedB(int n){
;exercicio2.c,45 :: 		if(n == 1){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB40
	MOVLW       1
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB40:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB11
;exercicio2.c,46 :: 		portb.rb1 = 1;
	BSF         PORTB+0, 1 
;exercicio2.c,47 :: 		}
	GOTO        L_acendeLedB12
L_acendeLedB11:
;exercicio2.c,48 :: 		else if(n == 2){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB41
	MOVLW       2
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB41:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB13
;exercicio2.c,49 :: 		portb.rb2 = 1;
	BSF         PORTB+0, 2 
;exercicio2.c,50 :: 		}
	GOTO        L_acendeLedB14
L_acendeLedB13:
;exercicio2.c,51 :: 		else if(n == 3){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB42
	MOVLW       3
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB42:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB15
;exercicio2.c,52 :: 		portb.rb3 = 1;
	BSF         PORTB+0, 3 
;exercicio2.c,53 :: 		}
	GOTO        L_acendeLedB16
L_acendeLedB15:
;exercicio2.c,54 :: 		else if(n == 4){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB43
	MOVLW       4
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB43:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB17
;exercicio2.c,55 :: 		portb.rb4 = 1;
	BSF         PORTB+0, 4 
;exercicio2.c,56 :: 		}
	GOTO        L_acendeLedB18
L_acendeLedB17:
;exercicio2.c,57 :: 		else if(n == 5){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB44
	MOVLW       5
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB44:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB19
;exercicio2.c,58 :: 		portb.rb5 = 1;
	BSF         PORTB+0, 5 
;exercicio2.c,59 :: 		}
	GOTO        L_acendeLedB20
L_acendeLedB19:
;exercicio2.c,60 :: 		else if(n == 6){
	MOVLW       0
	XORWF       FARG_acendeLedB_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__acendeLedB45
	MOVLW       6
	XORWF       FARG_acendeLedB_n+0, 0 
L__acendeLedB45:
	BTFSS       STATUS+0, 2 
	GOTO        L_acendeLedB21
;exercicio2.c,61 :: 		portb.rb6 = 1;
	BSF         PORTB+0, 6 
;exercicio2.c,62 :: 		}
L_acendeLedB21:
L_acendeLedB20:
L_acendeLedB18:
L_acendeLedB16:
L_acendeLedB14:
L_acendeLedB12:
;exercicio2.c,63 :: 		}
L_end_acendeLedB:
	RETURN      0
; end of _acendeLedB

_main:

;exercicio2.c,65 :: 		void main ()
;exercicio2.c,71 :: 		trisb = 1;
	MOVLW       1
	MOVWF       TRISB+0 
;exercicio2.c,75 :: 		trisd = 0;
	CLRF        TRISD+0 
;exercicio2.c,80 :: 		trisc = 0xFD; // 0b11111101
	MOVLW       253
	MOVWF       TRISC+0 
;exercicio2.c,83 :: 		portc.rc1 = 1;
	BSF         PORTC+0, 1 
;exercicio2.c,85 :: 		portb = 0;
	CLRF        PORTB+0 
;exercicio2.c,86 :: 		portd = 0;
	CLRF        PORTD+0 
;exercicio2.c,89 :: 		while(1)
L_main22:
;exercicio2.c,93 :: 		while (portb.rb0 == 0)
L_main24:
	BTFSC       PORTB+0, 0 
	GOTO        L_main25
;exercicio2.c,96 :: 		portb = 0;
	CLRF        PORTB+0 
;exercicio2.c,97 :: 		portd = 0;
	CLRF        PORTD+0 
;exercicio2.c,98 :: 		if ((ledB == 6) && (ledD == 6)){
	MOVLW       0
	XORWF       _ledB+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main47
	MOVLW       6
	XORWF       _ledB+0, 0 
L__main47:
	BTFSS       STATUS+0, 2 
	GOTO        L_main28
	MOVLW       0
	XORWF       _ledD+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main48
	MOVLW       6
	XORWF       _ledD+0, 0 
L__main48:
	BTFSS       STATUS+0, 2 
	GOTO        L_main28
L__main30:
;exercicio2.c,99 :: 		portc.rc1 = 0;
	BCF         PORTC+0, 1 
;exercicio2.c,100 :: 		portc.rc1 = 1;
	BSF         PORTC+0, 1 
;exercicio2.c,101 :: 		}
L_main28:
;exercicio2.c,102 :: 		acendeLedB(ledB);
	MOVF        _ledB+0, 0 
	MOVWF       FARG_acendeLedB_n+0 
	MOVF        _ledB+1, 0 
	MOVWF       FARG_acendeLedB_n+1 
	CALL        _acendeLedB+0, 0
;exercicio2.c,103 :: 		acendeLedD(ledD);
	MOVF        _ledD+0, 0 
	MOVWF       FARG_acendeLedD_n+0 
	MOVF        _ledD+1, 0 
	MOVWF       FARG_acendeLedD_n+1 
	CALL        _acendeLedD+0, 0
;exercicio2.c,104 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;exercicio2.c,105 :: 		ledB = aleatorio();
	CALL        _aleatorio+0, 0
	MOVF        R0, 0 
	MOVWF       _ledB+0 
	MOVF        R1, 0 
	MOVWF       _ledB+1 
;exercicio2.c,106 :: 		ledD = aleatorio();
	CALL        _aleatorio+0, 0
	MOVF        R0, 0 
	MOVWF       _ledD+0 
	MOVF        R1, 0 
	MOVWF       _ledD+1 
;exercicio2.c,107 :: 		}
	GOTO        L_main24
L_main25:
;exercicio2.c,111 :: 		portb = 0;
	CLRF        PORTB+0 
;exercicio2.c,112 :: 		portd = 0;
	CLRF        PORTD+0 
;exercicio2.c,113 :: 		}
	GOTO        L_main22
;exercicio2.c,114 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
