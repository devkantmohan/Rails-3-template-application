Zapi::Application.routes.draw do

  resources  :items

  match '/auth/:provider/callback', :to => 'authentications#create'
  devise_for :users, :controllers => { :registrations => 'registrations' }
  resources :authentications 
  root :to => 'items#index'


end
