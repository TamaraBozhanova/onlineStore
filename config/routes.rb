Rails.application.routes.draw do
  devise_for :users
 root "phones#index"
 resources :phones
 resources :categories
end
