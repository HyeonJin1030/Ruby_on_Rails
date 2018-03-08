Rails.application.routes.draw do
  devise_for :users,
  path: 'apple',
  path_names: {sign_in: 'log_in', sign_out: 'log_out'}
  root "posts#index"
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
