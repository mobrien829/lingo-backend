Rails.application.routes.draw do
  resources :languages
  resources :scores
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy]
      resources :scores, only: [:index, :create, :update, :destroy]
      resources :languages, only: [:index, :create]
    end
  end
end
