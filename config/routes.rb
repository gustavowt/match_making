Rails.application.routes.draw do
  resources :rooms do
    resource :players
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'rooms#index'
end
