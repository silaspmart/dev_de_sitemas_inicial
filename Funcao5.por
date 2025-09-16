/* 1) Escreva um programa que declare um vetor de 5 numeros inteiros. O usuário deve digitar os 5 vetores e o programa calcular e exibir a soma de todos os elementos 
e a media dos numeros digitados  */

programa {
  inclua biblioteca Matematica
  funcao inicio() {
    const inteiro N=5
    inteiro digitos [N]
    inteiro soma=0
    real media

    para (inteiro i=0;i<N;i++) {
      escreva ("Digite o ",i+1,"º numero do vetor: ")
      leia (digitos[i])
    }
    para (inteiro i=0;i<N;i++) {
      soma = soma + digitos [i]
      media = soma/N
    }     
    escreva ("\nA soma dos numeros digitados é: ",soma,"\nA média dos numeros digitados é: ", Matematica.arredondar (media,2,0),"\n")
  }
}