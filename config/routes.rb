Rails.application.routes.draw do
  devise_for :users
  get '/dashboard' => "pages#dashboard", :as => :user_root
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  resources :tracks, except: %i[show] do
    resources :steps, only: %i[create destroy]
  end
  # resources :steps, only: %i[create]
end
