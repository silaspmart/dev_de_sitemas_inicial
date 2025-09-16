programa {
  inclua biblioteca Util --> u
  const inteiro MAX_USUARIOS = 5

  cadeia usuarios[MAX_USUARIOS][2]
  inteiro blocoDeFoco[MAX_USUARIOS]  
  inteiro totalUsuarios = 0, pomofocus, tempoDeFoco = 2 , descanso = 1, descansoLongo = 4 //tempoDeFoco = 25, descanso = 5, descansoLongo = 20 
  logico logado = falso
  cadeia usuarioAtual = ""

/******************** FUNÇÃO CADASTRAR USUARIOS ********************/
  funcao cadastrarUsuarios() {
    se (totalUsuarios >= MAX_USUARIOS){
      escreva("Limite de usuários atingido!\n")
    } senao {
      escreva("\nDigite seu nome de usuário: ")
      leia(usuarios[totalUsuarios][0])

      escreva("Digite sua senha: ")
      leia(usuarios[totalUsuarios][1])
      
      blocoDeFoco[totalUsuarios] = 0  
      totalUsuarios = totalUsuarios + 1
      escreva("Usuário cadastrado com sucesso!\n")
    }
  }

/******************** FUNÇÃO LOGIN ********************/
  funcao logico login() {
    cadeia nome, senha
    para (inteiro tentativas = 1; tentativas <= 3; tentativas++) {
      escreva("\nDigite seu nome de usuário: ")
      leia(nome)
      escreva("Digite a senha: ")
      leia(senha)

      para (inteiro i = 0; i < totalUsuarios; i++) {
        se (usuarios[i][0] == nome e usuarios[i][1] == senha) {
          usuarioAtual = nome
          logado = verdadeiro
          blocoDeFoco[i] = 0
          escreva("Acesso liberado ao painel de produtividade!\n")
          retorne verdadeiro
        }
      }

      se (tentativas < 3) {
        escreva("Usuário ou senha incorretos.\n")
        se (tentativas == 2) {
          escreva("Atenção!! Resta apenas uma tentativa!!\n")
        }
      }
    }
    escreva("Número máximo de tentativas atingido. Encerrando login.\n")
    retorne falso
  }

/******************** FUNÇÃO ENCONTRAR INDICE USUARIO ********************/
  funcao inteiro encontrarIndiceUsuario(cadeia nome) {
    para (inteiro i = 0; i < totalUsuarios; i++) {
      se (usuarios[i][0] == nome) {
        retorne i
      }
    }
    retorne -1
  }

/******************** FUNÇÃO CARREGAR BLOCO ********************/
  funcao inteiro carregarBloco() {
    inteiro indice = encontrarIndiceUsuario(usuarioAtual)
    se (indice == -1) {
      escreva("Erro: usuário não encontrado.\n")
      retorne 0
    }
    
    escreva("\nDefina o total de PomoFocus que você vai utilizar hoje: ")
    leia(pomofocus)
    se(pomofocus == 1){
      blocoDeFoco[indice] = blocoDeFoco[indice] + pomofocus
      escreva("PomoFocus definido com sucesso!\nSeu total de PomoFocus é: ", blocoDeFoco[indice], "\n")
    }
    senao se (pomofocus > 1) {
      blocoDeFoco[indice] = blocoDeFoco[indice] + pomofocus      
      escreva("PomoFocus definidos com sucesso!\nSeu total de PomoFocus é: ", blocoDeFoco[indice], "\n")
    } senao {
      escreva("PomoFocus inválido.\n")
    }
    retorne blocoDeFoco[indice]
  }

/******************** FUNÇÃO EXIBIR POMOFOCUS ********************/
  funcao exibirPomoFocus() {
    inteiro indice = encontrarIndiceUsuario(usuarioAtual)
    se (indice == -1) {
      escreva("Erro: usuário não encontrado.\n")
    } senao {
      escreva("\n-----> POMOFOCUS: ", blocoDeFoco[indice], " <-----\n")
    }        
  }

/******************** FUNÇÃO TIMER (minutos * 60) ********************/
  funcao timer(inteiro minutos, cadeia mensagem){
    inteiro totalSegundos = minutos * 60
    inteiro indice = encontrarIndiceUsuario(usuarioAtual)

    enquanto (totalSegundos >= 0){
      inteiro m = totalSegundos / 60
      inteiro s = totalSegundos % 60

      limpa()
      escreva("PomoFocus disponíveis: ", blocoDeFoco[indice], "\n")

      se (s < 10) {
        escreva(mensagem , "\n", m, ":0", s, "\n")
      } senao {
        escreva(mensagem, "\n", m, ":", s, "\n")
      }

      u.aguarde(20) // AJUSTAR PARA 1000 <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< */
      totalSegundos = totalSegundos - 1
    }

    escreva("\n", mensagem, " finalizado.\n")
  }

/******************** FUNÇÃO START ********************/
  funcao start(){
    inteiro indice = encontrarIndiceUsuario(usuarioAtual)
    inteiro ciclo = 0

    se(blocoDeFoco[indice] <= 0) {
      escreva("Não há blocos de foco para iniciar. Adicione blocos de foco na opção 1 do menu.\n")
    } senao {
      enquanto (blocoDeFoco[indice] > 0){
        timer(tempoDeFoco, "Tempo de Foco")
        blocoDeFoco[indice] = blocoDeFoco[indice] - 1
        ciclo = ciclo + 1
        
        se (ciclo == 4){
          timer(descansoLongo, "Descanso Longo 🍵🍵🍵")
          ciclo = 0
        } senao {
          se (blocoDeFoco[indice] > 0){
            timer(descanso, "Faça uma pausa 🍵")
          }
        }
      }
      escreva("\nParabéns! Todos os PomoFocus foram concluídos!\n")
    }    
  }

/******************** FUNÇÃO MODIFICAR TEMPOS ********************/
  funcao modificarTempos(){
    escreva("O tempo de foco padrão é de 25 minutos.\nDefina o tempo de foco desejado: ")
    leia(tempoDeFoco)
    escreva("O tempo de descanso padrão é de 5 minutos.\nDefina o tempo de descanso desejado: ")
    leia(descanso)
    escreva("O tempo de descanso longo padrão é de 20 minutos.\nDefina o tempo de descanso longo desejado: ")
    leia(descansoLongo)
  }

/******************** FUNÇÃO MENU POMODORO ********************/
  funcao menuPomoFocus() {
    inteiro opcao
    inteiro indice = encontrarIndiceUsuario(usuarioAtual)

    faca {
      escreva("\nMenu do Pomofocus:\n")
      escreva("1 - Adicione blocos de foco \n")
      escreva("2 - Verificar saldo de PomoFocus \n")
      escreva("3 - Modifique tempos de foco e descanso\n")
      escreva("4 - Começar\n")
      escreva("5 - Sair\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha (opcao) {
        caso 1:
          carregarBloco()
          pare
        caso 2:
          exibirPomoFocus()
          pare  
        caso 3:
          modificarTempos()
          pare
        caso 4:          
          start()
          pare
        caso 5:
          escreva("Saindo do sistema...\n")
          logado = falso
          pare
        caso contrario:
          escreva("Opção inválida. Tente novamente.\n")
      }
    } enquanto (logado)
  }

/******************** FUNCAO INICIO ********************/
  funcao inicio() {
    inteiro opcao
    faca {
      escreva("\n=== Bem-vindo ao PomoFocus ===\n")
      escreva("1 - Cadastrar usuário\n")
      escreva("2 - Fazer login\n")
      escreva("3 - Sair\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha (opcao) {
        caso 1:
          cadastrarUsuarios()
          pare
        caso 2:
          se (login()) {
            menuPomoFocus()
          }
          pare
        caso 3:
          escreva("Encerrando o programa.\n")
          pare
        caso contrario:
          escreva("Opção inválida.\n")
      }
    } enquanto (opcao != 3)
  }
}
