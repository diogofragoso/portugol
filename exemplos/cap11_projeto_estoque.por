programa {
    const inteiro TAM = 4
    cadeia nomes[TAM] = {"Caderno Universitário", "Caneta Esferográfica Azul", "Mochila Escolar", "Borracha Branca"}
    inteiro estoque[TAM] = {35, 120, 15, 80}
    real precos[TAM] = {18.90, 2.50, 89.90, 1.80}
    real faturamento = 0.0

    funcao linhaSeparadora() {
        escreva("=================================================================\n")
    }

    funcao listarEstoque() {
        linhaSeparadora()
        escreva("CÓD\tITEM\t\t\t\tESTOQUE\t\tPREÇO\n")
        linhaSeparadora()
        para (inteiro i = 0; i < TAM; i++) {
            escreva("[", i, "]\t", nomes[i], "\t\t", estoque[i], " un\t\tR$ ", precos[i], "\n")
        }
        linhaSeparadora()
    }

    funcao efetuarVenda() {
        inteiro codigo, quantidade
        real totalItem

        listarEstoque()
        escreva("Informe o CÓDIGO do item (0 a 3): ")
        leia(codigo)

        se (codigo < 0 ou codigo >= TAM) {
            escreva("❌ Código de item inválido!\n")
            retorne
        }

        escreva("Informe a quantidade para compra: ")
        leia(quantidade)

        se (quantidade <= 0) {
            escreva("❌ A quantidade deve ser pelo menos 1!\n")
        } senao se (quantidade > estoque[codigo]) {
            escreva("⚠️ Não temos essa quantidade em estoque! Estoque atual: ", estoque[codigo], "\n")
        } senao {
            estoque[codigo] = estoque[codigo] - quantidade
            totalItem = quantidade * precos[codigo]
            faturamento = faturamento + totalItem

            escreva("\n🎉 VENDA REALIZADA COM SUCESSO!\n")
            escreva("Produto: ", nomes[codigo], "\n")
            escreva("Qtd comprada: ", quantidade, " un\n")
            escreva("Total da compra: R$ ", totalItem, "\n")
        }
    }

    funcao inicio() {
        inteiro opcao

        faca {
            linhaSeparadora()
            escreva("             SISTEMA DE CONTROLE DE ESTOQUE E PDV                \n")
            linhaSeparadora()
            escreva("1 - Consultar Catálogo e Estoque\n")
            escreva("2 - Registrar Nova Venda\n")
            escreva("3 - Consultar Faturamento Total do Dia\n")
            escreva("0 - Encerrar Sistema\n")
            linhaSeparadora()
            escreva("Digite sua opção: ")
            leia(opcao)

            escolha (opcao) {
                caso 1:
                    listarEstoque()
                    pare
                caso 2:
                    efetuarVenda()
                    pare
                caso 3:
                    linhaSeparadora()
                    escreva("💰 Faturamento Total Acumulado: R$ ", faturamento, "\n")
                    linhaSeparadora()
                    pare
                caso 0:
                    escreva("\nSaindo do sistema... Dados salvos na memória!\n")
                    pare
                caso contrario:
                    escreva("\nOpção inválida! Tente novamente.\n")
            }
            escreva("\n")
        } enquanto (opcao != 0)
    }
}

