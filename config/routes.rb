Rails.application.routes.draw do
  devise_for :users
  root to: 'outfits#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :outfits do
  resources :bookings, only: [:create :show :destroy]
  end
end
