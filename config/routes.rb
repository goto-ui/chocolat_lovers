Rails.application.routes.draw do
  
  get 'users/new'

  root 'home#index'
  get  '/mariage', to: 'home#mariage'
  get  '/about_chocolat', to: 'home#about_chocolat'
  get '/signup', to: 'users#new'
  
end
