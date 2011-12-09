Towerclash::Application.routes.draw do


  resources :escapetunnels

  resources :ambushes

  resources :traps

  resources :stores

  resources :barracks

  resources :doctors

  resources :factories

  resources :labs

  resources :airs

  resources :earths

  resources :ices

  resources :fires

  resources :towers

  devise_for :users, :controllers => { :registrations => "registrations" } do
  get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  resources :users, :only => [:index, :show]
  root :to => 'pages#home'
  
  
   match "coordinates/map" => 'coordinates#map', :controller => 'coordinates' 
  match "coordinates/up_to_top" => 'coordinates#up_to_top', :controller => 'coordinates', :action => 'up_to_top'
  match "coordinates/up_to_bottom" => 'coordinates#up_to_bottom', :controller => 'coordinates', :action => 'up_to_bottom'
  match "coordinates/up_to_right" => 'coordinates#up_to_right', :controller => 'coordinates', :action => 'up_to_right'
  match "coordinates/up_to_left" => 'coordinates#up_to_left', :controller => 'coordinates', :action => 'up_to_left'

 
end
