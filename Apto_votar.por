// CODIGO QUE LE O NOME E A IDADE DE UMA PESSOA E INFORMA A SITUAÇÃO PARA O VOTO, USANDO A FUNÇÃO 'SE'  

programa {
  funcao inicio() {
    cadeia nome
    inteiro idade

    escreva ("VERIFIQUE SE VOCÊ ESTÁ APTO PARA VOTAR!\nInforme o seu nome: ")
    leia (nome)
    escreva ("Informe a sua idade: ")
    leia (idade)

    se (idade >=16 e idade<18 ou idade>=70) {
      escreva ("\n",nome,", o voto é opcional!\n")
      } senao se (idade >=18 e idade<70) {
        escreva ("\n",nome,", o voto é obrigatório!\n")
        }
    senao {
      escreva ("\n",nome,", não é possivel votar...\n")
      }
  }
}