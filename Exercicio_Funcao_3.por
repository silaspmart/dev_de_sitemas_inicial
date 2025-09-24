/*  3) Fatorial: Desenvolva uma função recursiva que calcule o fatorial de um número inteiro n, onde o fatorial de n (representado por n!) é definido como n * (n-1)
* (n-2) * ... * 1.  */

programa {
  funcao inteiro fatorial (inteiro num) {
    se (num==0) {
      retorne 1
    } senao {
      retorne num*fatorial(num-1)
    }
  }
  funcao inicio() {
    inteiro numero
    escreva ("====== CALCULO DE FATORIAL ======\nDigite um numero para saber o seu fatorial: ")
    leia (numero)
    escreva (fatorial(numero),"\n")
  }
}
