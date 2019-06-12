Rails.application.routes.draw do
  resources :skateboards
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/myboards' => 'skateboards#myboards'
  root to: 'skateboards#index'
end
