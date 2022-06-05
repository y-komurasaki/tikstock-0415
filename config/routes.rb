Rails.application.routes.draw do
  devise_for :users
  root to: "stocks#index"

  

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :stocks do
    collection do
      get 'search'
    end
  end
  
  resources :stocks do
    member do
      get 'quantity'
    end

    member do
      patch 'quantity_update'
    end

  end

end
