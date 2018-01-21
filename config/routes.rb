Rails.application.routes.draw do

  get 'pages/test'
  resources :workshops
  resources :studios
  resources :categories

  ActiveAdmin.routes(self)
  resources :categories

  devise_for :users

  root to: 'pages#home'

  resources :pois do
    resources :reviews
  end

  mount Attachinary::Engine => "/attachinary"

end
