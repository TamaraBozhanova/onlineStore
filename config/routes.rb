Rails.application.routes.draw do
 root "phones#index"
 resources :phones
 resources :categories
end
