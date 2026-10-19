programa {
    funcao inicio() {
        inteiro opcao

        escreva("=========================================\n")
        escreva("             MENU PRINCIPAL              \n")
        escreva("=========================================\n")
        escreva("1 - Iniciar Novo Jogo\n")
        escreva("2 - Carregar Jogo Salvo\n")
        escreva("3 - Opções de Som e Vídeo\n")
        escreva("4 - Créditos\n")
        escreva("0 - Sair\n")
        escreva("Digite a opção desejada: ")
        leia(opcao)

        escolha (opcao) {
            caso 1:
                escreva("\nCarregando novo mundo... Boa sorte, aventureiro!\n")
                pare
            caso 2:
                escreva("\nBuscando arquivos de save no disco...\n")
                pare
            caso 3:
                escreva("\nAbrindo configurações multimídia...\n")
                pare
            caso 4:
                escreva("\nDesenvolvido com carinho em Portugol Webstudio 2026.\n")
                pare
            caso 0:
                escreva("\nEncerrando o jogo. Até logo!\n")
                pare
            caso contrario:
                escreva("\nOpção inválida! Escolha um número do menu.\n")
        }
    }
}

