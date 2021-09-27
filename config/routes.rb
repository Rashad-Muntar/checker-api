Rails.application.routes.draw do
  namespace :api do
    get "users", to: 'users#index'
    post 'signup', to: 'users#create'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    resources :users do
      # get "cateories", to: "categories#index"
      # post "new_categories", to: 'categories#create'
      # get "show", to: 'catgories#show'
      resources :categories do
        resources :activities, only: [:index, :create, :update, :destroy] 
        resources :periods, only: [:create]
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
