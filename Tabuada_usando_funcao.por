// Código para tabuada, utilizando função

programa {
  funcao inteiro tabuada(inteiro num,inteiro cont) {
      retorne num*cont
    }
  funcao inicio() {
    inteiro num, cont, valor

    escreva ("Escreva um numero para saber a sua tabuada: ")
    leia (num)

    para (cont=1;cont<=10;cont++) {
      valor = tabuada (num,cont)
      escreva (num," x ", cont," = ", valor,"\n")
    }   
  }
}
