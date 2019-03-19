Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index', as: 'welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users do
    collection do
      get :archived
    end
  end

  resources :users do
    collection do
      get :favorite
    end
  end
  # put '/users/:id/enable', to: 'users#enable', as: :enable_user
  get 'users/:id/disable', to: 'users#disable', as: :disable_user

  resources :users, only: [:new, :create, :show]
  # get '/dashboard', to: 'admin#show', as:

  resources :comedians, only: [:index, :new, :create, :show] do
    resources :specials, only: [:index, :new, :create]
  end

  namespace :admin do
    resources :users, :comedians
  end
end
