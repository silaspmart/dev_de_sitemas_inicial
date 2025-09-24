/*Escreva um programa onde o computador escolhe um número entre 1 e 100. O usuário deve tentar adivinhar o número, e o programa
deve informar se o palpite está acima, abaixo ou correto. O jogo continua até que o usuário acerte.
*/

programa {
  inclua biblioteca Util
  funcao inicio() {
    inteiro sorteado = Util.sorteia (1,100), palpite
    escreva ("UM NUMERO ENTRE 1 E 100 FOI SORTEADO! TENTE ACERTÁ-LO!!!\n\n")

    faca{
      escreva ("Digite um palpite para acertar o numero sorteado: ")
      leia (palpite)
      se (palpite == sorteado) {
        escreva ("\nVocê acertou o numero escolhido!\nNúmero: ",sorteado,"\n")
      }
      senao se (palpite < sorteado) {
        escreva ("O numero ",palpite," é menor que o numero sorteado!\n")
      }
      senao {
        escreva ("O numero ",palpite," é maior que o numero sorteado!\n")
      }
    }
    enquanto (palpite != sorteado)
  }
}