programa {
  funcao inicio() {
    inteiro tabuada, contador

    escreva ("==== TABUADA DECRESCENTE ====\nDigite o numero para saber a sua tabuada: ")
    leia (tabuada)

    para (contador=10; contador>0; contador--) {
      inteiro resultado = contador*tabuada
      escreva ("\n",tabuada," x ",contador," = ",resultado)}

    escreva ("\n")
  }
}