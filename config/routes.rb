NkuProject::Application.routes.draw do
  
  resources :users
  

  match '/users', to: 'users#show', via: 'get'
  get '/new', to: 'users#create', via: 'POST'
  root to: 'welcome#index'  
  
end
