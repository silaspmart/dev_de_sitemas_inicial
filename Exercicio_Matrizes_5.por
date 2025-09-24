/*  10. Escreva um programa que declare uma matriz 5x5 de números inteiros. O usuário deve preencher a matriz, e, em seguida, informar um
número para pesquisa. O programa deve mostrar a posição (linha e coluna) onde o número foi encontrado ou exibir uma mensagem
avisando que o número não existe na matriz. */

programa {
  const inteiro L=5, C=5
  funcao inicio() {
    inteiro i, j ,pesquisa, repete=0, matriz[L][C]

    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        escreva ("Digite o ",j+1,"º numero da ",i+1,"ª linha: ")
        leia (matriz[i][j])
      }
    }
    escreva ("\nA matriz formada é \n")
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        escreva  (matriz[i][j]," | ")
      }
      escreva ("\n")
    }
    escreva ("\nInforme um numero para pesquisa: ")
    leia (pesquisa)
     para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        se (pesquisa==matriz[i][j]) {
          repete++
        }
      }
    }
    escreva ("O numero ",pesquisa," aparece ",repete," vezes na matriz\n")
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        se (matriz[i][j]==pesquisa) {
          escreva ("O numero ",pesquisa," está na posição: [",i,", ",j,"]\n")
        }
      }
    }
  }
}