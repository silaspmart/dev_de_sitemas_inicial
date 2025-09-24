/* 4) Depois, implemente uma função chamada maiorNumero que receba dois números inteiros e retorne o maior entre eles. O programa deve exibir
o valor retornado por essa função. */

programa {
  funcao real maiorNumero (real n1, real n2) {
    se (n1>n2) {
      retorne n1
    } senao se (n1<n2) {
      retorne n2
    } senao escreva ("Os numeros são iguais\n")
  }
  funcao inicio() {
    real num1, num2
    escreva ("Informe dois numeros para saber qual deles é o maior: \nDigite o primeiro numero: ")
    leia (num1)
    escreva ("Digite o segundo numero: ")
    leia (num2)
    escreva ("O maior numero é ",maiorNumero (num1, num2),"\n")
  }
}