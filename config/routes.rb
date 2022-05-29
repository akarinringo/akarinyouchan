Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  resources :kintres
  post 'trainings' => 'kintres#create'
  get 'trainings/:id' => 'kintres#show',as: 'training'
  patch 'trainings/:id' => 'kintres#update'
  get 'trainigs/:id/edit' => 'kintres#edit', as:'edit_tweet'
  root 'kintres#index'
end
