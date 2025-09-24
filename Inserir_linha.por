//Exemplo de código que retorna os numeros de 1 a 5, separados por uma "linha" de caracteres

programa {
  funcao inicio() {
    inteiro contador
    para (contador=0;contador<20;contador++) {
      escreva  ("*")
    }
    escreva ("\n")
    escreva ("Numeros entre 1 e 5\n")

    para (contador=0;contador<20;contador++) {
      escreva  ("*")
    }
    escreva ("\n")
    para (contador=1;contador<=5;contador++) {
      escreva  (contador,"\n")
    }

    para (contador=0;contador<20;contador++) {
      escreva  ("*")
    }
  }
}