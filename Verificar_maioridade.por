// CODIGO QUE SOLICITA AO USUARIO QUE INFORME UMA QUANTIDADE DE PESSOAS, E EM SEGUIDA, AS IDADES DE ACORDO COM O TOTAL INFORMADO. 
// AO FIM RETORNA QUANTAS PESSOAS SÃO MAIORES OU MENORES DE IDADE.

programa {
  funcao inicio() {
    inteiro idade, qtd_pessoas, maiores = 0, menores = 0, contador
    const inteiro maioridade = 18

    escreva ("Quantas pessoas estão na lista? ")
    leia (qtd_pessoas)
    escreva ("\n")

    para (contador=1; contador <= qtd_pessoas; contador++) {
      escreva ("Digite a idade da pessoa: ")
      leia (idade)
      se (idade >= maioridade) {
        maiores++
        } senao {
          menores++
          }
    }
    se (maiores == 0) {
      escreva ("\nNa lista enviada todos são menores de idade\n")
      } senao se (menores == 0) {
        escreva ("\nNa lista enviada todos são maiores de idade\n")
        } senao {
          escreva ("\nNa lista enviada temos ", maiores," maior(es) de idade e ",menores," menor(es) de idade\n")
          }    
  }
}