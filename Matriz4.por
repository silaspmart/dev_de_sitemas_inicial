/*  9. Escreva um programa que declare uma matriz 3x3 de números reais. O usuário deve preencher todos os elementos da matriz, e o
programa deve calcular e exibir a soma dos elementos da diagonal principal.  */

programa {
  const inteiro L=3, C=3
  funcao inicio() {
    real matriz [L][C], i, j, soma=0

    escreva ("* Informe numeros reais para compor uma matriz 3x3. Ao fim sera mostrado a soma da diagonal principal *\n")
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        escreva ("Digite o ",j+1,"º numero da ",i+1,"ª linha: ")
        leia (matriz[i][j])
      }
    }
    escreva ("\nA matriz é: \n")
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        escreva (matriz[i][j]," | ")
      }
      escreva ("\n")
    } 
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        se (i==j) {
          soma=soma+matriz[i][j]
        }
      }
    }
    escreva ("A soma da diagonal principal é ",soma,"\n")
  }
}
