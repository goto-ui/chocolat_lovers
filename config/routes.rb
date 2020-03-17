Rails.application.routes.draw do
  
  root 'home#index'
  get  '/mariage', to: 'home#mariage'
  get  '/about_chocolat', to: 'home#about_chocolat'
  get '/signup', to: 'users#new'
  
end
