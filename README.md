# Atividade: introdução ao BDD

Para começar faça clone deste [repositório]()

Nesta atividade vamos trabalhar um pouco de como criar o passo a passo, em que os testes irão ocorrer. No clone que irá fazer já estão criados partes dos arquivos de **feature** e a **classe** que irão ocorrer os testes, ou seja, você só vai se preocupar em alterar o arquivo de **steps** e criar alguns cenários para os testes.

## Instruções

Lembre-se que os arquivos de steps e de features devem conter algumas informações necessárias, estás informações devem ser escritas da forma correta para seus testes obterem êxito. Veja alguns pontos de atenção para montar seus arquivos:

#### Features

##### Funcionalidade
 
Aqui é definido qual a funcionalidade vai ser realizada para os testes. Pontos importantes são os termos citados a seguir: 
- Definir a linguagem na qual vai ser definidos os cenários
- **Funcionalidade** -> define de qual classe pertence esta feature
- **Como** -> define o "protagonista" no qual vai ser realizado os testes
- **Eu** -> define quais funções devem ser realizadas
- **Para** -> define as consequencias das funções realizadas

``` feature
# language: pt 

Funcionalidade: Person
    Como um Person
    Eu devo realizar minhas atividades rotineiras
    Para que eu possa seguir a vida saudável.
```

##### Contexto

Aqui é definido os parâmetros iniciais, no qual os testes terão como ponto inicial.
- **Dado** -> Da inicio as informações que devem ser definidas
- **E** -> Da continuidade para mais declarações de parâmetros

```feature
    Contexto:
        Dado um Person de nome "João"
        E ele sempre começa o dia com 0 refeição
        E ele sempre começa o dia saudável.
```

##### Cenário

Neste trecho é onde vai ser inserido os casos de testes, onde é definido uma situação em que o **Contexto** citado acima vai ser passado.

- **Cenário** -> Situação de teste
- **Quando** -> Indica a ação que vai ser realizada
- **Então** -> Indica a consequencia da ação realizada anteriormente

```feature
    Cenário: Cozinhou para conseguir mais refeições
        Quando o Person cozinha 1 vezes
        Então a quantidade de refeições deve ser igual a 2
```

#### Steps

Arquivo onde é definido o passo a passo, juntamente com isso são definidos quais funções vão ser realizadas em cada trecho do teste.
##### Exportar os arquivos necessários

Exportar os arquivos corretos é um dos pontos necessários para dar o pontapé inicial.
```js
const { Given, When, Then } = require("@cucumber/cucumber"); // Exportando arquivo cucumber e passsando valores para variaveis
const assert = require("assert");

const { pessoa } = require("../../app");
```

##### Given

Nesta etapa você vai inserir os dados iniciais. Por exemplo nessa parte você pode inserir os parâmetros e com quais valores irão começar.
```js

Given('um Person de nome {string}', function (string) {
    pessoa.name = string;
});

```

##### When

A etapa seguinte define a ação. Isto significa que é nessa parte em que o teste pensa o que esperamos dele e desta forma realiza o comportamento.
```js
When('o Person parar para cozinhar {int} vezes', function (int) {
    for (let contador = 0; contador < int; contador++) {
        pessoa.cook();
    }

When('o Person parar para comer {int} vezes', function (int) {
    for (let contador = 0; contador < int; contador++) {
        pessoa.cook();
    }
});
```

##### Then

Este é o ultimo passo, a etapa de verificação. Nessa parte vai ser observada a saída do sistema, verificamos se ele se comportou da forma esperada e com isso a conclusão.
```js
Then('a quantidade de refeições deve ser igual a {int}', function (int) {
    assert.strictEqual(pessoa.food, int);
});

```

## Atividade
### Features

Agora é sua vez, a partir dos exemplos citados acima, crie mais dois cenários: 
- Primeiro: titulo => **Cozinhou, comeu e seguiu saudável**
    - Quando o Person parar para cozinhar 2 vezes
    - E o Person parar para comer 2 vezes
    - Então a quantidade de refeições deve ser igual a 2
    - E o Person não ficará doente


- Segundo: titulo => **Tentou comer sem ter refeição**
    - Quando o Person tentar comer 1 vezes
    - E a quantidade de refeições deve ser igual a 0
    - Então o Person ficará doente

### Steps

Para criar o passo a passo do seu teste, siga os modelos passados anteriormente, segue abaixo um exemplo de um ponto de partida. A imagem a seguir é um exemplo de como possivelmente irá aparecer no terminal após inserir o comando **npm test**, copie e cole inserindo a lógica dentro de cada caso.

![](https://files-kenzie-academy-brasil.s3.amazonaws.com/q1/sprint06/bdd/bdd.png)
