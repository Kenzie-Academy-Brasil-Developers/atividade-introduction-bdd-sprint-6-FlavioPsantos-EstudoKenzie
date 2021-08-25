# language: pt

Funcionalidade: Person
    Como um Person
    Eu devo realizar minhas atividades rotineiras
    Para que eu possa seguir a vida saudável.

    Contexto:
        Dado um Person de nome "João"
        E ele sempre começa o dia com 0 refeição
        E ele sempre começa o dia saudável.

    Cenário: Cozinhou para conseguir mais refeições
        Quando o Person cozinha 1 vezes
        Então a quantidade de refeições deve ser igual a 2
