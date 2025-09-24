/* 5) Potência recursiva: Desenvolva uma função recursiva que receba dois números inteiros, base e expoente, e calcule o valor de base elevado à potência do expoente,
ou seja, base ^ expoente. */

programa {
  funcao inteiro potencia (inteiro bas, inteiro exp) {
    se (exp==0) {
      retorne 1
    } senao {
      retorne bas*potencia(bas,exp-1)
    }
  }
  funcao inicio() {
    inteiro base, expoente
    escreva ("===== CALCULADORA DE POTENCIA =====\nDigite um numero como base: ")
    leia (base)
    escreva ("Digite um numero como expoente: ")
    leia (expoente)
    escreva (base,"^",expoente," = ",potencia(base,expoente))
  }
}
