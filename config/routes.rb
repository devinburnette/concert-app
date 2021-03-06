Rails.application.routes.draw do
  root 'users#new'

  get 'logout', to: 'sessions#delete'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'auth/spotify/callback', to: 'sessions#create'
end
