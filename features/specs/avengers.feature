#language: pt

Funcionalidade: Avengers

    Cenario: Remover o Capitão América

        Dado que acesso a tela Avengers
        Quando e apago o Capitão América
        Então devo ver a seguinte mensagem: "Item removido! (posição = 0)"
