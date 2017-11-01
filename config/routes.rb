Rails.application.routes.draw do

  resources :studios

  ActiveAdmin.routes(self)
  resources :categories

  devise_for :users
  root to: 'pages#home'

  resources :pois do
    resources :reviews
  end

  mount Attachinary::Engine => "/attachinary"

end
