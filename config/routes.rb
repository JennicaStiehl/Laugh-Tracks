Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index', as: 'welcome'

  post '/login', to: 'sessions#create'
  
  resources :comedians, only: [:index, :new, :create, :show] do
    resources :specials, only: [:index, :new, :create]
  end
end
