// CODIGO PARA LER O NOME E IDADE DE UM PESSOA E RETORNAR QUAL A CATEGORIA DE UM TIME DE FUTEBOL ELA INTEGRARA

programa {
  funcao inicio() {
    inteiro idade
    cadeia nome

    escreva ("SEJA BEM VINDO!\nInforme seu nome: ")
    leia (nome)
    escreva ("Informe a sua idade: ")
    leia (idade)
    escreva ("\nAtleta: ", nome)

    se (idade < 10) {
      escreva ("\nVOCÊ INTEGRARÁ A ESCOLINHA DE FUTEBOL!\n")
      } senao se (idade >= 10 e idade <= 17) {
        escreva ("\nVOCÊ INTEGRARÁ AS CATEGORIAS DE BASE!\n")
        } senao se (idade > 17 e idade <= 40) {
          escreva ("\nVOCÊ INTEGRARÁ A CATEGORIA PROFISSIONAL!\n")
          }
      senao (escreva("\nVOCÊ INTEGRARÁ A CATEGORIA MASTER!\n"))
  }
}