Rails.application.routes.draw do
  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'

  delete 'sign_out', to: 'session#destroy'
  get 'sign_in', to: 'session#new'
  post 'sign_in', to: 'session#create'

  get 'about', to: 'about#index'

  root 'main#index'
end
