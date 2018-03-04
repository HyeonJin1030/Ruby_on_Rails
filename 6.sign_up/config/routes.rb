Rails.application.routes.draw do
 
  resources :users

  root 'home#index'
  get 'home/index'    #get 'home/index' => 'home#index'
  
  
  get 'home/new'
  post 'home/create' => 'home#create', as: 'posts'
  
  
  get 'home/edit/:post_id' => 'home#edit'
  patch 'home/update/:post_id' => 'home#update', as: 'post'
  
  
  get 'home/destroy'
  get '/home/destroy/:post_id', to: 'home#destroy_id', as: 'post_destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end