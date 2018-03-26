Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  # 請依照專案指定規格來設定路由
  
  resources :tweets
  root "tweets#index"

  resources :users, only: [:edit, :update]

  namespace :admin do
    root "tweets#index"
    resources :tweets, only: [:index, :destroy]
  end




end