/*  2) Soma recursiva até N: Implemente uma função recursiva que receba um número inteiro positivo n e retorne a soma de todos os números inteiros de 1 até n. */

programa {
  funcao inteiro somaNumero (inteiro num) {
    se (num<=0) {
      retorne 0
    } senao se (num==1) {
      retorne 1
    } senao 
    retorne num+somaNumero(num-1)
  }
  funcao inicio() {
    inteiro numero
    faca {
      escreva ("====== SOMA RECURSIVA ======\nDigite um numero para saber a soma dele com todos os seus antecessores: ")
    leia (numero)
    }
    enquanto (numero < 0)
    escreva ("A soma é ",somaNumero (numero),"\n")
    
  }
}