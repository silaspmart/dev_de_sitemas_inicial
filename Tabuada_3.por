//Desenvolva um programa que receba um número do usuário e escreva a tabuada dele.

programa {
  funcao inicio() {
    real numero, contador, resultado

    escreva ("Digite o numero para ver a tabuada dele: ")
    leia (numero)
    escreva ("\n")

    para (contador=1;contador<=10;contador++) {
      resultado = contador * numero

      escreva (numero," x ", contador," = ",resultado,"\n")
    }
    escreva ("\n")
  }
}