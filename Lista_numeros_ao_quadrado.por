// Código para ler um numero informado pelo usuario e retornar o quadrado dele e todos os seus antecessores

programa {
  funcao inicio() {
    inteiro contador, num, quadrado

    escreva ("Digite um numero: ")
    leia (num)

    para (contador=1;contador<=num;contador++) {
      quadrado=contador*contador
      escreva (contador, " ^ 2 ", " = ", quadrado,"\n")
    }
  }
}