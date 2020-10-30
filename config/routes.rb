Rails.application.routes.draw do
  resources :candidates, only: [:index, :create]
  resources :responses, only: [:index, :show]
  resources :users, only: [:index, :show, :create]
  resources :questions, only: [:index, :show, :create, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
