Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'


  root "home#index"
  get "home", to: "home#index"
  resources :books, only: [:index, :show, :new, :edit, :create, :update, :destroy], param: :identifier
end
