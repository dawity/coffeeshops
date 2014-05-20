Ganjamap::Application.routes.draw do
  resources :ganjalocs
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  

  root 'home#index', as: 'home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
end
