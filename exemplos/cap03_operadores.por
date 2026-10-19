programa {
    funcao inicio() {
        inteiro a, b
        escreva("Digite o primeiro número: ")
        leia(a)
        escreva("Digite o segundo número: ")
        leia(b)

        escreva("\n--- OPERAÇÕES ARITMÉTICAS ---\n")
        escreva("Soma (a + b): ", a + b, "\n")
        escreva("Subtração (a - b): ", a - b, "\n")
        escreva("Multiplicação (a * b): ", a * b, "\n")
        
        se (b != 0) {
            escreva("Divisão inteira (a / b): ", a / b, "\n")
            escreva("Resto da divisão (a % b): ", a % b, "\n")
        }

        escreva("\n--- OPERAÇÕES RELACIONAIS ---\n")
        escreva("a é igual a b? ", (a == b), "\n")
        escreva("a é maior que b? ", (a > b), "\n")
    }
}

