Rails.application.routes.draw do
  root 'boards#new'

  post '/boards/:id', to: 'boards#update'
end
