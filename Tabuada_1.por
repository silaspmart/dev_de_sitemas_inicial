// CODIGO QUE LE UM NUMERO INFORMADO PELO USUARIO E RETORNA A RESPECTIVA TABUADA

programa {
  funcao inicio() {
    inteiro tab, num

    escreva ("Digite um numero para saber a sua tabuada: ")
    leia (num)

    para (inteiro i=1; i<=10; i++) {
      tab = i*num
      escreva (num, " x ",i," = ", tab,"\n")
    }
  }
}