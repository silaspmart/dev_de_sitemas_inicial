/* 3) Escreva um programa que declare um vetor de 10 numeros inteiros. O usuario deve digitar os valores e em seguida, informar um numero para pesquisa. O programa deve mostrar quantas vezes 
esse numero aparece no vetor e em quais posições */

programa {
  funcao inicio() {
    const inteiro N=10
    inteiro valores [N], pesquisado, repeticoes=0, i

    para (i=0;i<N;i++) {
      escreva ("Digite o ",i+1,"º numero do vetor: ")
      leia (valores[i])
    } 
    escreva ("\nInforme um numero para saber quantas vezes ele aparece: ")
    leia (pesquisado)
    escreva ("\n")

    para (i=0;i<N;i++) {
      se (pesquisado == valores [i]) {
        repeticoes = repeticoes+1
      } senao pesquisado==0
    } 
    escreva ("Você escolheu o numero ",pesquisado,". Ele aparece ",repeticoes," vezes, nas posições: ")
    para (i=0;i<N;i++) {
      se (pesquisado == valores [i]) {
        escreva ("[",i+1,"]")
      }
    }
    escreva ("\n") 
  } 
}
