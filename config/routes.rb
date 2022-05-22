Rails.application.routes.draw do
  devise_for :users
  root to: "stocks#index"

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :stocks
end
