Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

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
end
