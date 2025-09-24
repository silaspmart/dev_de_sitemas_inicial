/*  Em seguida, desenvolva uma função chamada mediaNotas que receba três notas do tipo real e retorne a média dessas notas. No programa
principal, peça as três notas ao usuário, chame a função e mostre se o aluno está aprovado (média maior ou igual a 6) ou reprovado. */

programa {
    inclua biblioteca Matematica
    funcao real mediaNotas (real n1, real n2, real n3) {
      real media = ((n1+n2+n3)/3)
      retorne Matematica.arredondar(media,2)
    }
  funcao inicio() {
    real nota1, nota2, nota3
    escreva ("Digite a nota da avaliação 1: ")
    leia (nota1)
    escreva ("Digite a nota da avaliação 2: ")
    leia (nota2)
    escreva ("Digite a nota da avaliação 3: ")
    leia (nota3)
    mediaNotas (nota1, nota2, nota3)
    escreva ("\nA media final foi de: ",mediaNotas (nota1, nota2, nota3),"\n")
    
    se (mediaNotas (nota1, nota2, nota3) < 6) {
        escreva ("Você foi reprovado! Estude mais... \n")
      } senao escreva ("Você foi aprovado!\n")
    }
  }
}