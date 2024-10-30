#line 1 "C:/Users/junin/OneDrive/Área de Trabalho/UFLA/2024-2/Sistemas Embarcados/SistemasEmbarcados/exercicioPratico2/exercicio2/exercicio2.c"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic/include/stdlib.h"







 typedef struct divstruct {
 int quot;
 int rem;
 } div_t;

 typedef struct ldivstruct {
 long quot;
 long rem;
 } ldiv_t;

 typedef struct uldivstruct {
 unsigned long quot;
 unsigned long rem;
 } uldiv_t;

int abs(int a);
float atof(char * s);
int atoi(char * s);
long atol(char * s);
div_t div(int number, int denom);
ldiv_t ldiv(long number, long denom);
uldiv_t uldiv(unsigned long number, unsigned long denom);
long labs(long x);
int max(int a, int b);
int min(int a, int b);
void srand(unsigned x);
int rand();
int xtoi(char * s);
#line 21 "C:/Users/junin/OneDrive/Área de Trabalho/UFLA/2024-2/Sistemas Embarcados/SistemasEmbarcados/exercicioPratico2/exercicio2/exercicio2.c"
int ledB=1, ledD=1;


int aleatorio(){
 return (rand()%6)+1;
}


void acendeLedD(int n){
 if(n == 1){
 portd.rd1 = 1;
 }
 else if(n == 2){
 portd.rd2 = 1;
 }
 else if(n == 3){
 portd.rd3 = 1;
 }
 else if(n == 4){
 portd.rd4 = 1;
 }
 else if(n == 5){
 portd.rd5 = 1;
 }
 else if(n == 6){
 portd.rd6 = 1;
 }
}


void acendeLedB(int n){
 if(n == 1){
 portb.rb1 = 1;
 }
 else if(n == 2){
 portb.rb2 = 1;
 }
 else if(n == 3){
 portb.rb3 = 1;
 }
 else if(n == 4){
 portb.rb4 = 1;
 }
 else if(n == 5){
 portb.rb5 = 1;
 }
 else if(n == 6){
 portb.rb6 = 1;
 }
}

void main ()
{




 trisb = 1;



 trisd = 0;




 trisc = 0xFD;


 portc.rc1 = 1;


 portb = 0;
 portd = 0;


 while(1)
 {


 while (portb.rb0 == 0)
 {

 portb = 0;
 portd = 0;



 if ((ledB == 6) && (ledD == 6)){
 portc.rc1 = 0;
 acendeLedB(ledB);
 acendeLedD(ledD);
 delay_ms(500);
 portc.rc1 = 1;
 }

 else {
 acendeLedB(ledB);
 acendeLedD(ledD);
 delay_ms(500);
 }

 ledB = aleatorio();
 ledD = aleatorio();
 }


 portb = 0;
 portd = 0;
 }
}
