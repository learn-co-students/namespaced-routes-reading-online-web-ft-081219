Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

  #You can use the scope method by itself to set the URL path for a set of resources
  #If you you are using a scope AND a module then it is better to use the namespace
  
  # Example:
  # scope '/admin', module: 'admin' do
  
  namespace :admin do
    resources :stats, only: [:index]
  end

  root 'posts#index'
end
