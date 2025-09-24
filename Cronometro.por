// EXEMPLO DE CÓDIGO UTILIZANDO 'FAÇA ENQUANTO' PARA UM CRONOMETRO, LIMITADO DE 1 A 59 SEGUNDOS

programa {
  inclua biblioteca Util
  funcao inicio() {
    inteiro numero, contador
    
    faca {
      escreva ("Digite um numero para contagem: ")
      leia (numero)
      }
    enquanto  (numero <1 ou numero>59) 
    escreva ("Digite um numero para contagem: ")
    limpa ()
    
      para (contador=0;contador<=numero;contador++) {
      limpa ()
      escreva ("CONTAGEM: ", contador,"\n")
      Util.aguarde(1000)
      }
    escreva ("Contagem finalizada!\n\n")
    }
  }