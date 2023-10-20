Rails.application.routes.draw do
  # rota destinada para o caderno, que contem todos os codigos feitos durante as aulas
  get 'caderno/primeira_folha'
  get 'caderno/segunda_folha'
  get 'caderno/terceira_folha'
  get 'caderno/quarta_folha'
  get 'caderno/quinta_folha'
  get 'caderno/sexta_folha'

  root 'welcome#index'
  get "welcome/index"
  get "/inicio", to: "welcome#index" # criando uma rota inicio que vai para o pagina root

  resources :mining_types
  resources :coins # resources gera todas as 7 rotas CRUD
  # get "/coins", to: "coins#index"
  # get "/coins", to: "coins#edit"
end
