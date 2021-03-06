Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :outfits do
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [:index, :edit, :destroy]

end
