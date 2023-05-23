Rails.application.routes.draw do

  # Navigation routes
  get 'home', to: "home#index"
  get 'login', to: "login#index"
  get 'login/signup', to: "login#signup"
  get 'login/forgotpassword', to: "login#forgotpassword"
  get 'characters', to: "characters#index"
  get 'char_classes', to: "char_classes#index"
  get 'char_heritages', to: "char_heritages#index"
  get 'equips', to: "equips#index"
  get 'spells', to: "spells#index"

  # Logging and authentication routes
  post 'login', to: "sessions#create"
  post 'login/signup', to: "users#create"
  get 'me', to: "users#self"
  delete 'login', to: "sessions#destroy"

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
  root "home#index"

end
