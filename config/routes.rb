Rails.application.routes.draw do
  devise_for :users, :path=>''
 root'pages#home'
end
