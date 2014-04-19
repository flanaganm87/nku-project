NkuProject::Application.routes.draw do
  
  resources :groups
  resources :users
  resources :sessions
  resources :messages

  match '/users', to: 'users#show', via: 'get'
  get '/new', to: 'users#create', via: 'POST'
  match '/signout', to: 'sessions#destroy',   via: 'delete'
  get 'exit', to: 'sessions#destroy', as: :logout
  get 'join/:id', to: 'groups#join', as: 'join'
  post "comments", to: "groups#comment"

  root to: 'welcome#index'  
  
end



