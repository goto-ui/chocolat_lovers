Rails.application.routes.draw do
  
  get 'sessions/new'

  root 'home#index'
  get  '/mariage', to: 'home#mariage'
  get  '/about_chocolat', to: 'home#about_chocolat'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/article_submission', to: 'microposts#new'
  resources :microposts,only: [:create, :destroy]
  resources :users
end
