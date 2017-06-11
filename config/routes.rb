Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  resources :categories

  devise_for :users
  root to: 'pages#home'

  resources :pois, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
