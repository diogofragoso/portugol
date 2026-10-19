programa {
    funcao inicio() {
        inteiro numero = 1
        inteiro soma = 0
        inteiro quantidade = 0

        escreva("=== SOMADOR INTERATIVO COM ENQUANTO ===\n")
        escreva("Digite números inteiros para somar (digite 0 para encerrar):\n")

        enquanto (numero != 0) {
            escreva("Número: ")
            leia(numero)

            se (numero != 0) {
                soma = soma + numero
                quantidade = quantidade + 1
            }
        }

        escreva("\n--- RESULTADO FINAL ---\n")
        escreva("Quantidade de números válidos digitados: ", quantidade, "\n")
        escreva("Soma total acumulada: ", soma, "\n")
    }
}
