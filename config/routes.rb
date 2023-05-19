Rails.application.routes.draw do
  get 'signup', to: "signup#index"
  get 'login', to: "login#index"

  resources :personal_spells
  resources :personal_equips
  resources :levels
  resources :playe_heritages
  resources :player_classes
  resources :turnings
  resources :spell_per_levels
  resources :hit_dices
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
  root "welcome#index"

end
