Rails.application.routes.draw do
  get 'houses/index'
  #get 'houses/index'
  root to:"categories#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end