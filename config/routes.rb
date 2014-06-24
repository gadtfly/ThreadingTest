Rails.application.routes.draw do
  resources :comments, only: [:index, :create, :destroy]
  root 'comments#index'
end
