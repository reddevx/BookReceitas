Rails.application.routes.draw do
  get 'sessions/new'

  resources :recipes

  get 'recipes', to: "recipes#recipes"

  root to: "staticpages#index"

  get 'sobre', to: "staticpages#sobre"

  get 'contato', to: "staticpages#contato"
  
  resources :users

  get 'entrar',   to: 'sessions#new'
  post 'entrar',  to: 'sessions#create'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy, :show]

end
