programa {
    funcao inicio() {
        const inteiro TAM = 4
        real notas[TAM]
        real soma = 0.0, media

        escreva("=== LEITURA DE NOTAS COM VETOR ===\n")
        para (inteiro i = 0; i < TAM; i++) {
            escreva("Digite a nota da Prova ", i + 1, ": ")
            leia(notas[i])
            soma = soma + notas[i]
        }

        media = soma / TAM

        escreva("\n--- BOLETIM ESCOLAR ---\n")
        para (inteiro i = 0; i < TAM; i++) {
            escreva("Prova ", i + 1, " (Posição [", i, "]): ", notas[i], "\n")
        }

        escreva("-------------------------\n")
        escreva("Média Geral: ", media, "\n")
    }
}
