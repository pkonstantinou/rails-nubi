Rails.application.routes.draw do
  devise_for :users
  get '/dashboard/my-tracks' => "dashboard#my_tracks", :as => :user_root
  root to: 'pages#home'
  get '/dashboard/my-tracks', to: 'dashboard#my_tracks'
  get '/dashboard/track-library', to: 'dashboard#track_library'
  get '/dashboard/team', to: 'dashboard#team'
  get '/dashboard/profile', to: 'dashboard#profile'
  get '/dashboard/settings', to: 'dashboard#settings'

  resources :tracks, except: %i[index show] do
    resources :steps, only: %i[create destroy]
    resources :assignments, only: %i[create]
  end

  resources :assignments, only: %i[show destroy] do
    resources :step_scores, only: %i[update]
  end
end
