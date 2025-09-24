/*Aproveite o código dos exercícios anteriores e escreva um código que receba dois números inteiros e escreva todos os números pares
entre eles.
*/

programa {
  funcao inicio() {
    inteiro num1, num2, contador

    escreva ("Digite o primeiro numero: ")
    leia (num1)
    escreva ("Digite outro numero: ")
    leia (num2)
    escreva("Lista de numeros pares nesse intervalo\n\n")
    
    se (num1<num2)
      para (contador=num1;contador<=num2;contador++) {
      se (contador%2==0)
      escreva (contador,"\n")}

    senao 
    para (contador=num1;contador>=num2;contador--) {
      se (contador%2==0)
      escreva (contador,"\n")}
    }   
  }