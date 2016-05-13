Rails.application.routes.draw do

  resources :cars, only: [:index]
  root 'cars#welcome'

end
