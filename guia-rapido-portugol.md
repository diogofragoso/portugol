# ⚡ Guia Rápido de Referência: Portugol Webstudio

> Uma "folha de cola" (cheat sheet) prática com toda a sintaxe, comandos, tipos de dados e funções essenciais do Portugol para consultar sempre que tiver dúvidas durante os exercícios.

---

## 📌 1. Estrutura Mínima Obrigatória

Todo programa em Portugol precisa estar contido dentro de um bloco `programa` e ter uma função principal chamada `inicio()`:

```portugol
programa {
    funcao inicio() {
        // Seu código começa a ser executado aqui!
        escreva("Olá, Mundo!")
    }
}
```

---

## 💬 2. Comentários (Notas que o Computador Ignora)

```portugol
// Comentário de uma linha só

/*
   Comentário de múltiplas linhas.
   Muito útil para explicar raciocínios longos.
*/
```

---

## 📦 3. Tipos Primitivos de Dados

| Tipo | O que armazena | Exemplos válidos |
| :--- | :--- | :--- |
| `inteiro` | Números inteiros (positivos, negativos, zero) | `0`, `42`, `-15`, `2026` |
| `real` | Números com casas decimais (use **ponto**, não vírgula!) | `3.14`, `1.99`, `-0.5`, `10.0` |
| `cadeia` | Textos e frases (sempre entre **aspas duplas**) | `"Olá!"`, `"Maria Silva"`, `"1234"` |
| `caracter` | Um único caractere (sempre entre **aspas simples**) | `'A'`, `'z'`, `'9'`, `'+'` |
| `logico` | Valores booleanos (apenas dois estados) | `verdadeiro`, `falso` |

---

## 📝 4. Declaração e Atribuição de Variáveis

```portugol
// Declaração sem valor inicial
inteiro idade
real salario
cadeia nome
logico aprovado

// Declaração com valor inicial
inteiro contador = 0
real pi = 3.1415
cadeia saudacao = "Bem-vindo!"
logico ligado = verdadeiro

// Constante (valor que NUNCA pode ser alterado depois de criado)
const real TAXA_JUROS = 0.05
```

---

## 🖥️ 5. Entrada e Saída de Dados

```portugol
// Saída simples
escreva("Texto na tela")

// Quebra de linha (\n) e tabulação (\t)
escreva("Primeira linha\nSegunda linha com \ttabulacao!\n")

// Saída combinando texto e variáveis (concatenação com vírgula)
cadeia nome = "Ana"
inteiro idade = 20
escreva("A aluna ", nome, " tem ", idade, " anos.\n")

// Entrada de dados pelo teclado (leia)
escreva("Digite seu nome: ")
leia(nome)

escreva("Digite sua idade: ")
leia(idade)
```

---

## 🧮 6. Operadores Aritméticos

| Operador | Operação | Exemplo | Resultado |
| :---: | :--- | :--- | :---: |
| `+` | Adição | `10 + 5` | `15` |
| `-` | Subtração | `10 - 5` | `5` |
| `*` | Multiplicação | `10 * 5` | `50` |
| `/` | Divisão | `10 / 4` (entre inteiros dá inteiro: `2`) | `2` |
| `/` | Divisão real | `10.0 / 4.0` | `2.5` |
| `%` | Resto da Divisão inteira (módulo) | `10 % 3` | `1` |

> [!TIP]
> Use parênteses para forçar a ordem de cálculo: `(5 + 3) * 2` resulta em `16`, enquanto `5 + 3 * 2` resulta em `11`.

---

## ⚖️ 7. Operadores Relacionais (Comparações)

Retornam sempre `verdadeiro` ou `falso`:

| Operador | Significado | Exemplo | Resultado |
| :---: | :--- | :--- | :---: |
| `==` | Igual a | `5 == 5` | `verdadeiro` |
| `!=` | Diferente de | `5 != 3` | `verdadeiro` |
| `>` | Maior que | `10 > 20` | `falso` |
| `<` | Menor que | `10 < 20` | `verdadeiro` |
| `>=` | Maior ou igual a | `10 >= 10` | `verdadeiro` |
| `<=` | Menor ou igual a | `5 <= 4` | `falso` |

> [!WARNING]
> Cuidado: `=` serve para **guardar valor** em variável (`x = 10`), enquanto `==` serve para **comparar igualdade** (`se (x == 10)`).

---

## 🧠 8. Operadores Lógicos

Combinam condições booleanas:

