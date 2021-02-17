Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root to: redirect('/channels')
  resources :channels
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
