Rails.application.routes.draw do
  get 'questionnaires/new'
  get 'questionnaires/create'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "pages#home"

  resources :users, only: [:show]
  resources :profiles, only: [:show, :new, :create, :edit, :update]
end
