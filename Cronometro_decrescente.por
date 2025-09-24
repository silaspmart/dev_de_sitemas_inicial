// Timer usando uma função

programa {
  inclua biblioteca Util
  funcao cronometro(inteiro segundos) {
    se (segundos < 0) {
      retorne
    } senao {
      limpa ()
      escreva ("Segundos: ", segundos)
      Util.aguarde (1000)
      cronometro (segundos-1)
    }
  }
  funcao inicio() {
   inteiro tempo
   escreva ("Digite o tempo em segundos para o timer: ")
   leia (tempo)
   cronometro (tempo)
   limpa ()
   escreva ("Timer encerrado!\n") 
  }
}