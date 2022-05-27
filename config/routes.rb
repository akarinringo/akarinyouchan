Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  resources :kintres
  post 'trainings' => 'kintres#create'
  get 'trainings/:id' => 'kintres#show',as: 'training'
  root 'kintres#index'
end
