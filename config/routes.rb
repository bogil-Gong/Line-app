Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  resources :conversations, only: [:create] do
    resources :messages, only: [:create]
    member do
      post :close
    end

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
