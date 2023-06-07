Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :themes do
    resources :topics, only: [:new, :create]
  end

  resources :topics, only: [:show, :edit, :update, :destroy] do
    resources :items, only: [:new, :create]
  end

  resources :items, only: [:show, :edit, :update, :destroy] do
    resources :text_components, only: [:new, :create]
    resources :link_component, only: [:new, :create]
  end

  resources :text_components, only: [:destroy]

  resources :link_component, only: [:destroy]
end
