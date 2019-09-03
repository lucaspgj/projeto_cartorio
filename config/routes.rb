Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  resources :funcionarios
  resources :imovels do
      resources :imovel_moradors
  end
  resources :moradors
  resources :sessions, only: %i[new create]

end
