Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :themes do

    resources :topics, only: [:new, :create]
  end

  resources :topics, only: [:show, :edit, :update, :destroy] do
    resources :items, only: [:new, :create]
  end

  resources :items, only: [:show, :edit, :update, :destroy]

end
