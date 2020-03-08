Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'base/:id', to: "game#showbase"
  patch 'base/:id', to: "game#updatebase"
  root to: "game#show"
end
