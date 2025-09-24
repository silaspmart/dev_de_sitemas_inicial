/*Desenvolva um programa que solicite ao usuário que digite números positivos. O programa deve somar todos os números inseridos até
que o usuário digite um número negativo. Ao final, o programa exibe a soma total.*/

programa {
  funcao inicio() {
    inteiro numero = 0, total= 0
    
    enquanto (numero >= 0) {
      total = total+numero
      escreva ("Digite numeros positivos para somar, ou numero negativo para parar: ")
      leia (numero)
    }
    escreva ("\nA soma dos numeros digitados é: ", total,"\n")
  }
}