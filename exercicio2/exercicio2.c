/* ****************************************************************
**                        Exerc�cio 02                           **
**                                                               **
** Ao apertar e segurar o pushbutton RB0, � gerado dois n�meros  **
** aleat�rios e s�o correspondentes a acender os  LED's PORTB e  **
** LED's PORTD, quando esses valores s�o ambos iguais a 6,       **
** o buzzer emite um sinal sonoro de meio segundo.               **
**                                                               **
** Aluno: Carlos Magno do Nascimento Junior                      **
**                                                               **
** Arquivo: exercicio2.c                                         **
** Compilador : MikroC PRO PIC v7.2.0                            **
**                                                               **
** UFLA - Lavras /MG - 30/10/2024                                **
******************************************************************/

// Biblioteca para incluir a fun��o rand()
#include <stdlib.h>

// vari�veis de controle do valor aleat�rio
int ledB=1, ledD=1;

// fun��o para gerar valor aleat�rio
int aleatorio(){
  return (rand()%6)+1;
}

// fun��o para acender leds do grupo D, de acordo com o valor de entrada
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

// fun��o para acender leds do grupo B, de acordo com o valor de entrada
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
  
  // Desliga todos os LEDs - 0b00000000 (bin) ou 0d0 (dec)
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
       
       // Verifica o valor gerado aletoriamente
       // se ambos forem iguais a 6, emite o sinal sonoro e aciona os leds
       if ((ledB == 6) && (ledD == 6)){
         portc.rc1 = 0;
         acendeLedB(ledB);
         acendeLedD(ledD);
         delay_ms(500);
         portc.rc1 = 1;
       }
       // se n�o, apenas acende os leds correspondentes ao valor gerado
       else {
            acendeLedB(ledB);
            acendeLedD(ledD);
            delay_ms(500);
       }
       // gera novos valores aleat�rios
       ledB = aleatorio();
       ledD = aleatorio();
    }

    // Desliga todos os LEDs - 0b00000000 (bin) ou 0d0 (dec) ao sair do la�o
    portb = 0;
    portd = 0;
  }
}