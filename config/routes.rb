Rails.application.routes.draw do
  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'
  get 'about', to: 'about#index'

  root 'main#index'
end
