Rails.application.routes.draw do
  devise_for :users
  root to: "unicorns#index"

  resources :unicorns, only: %i[new create show]

  # resources :reservations, only: %i[index] do
  #   # patch "/approved", to: "reservations#approve_reservation"
  #   # patch "/declined", to: "reservations#decline_reservation"
  # end

  # get "/my-reservations", to: "reservations#my_reservations"
end
