Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :ducks, only: %i[index show new create] do
    resources :bookings, only: %i[new create edit update]
  end
  resources :ducks, only: :destroy
  resources :bookings, only: :destroy
end
