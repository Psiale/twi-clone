Rails.application.routes.draw do
  resources :tweeets
  root "tweeets#index"
end
