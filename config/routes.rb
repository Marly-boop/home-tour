Rails.application.routes.draw do
  get 'pages/history'
  get 'houses/shct', to: 'houses#search_category'
  get 'pages/history', to: 'pages#history'
  get 'pages/demo', to: 'pages#demo'
  root to:"houses#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :houses, only: [:index, :show]
end
