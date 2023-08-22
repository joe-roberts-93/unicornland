Rails.application.routes.draw do
  get 'reservations/create'
  devise_for :users

  root to: "pages#home"
  resources :unicorns, only: %i[index new create show] do
    resources :reservations, only: %i[create]
  end
end
