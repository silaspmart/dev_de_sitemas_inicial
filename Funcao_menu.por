/* 6) Crie uma função chamada mostrarMenu que não recebe parâmetros e apenas exibe um menu com três opções: “1 - Iniciar”, “2 -
Configurações” e “3 - Sair”. No programa principal, chame essa função e leia a opção escolhida pelo usuário. */

programa {
  funcao mostrarMenu() {
    inteiro opcao
    escreva ("****** MENU ****** \n1) Iniciar \n2) Configurações \n3) Sair\n\nEscolha uma opção: ")
    leia (opcao)
    escolha (opcao) {
      caso 1:
      escreva ("Opção 1) Iniciar\n")
      pare
      caso 2:
      escreva ("Opção 2) Configuração\n")
      pare
      caso 3:
      escreva ("Opção 3) Sair\n")
      pare
      caso contrario:
      escreva ("Opção inválida!\n")
      pare
    }
  }
  funcao inicio() {
    inteiro numero
    mostrarMenu()
  }
}