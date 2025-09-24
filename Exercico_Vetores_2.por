/* 2) Escreva um programa que declare um vetor de 7 numeros reais. O usuario deve preencher o vetor com os valores e, ao final, o programa deve mostrar o maior numero digitado 
e a posição em que ele esta no vetor */

programa {
  funcao inicio() {
    const inteiro N = 7
    real comparativo [N]
    real maior=0
    inteiro posicao, i

    para (i=0;i<N;i++) {
      escreva ("Digite o ",i+1,"º numero do vetor: ")
      leia (comparativo[i])
      se (comparativo[i]>maior) {
        maior = comparativo[i]
        posicao = i+1
      }
    }
     escreva ("\nO maior numero digitado é ",maior,"\nEle foi o ",posicao,"º numero digitado\n")
    } 
  }