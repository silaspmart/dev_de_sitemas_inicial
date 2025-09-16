/*6) MDC (Máximo Divisor Comum): Implemente uma função recursiva utilizando o algoritmo de Euclides para calcular o Máximo Divisor Comum entre dois números inteiros positivos
fornecidos pelo usuário.*/

programa {
  funcao inteiro maiorDivisor (inteiro n1, inteiro n2) {
    se (n2==0) {
      retorne n1
    } senao {
      retorne maiorDivisor (n2, n1%n2)
    }
  }
  funcao inicio() {
    inteiro num1, num2
    escreva ("===== CALCULO DE MDC ENTRE DOIS NUMEROS =====\nDigite o primeiro numero: ")
    leia (num1)
    escreva ("Digite o sugundo numero: ")
    leia (num2)
    escreva ("O MDC entre ", num1," e ",num2," é ", maiorDivisor(num1,num2))
  }
}
