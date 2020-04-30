Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :tweeets
  root "tweeets#index"
end
