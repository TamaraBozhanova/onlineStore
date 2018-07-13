Rails.application.routes.draw do
  devise_for :users
 root "phones#index"
 resources :phones, only: [:show, :index]
 resources :categories, only: [:show]

  namespace :admin do
    resources :categories, except: [:show]
    resources :phones, except: [:show, :index]
  end
end
