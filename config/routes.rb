Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  namespace :admin do
    resources :animals
  end

  resources :animals, only: [:index, :new, :create]

  resources :users, only: [] do
    resources :animals, only: [:index]
  end

  resources :animals, except: [:index, :new, :create] do
    resources :bookings, only: [:new, :create]
  end


  resources :bookings, except:[:new, :create] do
    resources :reviews, only: [:create]
  end

  post '/confirm_booking', to: 'bookings#confirm'
end
