/*  1)Contagem regressiva: Crie uma função recursiva que imprima uma contagem regressiva a partir de um número n fornecido pelo usuário até o número zero. Ao final da
contagem, a função deve exibir a mensagem “Fim!”.*/

programa {
  inclua biblioteca Util
  funcao cronometro (inteiro segundos) {
    se (segundos == 0) {
      limpa ()
      escreva ("Fim!\n")
    }senao {
      limpa ()
      escreva (segundos," segundos")
      Util.aguarde(1000)
      retorne cronometro(segundos-1)
    }
  }
  funcao inicio() {
    inteiro numero
    escreva ("===== CONTAGEM REGRESSIVA ===== \nDigite um numero para iniciar uma conrtagem regressiva: ")
    leia (numero)
    cronometro (numero)
  }
}
