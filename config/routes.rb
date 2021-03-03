Rails.application.routes.draw do
  devise_for :users
  get '/dashboard' => "pages#dashboard", :as => :user_dashboard
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tracks, only: %i[index show create destroy] # , :show, :create
end
