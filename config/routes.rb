Rails.application.routes.draw do
  
  root to: "staticpages#index"
  resources :recipes

  get 'recipes', to: "recipes#recipes"

  get 'sobre', to: "staticpages#sobre"
  get 'contato', to: "staticpages#contato"
  

 get 'entrar', to: 'sessions#new', as: 'entrar'
 post 'entrar', to: 'sessions#create'
 get 'sair', to: 'sessions#destroy'
 get 'cadastro', to: 'users#new', as: 'cadastro' 
 get 'sessions/new'

resources :users

  resources :users, only: [:show, :new, :create, :edit, :update] do
    resources :recipes, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  resources :sessions, only: [:new, :create, :destroy]
end
