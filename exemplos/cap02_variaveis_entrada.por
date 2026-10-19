programa {
    funcao inicio() {
        cadeia nome
        inteiro idade
        real altura
        logico estudante

        escreva("Digite seu nome: ")
        leia(nome)

        escreva("Digite sua idade: ")
        leia(idade)

        escreva("Digite sua altura em metros (ex: 1.75): ")
        leia(altura)

        escreva("Você é estudante? (digite verdadeiro ou falso): ")
        leia(estudante)

        escreva("\n--- FICHA CADASTRAL ---\n")
        escreva("Nome: ", nome, "\n")
        escreva("Idade: ", idade, " anos\n")
        escreva("Altura: ", altura, " m\n")
        escreva("Estudante: ", estudante, "\n")
    }
}

