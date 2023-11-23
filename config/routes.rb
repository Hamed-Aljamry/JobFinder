Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "pages#home"

  resources :users, only: [:show] do
    resources :questionnaires, only: [:new, :create]
  end
  resources :profiles, only: [:show, :new, :create, :edit, :update]
end
