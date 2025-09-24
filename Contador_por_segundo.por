// CODIGO QUE GERA UM CONTADOR DE 1 A N, UTULIZANDO A BIBLIOTECA UTIL PARA GERAR UM NUMERO POR SEGUNDO

programa {
  inclua biblioteca Util
  funcao inicio() {
    inteiro num = 1

    enquanto (num<=30) {
      Util.aguarde(1000)
      escreva (num++,"\n")
    }
  }
}