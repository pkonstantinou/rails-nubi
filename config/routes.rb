Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :tracks do
    resources :steps, only: %i[destroy]
  end
end
