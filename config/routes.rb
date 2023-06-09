Rails.application.routes.draw do
  get 'taskcomponents/create'
  get 'link_components/create'
  devise_for :users
  root to: "pages#landing"
  get '/landing', to: 'pages#landing'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "profile", to: "pages#profile"
  get "home", to: "pages#home"

  resources :themes do
    resources :topics, only: [:show, :new, :create, :edit, :update]

    member do
      get 'favorite', to: 'themes#favorite', as: :favorite
      get 'unfavorite', to: 'themes#unfavorite', as: :unfavorite
    end
  end

  resources :topics, only: [:show, :edit, :update, :destroy] do
    resources :items, only: [:new, :create, :update, :edit, :destroy_item]
  end

  resources :items, only: [:show, :edit, :update, :destroy_item] do
    delete 'destroy_item', on: :member
    resources :text_components, only: [:new, :create, :update]
    resources :link_components, only: [:new, :create, :update]
    resources :task_components, only: [:new, :create, :update]
    resources :calendar_components, only: [:new, :create, :update]
    resources :locations, only: [:create]
  end

  resources :text_components, only: [:destroy]
  resources :link_components, only: [:destroy]
  resources :task_components, only: [:destroy]
  resources :calendar_components, only: [:destroy]
  resources :location_components, only: [:destroy]


end
