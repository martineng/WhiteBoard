Rails.application.routes.draw do
  resources :subjects
  resources :courses
  resources :dashboard

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
end