| Operador | Nome | Regra de Ouro |
| :---: | :---: | :--- |
| `e` | Conjunção (AND) | Só é `verdadeiro` se **TODAS** as condições forem verdadeiras. |
| `ou` | Disjunção (OR) | É `verdadeiro` se **PELO MENOS UMA** condição for verdadeira. |
| `nao` | Negação (NOT) | Inverte o valor: transforma `verdadeiro` em `falso` e vice-versa. |

```portugol
se (idade >= 18 e temCarteira == verdadeiro) {
    escreva("Pode dirigir!")
}
```

---

## 🔀 9. Estruturas Condicionais

### `se` / `senao` / `senao se`
```portugol
se (media >= 7.0) {
    escreva("Aprovado!")
} senao se (media >= 5.0) {
    escreva("Recuperação!")
} senao {
    escreva("Reprovado!")
}
```

### `escolha` / `caso`
```portugol
escolha (opcao) {
    caso 1:
        escreva("Cadastrar cliente")
        pare
    caso 2:
        escreva("Listar clientes")
        pare
    caso contrario:
        escreva("Opção inválida!")
}
```

---

## 🔁 10. Estruturas de Repetição (Loops)

### `enquanto` (Verifica antes de rodar)
```portugol
inteiro contador = 1
enquanto (contador <= 5) {
    escreva(contador, "\n")
    contador = contador + 1 // Não esqueça de incrementar!
}
```

### `faca ... enquanto` (Roda pelo menos 1 vez)
```portugol
inteiro numero
faca {
    escreva("Digite um número positivo: ")
    leia(numero)
} enquanto (numero <= 0)
```

### `para` (Repetição com contador pré-definido)
```portugol
// para (inicialização; condição; incremento)
para (inteiro i = 1; i <= 10; i++) {
    escreva("Tabuada do 5: 5 x ", i, " = ", 5 * i, "\n")
}
```

---

## 📋 11. Vetores (Listas Unidimensionais)

```portugol
// Declaração de vetor com 5 posições (índices de 0 a 4)
real notas[5]

// Gravando dados
notas[0] = 8.5
notas[1] = 9.0

// Percorrendo com o laço 'para'
para (inteiro i = 0; i < 5; i++) {
    escreva("Nota ", i + 1, ": ", notas[i], "\n")
}
```

---

## 🗄️ 12. Matrizes (Tabelas Bidimensionais)

```portugol
// Matriz de 3 linhas e 3 colunas
inteiro tabuleiro[3][3]

// Preenchendo com dois laços 'para'
para (inteiro lin = 0; lin < 3; lin++) {
    para (inteiro col = 0; col < 3; col++) {
        tabuleiro[lin][col] = 0
    }
}
```

---

## 🧩 13. Funções e Procedimentos

### Função que não retorna valor (`vazio`)
```portugol
funcao linhaSeparadora() {
    escreva("----------------------------------------\n")
}
```

### Função com parâmetros e retorno de valor
```portugol
funcao real calcularMedia(real n1, real n2) {
    real m = (n1 + n2) / 2.0
    retorne m
}
```

---

## 📚 14. Bibliotecas Mais Utilizadas

Para usar uma biblioteca, inclua-a no início do código:

```portugol
programa {
    inclua biblioteca Util --> u
    inclua biblioteca Matematica --> mat
    inclua biblioteca Texto --> txt

    funcao inicio() {
        // Gerar número aleatório entre 1 e 100
        inteiro sorteado = u.sorteia(1, 100)

        // Pausar o programa por 1 segundo (1000 milissegundos)
        u.aguarde(1000)

        // Potência e Raiz Quadrada
        real potencia = mat.potencia(2.0, 3.0) // 8.0
        real raiz = mat.raiz(25.0, 2.0)        // 5.0
        real arredondado = mat.arredondar(3.14159, 2) // 3.14

        // Manipulação de Texto
        cadeia palavra = "portugol"
        cadeia maiuscula = txt.caixa_alta(palavra) // "PORTUGOL"
        inteiro tamanho = txt.numero_caracteres(palavra) // 8
    }
}
```

---

## ⌨️ 15. Principais Atalhos no Portugol Webstudio

| Ação | Atalho |
| :--- | :--- |
| **Executar o programa** | `Shift + F6` |
| **Interromper a execução** | `Shift + F5` |
| **Salvar o arquivo** | `Ctrl + S` |
| **Desfazer / Refazer** | `Ctrl + Z` / `Ctrl + Y` |
| **Duplicar linha** | `Ctrl + D` |
| **Comentar/Descomentar linha selecionada** | `Ctrl + /` |

