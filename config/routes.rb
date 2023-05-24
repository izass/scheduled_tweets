Rails.application.routes.draw do
  get 'password_resets', to: 'password_resets#new'
  post 'password_resets', to: 'password_resets#create'
  get 'password_resets/edit', to: 'password_resets#edit'
  patch 'password_resets/edit', to: 'password_resets#update'

  get 'password/edit', to: 'password#edit', as: :edit_password
  patch 'password', to: 'password#update', as: :update_password

  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'

  delete 'sign_out', to: 'session#destroy'
  get 'sign_in', to: 'session#new'
  post 'sign_in', to: 'session#create'

  get 'about', to: 'about#index'

  root 'main#index'
end
