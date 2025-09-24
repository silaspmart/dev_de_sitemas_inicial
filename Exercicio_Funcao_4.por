/*  4) Contar dígitos de um número: Crie uma função recursiva que receba um número inteiro positivo e retorne a quantidade de dígitos desse número.  */

programa {
  funcao inteiro contaDigito (inteiro num) {
    se (num > -10 e num < 10) {
      retorne 1
    } senao {
      retorne 1+contaDigito(num/10)
    }
  }
  funcao inicio() {
    inteiro numero
    escreva ("====== QUANTOS DIGITOS ESSE NUMERO POSSUI? ======\nDigite um numero: ")
    leia (numero)
    escreva (contaDigito(numero)," digitos\n")
  }
}
