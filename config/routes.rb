Rails.application.routes.draw do
  
  root 'home#index'
  get  'home/mariage'
  get  'home/about_chocolat'

end
