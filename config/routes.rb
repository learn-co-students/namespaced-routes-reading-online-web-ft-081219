Rails.application.routes.draw do
  namespace 'admin' do
    resources :stats, only: [:index]
  end

  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

  

  root 'posts#index'
end
