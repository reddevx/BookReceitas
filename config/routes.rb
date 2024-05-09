Rails.application.routes.draw do

  get 'recipes', to: "recipes#recipes"

  root to: "staticpages#index"

  get 'sobre', to: "staticpages#sobre"

  get 'contato', to: "staticpages#contato"

  resources :recipes

  resources :users, only: [:new, :create]
end
