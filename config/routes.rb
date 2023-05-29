Rails.application.routes.draw do
  get 'about', to: 'about#index'

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

  get 'auth/twitter/callback', to: 'omniauth_callback#twitter'

  resources :twitter_accounts
  resources :tweets

  root 'main#index'
end
