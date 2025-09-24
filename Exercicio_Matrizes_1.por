/*  6. Escreva um programa que declare duas matrizes de tamanho 2x2. O usuário deve preencher as duas matrizes com números inteiros, e o
programa deve criar uma terceira matriz que seja a soma das duas primeiras, elemento por elemento, exibindo o resultado ao final.  */

programa {
  const inteiro L=2, C=2
  funcao inicio() {
    inteiro matriz1[L][C], matriz2[L][C], somaMatriz[L][C], i, j

    escreva ("* Preencha a primeira matriz *\n")
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        escreva ("Digite o ",j+1,"º numero da ",i+1,"ª linha: ")
        leia (matriz1[i][j])
      }
    }
    escreva ("* Preencha a segunda matriz *\n")
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        escreva ("Digite o ",j+1,"º numero da ",i+1,"ª linha: ")
        leia (matriz2[i][j])
      }
    }
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        somaMatriz[i][j]=matriz1[i][j]+matriz2[i][j]
      }
    }
    escreva ("\nA matriz com a soma das matrizes é: \n\n")
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        escreva (somaMatriz[i][j]," | ") 
      }
      escreva ("\n")
    } 
  }
}