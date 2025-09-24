/* Escreva um programa que declare um vetor de 6 posições para armazenar caracteres. O usuário deve preencher o vetor com letras, e o
programa deve criar um segundo vetor que contenha esses caracteres em ordem inversa. Por fim, o programa deve exibir o vetor
invertido. */

programa {
  funcao inicio() {
    const inteiro N=6
    cadeia lista [N]
    cadeia lista2 [N]
    inteiro i
    
    para (i=0;i<N;i++) {
      escreva ("Digite a ",i+1,"ª letra do vetor: ")
      leia (lista[i])
    }
    escreva ("\nO vetor invertido é: ")
    para (i=0;i<N;i++) {
      lista2[i] = lista[N-1-i] /* Nesse caso use N-1-i pois a indexação começa em 0, 
                                por exemplo, a primeira posição é 0, portanto 6-1-0=5, 
                                e 5 é a ultima posição*/
      escreva (lista2[i],", ")
    }
    escreva ("\n")
    }
  }