// COGIDO QUE LE O NOME, PESO E ALTURA DO USUARIO E REOTONA O IMC E A CLASSIFICAÇÃO

programa {
  inclua biblioteca Matematica
  funcao inicio() {

    real peso, altura, imc
    cadeia nome

    escreva ("SEJA BEM VINDO A CALCULADORA DE IMC! \n\nInforme seu nome: ")
    leia (nome)
    escreva ("Informe seu PESO em Kg: ")
    leia (peso)
    escreva ("Informe a sua ALTURA em metros: ")
    leia (altura)

    imc = peso/(altura*altura)

    se (imc< 18.5) {
      escreva ("\n",nome," seu IMC é de ",Matematica.arredondar(imc,2)," - Abaixo do peso normal\n")
      } senao se (imc >= 18.5 e imc <= 24.9) {
        escreva ("\n",nome," seu IMC é de ",Matematica.arredondar(imc,2)," - Peso normal\n")
        } senao se (imc >= 25 e imc <= 29.9) {
          escreva ("\n",nome," seu IMC é de ",Matematica.arredondar(imc,2)," - Excesso de peso\n")
          } senao se (imc >= 30 e imc <= 34.9) {
            escreva ("\n",nome," seu IMC é de ",Matematica.arredondar(imc,2)," - Obesidade classe I\n")
            } senao se (imc >= 35 e imc <= 39.9) {
              escreva ("\n",nome," seu IMC é de ",Matematica.arredondar(imc,2)," - Obesidade classe II\n")
              } senao {
                escreva ("\n",nome," seu IMC é de ",Matematica.arredondar(imc,2)," - Obesidade classe III\n")
                }    
  }
}