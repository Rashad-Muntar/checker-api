Rails.application.routes.draw do
  namespace :api do
    get "users", to: 'users#index'
    post 'signup', to: 'users#create'
    post 'login', to: 'sessions#create'
    get 'current_user', to: 'sessions#logged_in'
    delete 'logout', to: 'sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
