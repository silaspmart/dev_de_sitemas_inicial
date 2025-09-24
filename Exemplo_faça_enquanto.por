// EXEMPLO DE UTILIZAÇÃO DO 'FAÇA ENQUANTO' COMO LIMITADOR DE FUNCINAMENTO DO CÓDIGO

programa {
  funcao inicio() {
    real aresta, area

    faca {
      escreva ("Informe o valor da aresta: ")
      leia (aresta)
      }
      enquanto (aresta<=0)
      area = aresta * aresta

    escreva ("A área é: ", area,"\n")
  }
}