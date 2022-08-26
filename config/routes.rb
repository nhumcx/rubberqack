Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "my_ducks", to: "pages#my_ducks"

  post "confirm", to: "bookings#confirm_booking"
  post "reject", to: "bookings#reject_booking"

  resources :ducks, only: %i[index new create destroy show] do
    resources :bookings, only: %i[index new create edit update destroy]
  end

  resources :bookings, only: %i[index show]
end
