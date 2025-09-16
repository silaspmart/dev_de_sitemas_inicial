/*  Escreva um programa que declare um vetor para armazenar as notas de 4 alunos. O usuário deve digitar as notas, e o programa deve
calcular a média da turma, mostrar a média geral, as notas que ficaram acima da média e as notas que ficaram abaixo da média. */

programa {
  funcao inicio() {
    const inteiro N=4
    real notas[N]
    inteiro i
    real mediaTurma,soma=0

    para (i=0;i<N;i++) {
      escreva ("Digite a nota do aluno ",i+1,": ")
      leia (notas[i])
      soma=soma+notas[i]
    }
    mediaTurma=soma/N
    escreva ("\nA média da turma é: ",mediaTurma,"\n")
    para (i=0;i<N;i++) {
    se (notas[i]>mediaTurma) {
      escreva ("A nota do aluno ",i+1," está acima da media\n")
    } senao escreva ("A nota do aluno ",i+1," está abaixo da media\n")
    }
  } 
}