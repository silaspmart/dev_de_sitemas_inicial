programa {
  funcao inicio() {
    inteiro numero, contador, resultado

    escreva ("Digite o numero desejado: ")
    leia (numero)
    escreva ("\n")

    para (contador=1;contador<=10;contador++) {
      resultado = contador * numero
      escreva (numero," x ", contador," = ",resultado,"\n")
    }
    escreva ("\n")
  }
}