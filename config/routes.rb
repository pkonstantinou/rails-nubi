Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :tracks, except: %i[show] do
    resources :steps, only: %i[create destroy]
  end
  # resources :steps, only: %i[create]
end
