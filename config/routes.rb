NkuProject::Application.routes.draw do
  
  resources :groups
  resources :users
  resources :sessions

  match '/users', to: 'users#show', via: 'get'
  get '/new', to: 'users#create', via: 'POST'
  match '/signout', to: 'sessions#destroy',   via: 'delete'
  get 'exit', to: 'sessions#destroy', as: :logout
  get 'join/:id', to: 'groups#join', as: 'join'
  
  root to: 'welcome#index'  
  
end



