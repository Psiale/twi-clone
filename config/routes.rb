Rails.application.routes.draw do
  devise_for :users
  resources :tweeets
  root "tweeets#index"
end
