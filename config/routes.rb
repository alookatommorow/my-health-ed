Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :perspectives, only: [:index, :show] do
  	resources :comments, only: :index
  end
  root 'perspectives#index'
end
