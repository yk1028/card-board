Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'post#index'

  post '/create' => 'post#create'

  get '/new' => 'post#new'
  get '/show/:id' => 'post#show'
  get '/delete/:id' => 'post#delete'
end
