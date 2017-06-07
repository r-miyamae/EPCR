Rails.application.routes.draw do
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  root 'static_pages#home'
  get "/import", to: 'static_pages#import'
  resources :card_files
end
