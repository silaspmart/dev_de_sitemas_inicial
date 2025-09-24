/*Crie um algoritmo que receba login e senha e verifique as credenciais. Caso algum deles estiver errado o programa deve retornar ao usuário quais 
das opções está errada, se é o login ou a senha. O programa deve bloquear o acesso após 3 tentativas erradas. Quando for a última tentativa ele 
deve emitir um alerta: "Última tentativa, mais um erro seu acesso será bloqueado!"
*/
programa {
  funcao inicio() {
    const cadeia login = "silas", senha = "silas1234"
    cadeia logdig, senhadig
    inteiro tentativas = 0

     enquanto (tentativas <3) {
      escreva ("Digite seu login de usuario: ")
      leia (logdig)
      escreva ("Digite sua senha: ")
      leia (senhadig)

      se (logdig == login e senhadig == senha) {
        escreva ("\nBem vindo ao sistema!\n\n")
        pare
      } 
      senao {
        tentativas++
        se (logdig != login e senhadig != senha) {
          escreva ("\nLogin e senha inválidos!\n")
        } senao se (logdig != login) {
          escreva ("\nLogin inválido!\n")
          } senao escreva ("\nSenha inválida!\n")
        se (tentativas == 2){
        escreva ("\nÚltima tentativa!\n")
        }
      }
     }
  }
}