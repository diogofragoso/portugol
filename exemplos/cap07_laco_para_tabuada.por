programa {
    funcao inicio() {
        inteiro numero

        escreva("Digite um número para gerar a tabuada: ")
        leia(numero)

        escreva("\n==============================\n")
        escreva("       TABUADA DO ", numero, "       \n")
        escreva("==============================\n")

        para (inteiro i = 1; i <= 10; i++) {
            escreva(numero, " x ", i, " = ", numero * i, "\n")
        }
        escreva("==============================\n")
    }
}
