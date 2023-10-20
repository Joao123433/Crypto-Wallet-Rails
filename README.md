# Aplicação Rails 7 com SQLite3

## Projeto desenvolvido durante o Curso de Rails do Jackson Pires

Este projeto é resultado do curso de Rails 7 oferecido por Curso Ruby on Rails 5.x - Do início ao fim!. Durante o curso, exploramos os conceitos fundamentais do desenvolvimento web com Ruby on Rails e utilizamos o banco de dados SQLite3 para persistência de dados.

## Acesse o Projeto em

https://crypto-wallet-rails.fly.dev

## Pré-requisitos caso deseja fazer um form
Certifique-se de ter as seguintes ferramentas instaladas em sua máquina:

- Ruby (versão 3.2.2 recomendada)
- Rails (versão 7.0.8 recomendada)
- SQLite3

Recomendo o uso do [ASDF](https://asdf-vm.com/) para gerenciar versões do Ruby.

## Configuração do Ambiente

1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/nome-do-projeto.git
   cd nome-do-projeto

2. Instale as Dependências
    ```bash
    gem install bundler
    bundle
    yarn install

3. Crie e Migre o Banco de Dados
    ```bash
    rails db:create
    rails db:migrate

4. Inicie o Servidor
    ```bash
    rails s

# Acesse a aplicação em http://localhost:3000.
