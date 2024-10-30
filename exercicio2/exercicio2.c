/*****************************************************************
**                        Exemplo 02                            **
**                                                              **
** Exemplo para utilizacao de buzzer do kit PIC 18 F452.        **
** Ao carregar o programa no kit, o buzzer desse sera           **
** acionado por um segundo e aguardara mais um segundo          **
** ate o proximo acionamento.                                   **
**                                                              **
** Arquivo : buzzer .c                                          **
** Compilador : MikroC PRO PIC v .6.4.0                         **
**                                                              **
** UFLA - Lavras /MG - 24/05/2017                               **
*****************************************************************/

#include <stdlib.h>

int ledB=6, ledD=6;

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

  // Ativa somente o pino RB0 como entrada da PORTB.
  // Os demais pinos sao configurados como saida.
  // Seta macro "trisb" com valor 0b00000001 (bin) = 0d1 (dec)
  trisb = 1;
  
  // Todos os pinos da PORTD (RD) sao configurados como saida.
  // Seta macro "trisd" com valor 0b0000000 (bin) = 0d0 (dec)
  trisd = 0;
  
  // trisc e' uma posicao (registrador) na memoria de dados
  // do microcontrolador. Configura o pino RC1 como saida para
  // comunicacao com o buzzer.
  trisc = 0xFD; // 0b11111101

  // Inicia com buzzer desligado.
  portc.rc1 = 1;
  
  portb = 0;
  portd = 0;
  
  // Loop infinito
  while(1)
  {
    // Le o estado do push button conectado ao pinon RB0.
    // Caso esteja pressionado (valor = 0), executa laco.
    while (portb.rb0 == 0)
    {
       // Desliga todos os LEDs - 0b00000000 (bin) ou 0d0 (dec)
       portb = 0;
       portd = 0;
       if ((ledB == 6) && (ledD == 6)){
         portc.rc1 = 0;
         portc.rc1 = 1;
       }
       acendeLedB(ledB);
       acendeLedD(ledD);
       delay_ms(1000);
       ledB = aleatorio();
       ledD = aleatorio();
    }
    // Alterna estado do buzzer (ligado -> desligado -> ligado...)
    //portc.rc1 = ~portc.rc1;
    
    portb = 0;
    portd = 0;
  }
}