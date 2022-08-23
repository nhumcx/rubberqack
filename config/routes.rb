Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :ducks, only: %i[index show new create destroy] do
    resources :bookings, only: %i[new create edit update destroy]
  end
end
