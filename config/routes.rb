Rails.application.routes.draw do
  resources :experience_levels
  resources :attack_bonus
  resources :saves
  resources :equipment
  resources :armors
  resources :spells
  resources :weapons
  resources :characters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end