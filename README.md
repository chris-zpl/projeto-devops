
# Projeto DevOps

Bem-vindo(a) ao **Projeto DevOps** da disciplina de Análise e Desenvolvimento de Sistemas na PUCRS!

## Menu
- [Sobre](#sobre-o-projeto)
- [Informações](#informações)

## Sobre o projeto

Este projeto tem como princípio exibir um **contador regressivo** *(Countdown)* até a data escolhida para o aniversário, permitindo que amigos e familiares informem presentes ou mensagens de forma anônima através do arquivo JSON, que poderão ser visualizados por meio de cards clicáveis.\
O projeto usará o `GitHub Actions` para **commits** automáticos e o `AWS S3` para deploy. 

## Informações

Para o arquivo `dataAniversario.json` onde será informada a data do aniversariante:
```json
{
    "dia":"Insira o dia do aniversariante",
    "mes":"Insira o mês do aniversariante"
}
```
Para o arquivo `mensagens.json` onde será informado os presentes/mensagens para o aniversariante:
```json
[
  {
    "mensagem": "Insira aqui seus presentes/mensagens"
  },
  {
    "mensagem": "Insira aqui seus presentes/mensagens"
  },
]
```

> [!IMPORTANT]
> Copie e cole à partir das chaves para diferentes mensagens. A mensagem deve ser inserida dentro das aspas. A escolha da mensagem será de forma aleatória.
