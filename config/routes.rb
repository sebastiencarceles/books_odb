Rails.application.routes.draw do
  root "home#index"
  get "home", to: "home#index"
  resources :books, only: [:index, :show, :new, :edit, :create, :update]
end
