programa {
    caracter tab[3][3]

    funcao inicializarTabuleiro() {
        para (inteiro l = 0; l < 3; l++) {
            para (inteiro c = 0; c < 3; c++) {
                tab[l][c] = ' '
            }
        }
    }

    funcao desenharTabuleiro() {
        escreva("\n     0   1   2  (Colunas)\n")
        para (inteiro l = 0; l < 3; l++) {
            escreva(" ", l, "   ", tab[l][0], " | ", tab[l][1], " | ", tab[l][2], "\n")
            se (l < 2) {
                escreva("    ---+---+---\n")
            }
        }
        escreva("\n")
    }

    funcao logico checarVitoria(caracter p) {
        // Linhas
        para (inteiro l = 0; l < 3; l++) {
            se (tab[l][0] == p e tab[l][1] == p e tab[l][2] == p) {
                retorne verdadeiro
            }
        }

        // Colunas
        para (inteiro c = 0; c < 3; c++) {
            se (tab[0][c] == p e tab[1][c] == p e tab[2][c] == p) {
                retorne verdadeiro
            }
        }

        // Diagonal Principal
        se (tab[0][0] == p e tab[1][1] == p e tab[2][2] == p) {
            retorne verdadeiro
        }

        // Diagonal Secundária
        se (tab[0][2] == p e tab[1][1] == p e tab[2][0] == p) {
            retorne verdadeiro
        }

        retorne falso
    }

    funcao inicio() {
        caracter jogadorAtual = 'X'
        inteiro lin, col
        inteiro jogadas = 0
        logico venceu = falso

        inicializarTabuleiro()

        escreva("=========================================\n")
        escreva("       JOGO DA VELHA EM PORTUGOL         \n")
        escreva("=========================================\n")

        enquanto (jogadas < 9 e venceu == falso) {
            desenharTabuleiro()
            escreva("Vez do Jogador [", jogadorAtual, "]:\n")
            escreva("Digite a Linha (0 a 2): ")
            leia(lin)
            escreva("Digite a Coluna (0 a 2): ")
            leia(col)

            se (lin < 0 ou lin > 2 ou col < 0 ou col > 2) {
                escreva("\n⚠️ Posição fora do tabuleiro! Use valores de 0 a 2.\n")
            } senao se (tab[lin][col] != ' ') {
                escreva("\n⚠️ Essa posição já foi jogada! Escolha outra casa.\n")
            } senao {
                tab[lin][col] = jogadorAtual
                jogadas++

                se (checarVitoria(jogadorAtual)) {
                    venceu = verdadeiro
                } senao {
                    se (jogadorAtual == 'X') {
                        jogadorAtual = 'O'
                    } senao {
                        jogadorAtual = 'X'
                    }
                }
            }
        }

        desenharTabuleiro()

        se (venceu == verdadeiro) {
            escreva("🏆 VITÓRIA! O Jogador [", jogadorAtual, "] venceu a partida!\n")
        } senao {
            escreva("🤝 DEU VELHA! Ninguém venceu, partida empatada!\n")
        }
    }
}
