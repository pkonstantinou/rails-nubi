Rails.application.routes.draw do
  devise_for :users
  # get '/dashboard' => "pages#dashboard", :as => :user_root
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/dashboard/my-tracks', to: 'dashboard#my_tracks'
  get '/dashboard/track-library', to: 'dashboard#track_library'
  get '/dashboard/team', to: 'dashboard#team'
  get '/dashboard/profile', to: 'dashboard#profile'
  get '/dashboard/settings', to: 'dashboard#settings'

  resources :tracks, except: %i[show] do
    resources :steps, only: %i[create destroy]
  end
  # resources :steps, only: %i[create]
end
