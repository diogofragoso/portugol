programa {
    funcao inicio() {
        inteiro matriz[3][3]

        // Preenchendo valores automaticamente para demonstração
        para (inteiro l = 0; l < 3; l++) {
            para (inteiro c = 0; c < 3; c++) {
                matriz[l][c] = (l + 1) * (c + 1)
            }
        }

        escreva("==============================\n")
        escreva("     TABELA MATRIZ 3x3        \n")
        escreva("==============================\n")

        para (inteiro l = 0; l < 3; l++) {
            para (inteiro c = 0; c < 3; c++) {
                escreva("[", matriz[l][c], "]\t")
            }
            escreva("\n")
        }
        escreva("==============================\n")
    }
}

