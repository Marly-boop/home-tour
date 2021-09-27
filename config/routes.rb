Rails.application.routes.draw do
  get 'houses/shct', to: 'houses#search_category'
  root to:"houses#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :houses, only: [:index, :show]
end
