Rails.application.routes.draw do

  root to: "staticpages#index"

  get 'sobre', to: "staticpages#sobre"

  get 'contato', to: "staticpages#contato"

end
