Rails.application.routes.draw do
  devise_for :users, :path=>''
 root'pages#home'

 resources :users, only: [:show]
 resources :annonces 
 resources :photos
 

 
end
