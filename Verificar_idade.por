/*Um cliente que promove eventos e solicitou um programa que seja capaz de identificar se uma pessoa é maior de idade. Pessoas com 
menos de 16 anos não podem entrar nos eventos. Entre 16 e 18 anos somente acompanhado pelos responsáveis. Maiores de 18 podem
entrar normalmente. (O programa deve executar até que o usuário digite 0)
*/

programa {
  funcao inicio() {
    inteiro idade

    faca {
      escreva ("Digite a sua idade para consulta ou '0' para parar: ")
      leia (idade)
      se (idade == 0) {
        escreva ("Programa encerrado pelo usuário!\n\n")
        } senao se (idade < 16) {
          escreva ("Entrada proibida\n\n")
          } senao se (idade >= 16 e idade <18) {
            escreva ("Entrada somente com um responsável\n\n")
            } senao escreva ("Entrada liberada!\n\n")}

    enquanto  (idade !=0)
  }
}