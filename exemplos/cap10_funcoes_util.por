programa {
    inclua biblioteca Util --> u
    inclua biblioteca Matematica --> mat

    funcao real calcularHipotenusa(real cateto1, real cateto2) {
        real somaQuadrados = mat.potencia(cateto1, 2.0) + mat.potencia(cateto2, 2.0)
        retorne mat.raiz(somaQuadrados, 2.0)
    }

    funcao inicio() {
        real c1 = 3.0, c2 = 4.0
        real hip

        escreva("Calculando Teorema de Pitágoras...\n")
        escreva("Cateto 1: ", c1, " | Cateto 2: ", c2, "\n")
        
        hip = calcularHipotenusa(c1, c2)
        escreva("Hipotenusa calculada: ", hip, "\n\n")

        escreva("Sorteando um número da sorte com a biblioteca Util: ")
        inteiro sorteio = u.sorteia(1, 100)
        escreva("[", sorteio, "]!\n")
    }
}

