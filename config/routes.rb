Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :ducks, only: %i[index new create destroy show] do
    resources :bookings, only: %i[new create edit update destroy]
  end
end
