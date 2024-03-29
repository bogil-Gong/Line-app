Rails.application.routes.draw do
  devise_for :users, :controller => {:registrations => "user/registragtions"}
  root to: 'home#index'

  resources :conversations, only: [:create] do
    member do
      post :close
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
