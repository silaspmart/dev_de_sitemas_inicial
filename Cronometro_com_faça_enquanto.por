/*Escreva um programa que sirva como um cronômetro. O usuário deve digitar um número em segundos e o programa deve contabilizar os
segundos digitados. O programa deve receber somente números entre 1 e 59, do contrário ele deve retornar um erro e solicitar que o 
usuário digite um número válido.
*/
programa {
  inclua biblioteca Util
  funcao inicio() {
    inteiro tempo, contador
    
    faca {
      escreva ("Digite um tempo entre 1 e 59 segundos para contagem: ")
      leia (tempo)
      se (tempo<1 ou tempo>59) {
        escreva ("Numero invalido!\n")
        }
      }
       enquanto  (tempo <1 ou tempo>59) 
    
      para (contador=0;contador<=tempo;contador++) {
      limpa ()
      escreva ("CONTAGEM: ", contador,"\n\n")
      Util.aguarde(1000)
      }
    escreva ("Contagem finalizada!\n\n")
    }
  }