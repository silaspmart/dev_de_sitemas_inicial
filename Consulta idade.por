// CODIGO PARA LER A IDADE E RETORNAR SE A ENTRADA É LIBERADA, UTILIZANDO O 'FAÇA ENAQUANTO'. O PROGRAMA SÓ É FINALIZADO SE O USUSARIO 
// DIGITAR '0'

programa {
  funcao inicio() {
    inteiro idade

    faca {
      escreva ("Digite a sua idade para consulta ou '0' para parar: ")
      leia (idade)

      se (idade == 0) {
        escreva ("Consulta encerrada\n")
        } senao se (idade < 16) {
        escreva ("Entrada proibida\n\n")
        } senao se (idade >= 16 e idade <18) {
          escreva ("Entrada somente com um responsável\n\n")
          } senao escreva ("Entrada liberada!\n\n")
    }
    enquanto  (idade !=0)
  }
}