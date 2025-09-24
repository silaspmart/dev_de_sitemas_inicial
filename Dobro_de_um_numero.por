/*  1) Crie um programa com uma função chamada dobro que receba um número inteiro como parâmetro e retorne o dobro desse número. O
programa principal deve solicitar um número ao usuário, chamar a função e exibir o resultado.
*/

programa {
  funcao inteiro dobro (inteiro num) {
    retorne num*2
  }
  funcao inicio() {
    inteiro numero
    escreva ("Digite um numero inteiro: ")
    leia (numero)
    dobro (numero)
    escreva ("O dobro de ",numero," é ",dobro(numero),"\n")
  }
}