/*  8. Escreva um programa que declare uma matriz 4x4 de números inteiros. O usuário deve preencher todos os elementos da matriz e, ao
final, o programa deve exibi-la no console no formato de tabela, com linhas e colunas organizadas. */

programa {
  const inteiro L=4, C=4
  funcao inicio() {
    inteiro matriz [L][C], i, j

    escreva ("* Informe numeros para formar uma matriz 4x4 *\n")
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        escreva ("Digite o ",j+1,"º numero da ",i+1,"ª linha: ")
        leia (matriz[i][j])
      }
    }
    escreva ("\nA matriz formada foi:\n")
    para (i=0;i<L;i++) {
      para (j=0;j<C;j++) {
        escreva (matriz[i][j]," | ")
      }
      escreva ("\n")
    }
  }
}
