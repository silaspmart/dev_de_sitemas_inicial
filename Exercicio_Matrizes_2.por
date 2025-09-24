/* 7. Escreva um programa que crie uma matriz 3x3 e a preencha de modo que ela se torne uma matriz identidade, ou seja, com o valor 1 na
diagonal principal e 0 nos outros elementos. Ao final, o programa deve exibir a matriz formada.*/

programa {
  const inteiro L=6, C=6
  funcao inicio() {
    inteiro matriz[L][C], i, j

    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        se (i==j) {
          matriz [i][j]=1
        } senao matriz [i][j]=0
      }
    }
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        escreva (matriz[i][j]," | ")
      }
      escreva ("\n")
    }
  }
}
