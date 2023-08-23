Rails.application.routes.draw do
  get 'reservations/create'
  devise_for :users

  root to: "pages#home"
  resources :unicorns, only: %i[index new create show] do
    resources :reservations, only: %i[create]
  end

  resources :reservations, only: %i[index] do
    member do
      patch "/accept", to: "reservations#accept"
      patch "/decline", to: "reservations#decline"
    end
  end

  get "/my-reservations", to: "reservations#user_reservations"
end
