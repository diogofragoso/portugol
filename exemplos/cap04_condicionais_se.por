programa {
    funcao inicio() {
        real nota1, nota2, media

        escreva("Digite a primeira nota: ")
        leia(nota1)

        escreva("Digite a segunda nota: ")
        leia(nota2)

        media = (nota1 + nota2) / 2.0

        escreva("\nMédia obtida: ", media, "\n")
        escreva("Situação acadêmica: ")

        se (media >= 7.0) {
            escreva("APROVADO! Parabéns! 🎉\n")
        } senao se (media >= 5.0) {
            escreva("EM RECUPERAÇÃO. Dedique-se aos estudos! 📚\n")
        } senao {
            escreva("REPROVADO. Não desista! 💪\n")
        }
    }
}

