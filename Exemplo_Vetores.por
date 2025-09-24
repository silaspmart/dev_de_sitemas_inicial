programa {
  inclua biblioteca Matematica
  funcao inicio() {
    const inteiro N = 4
    real notas [N]
    real media, soma = 0

    para (inteiro i=0; i<N; i++) {
      escreva ("Qual a sua nota ", i+1,": ")
      leia (notas[i])
    } para (inteiro i=0; i<N; i++) {
    soma = soma + notas [i]
  }  media = soma/N
    escreva ("Sua média é: ", Matematica.arredondar (media,2,0),"\n")
}
}