Rails.application.routes.draw do
  get 'reservations/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :unicorns, only: [:index, :new, :create, :show] do
    resources :reservations, only: %i[create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
