Rails.application.routes.draw do
  resources :users do
    resources :libraries
  end

  resources :games
  resources :categorys
  resources :support
  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
