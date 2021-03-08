Rails.application.routes.draw do
  get 'graphics/index'
  devise_for :users
  resources :snacks
  resources :diets
  root to: "home#index"
  resources :graphics
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
