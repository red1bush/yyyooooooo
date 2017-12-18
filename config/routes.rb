Rails.application.routes.draw do
  devise_for :users, :path=>'',
  					 :controllers=>{ :omniauth_callbacks=>'omniauth_callbacks'}
 



 root'pages#home'

 resources :users, only: [:show]
 resources :annonces 
 resources :photos
 resources :omniauth_callbacks
 

 
end
