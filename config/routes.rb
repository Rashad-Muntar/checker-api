Rails.application.routes.draw do
  namespace :api do
    get "users", to: 'users#index'
    post 'signup', to: 'users#create'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    resources :users do
      resources :categories do
        resources :activities, only: [:index, :create, :update, :destroy] 
        resources :periods, only: [:create]
      end
    end
  end
end
