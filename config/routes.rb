Rails.application.routes.draw do
  namespace :api do
    get 'speakers/index'
    get 'speakers/show'
    get 'speakers/create'
    get 'speakers/update'
    get 'speakers/destroy'
  end
  namespace :api do
    get '/speakers' => 'speakers#index'
    post '/speakers' => 'speakers#create'
    get '/speakers/:id' => 'speakers#show'
    patch '/speakers/:id' => 'speakers#update'
    delete '/speakers/:id' => 'speakers#destroy'

    get '/meetings' => 'meetings#index'
    post '/meetings' => 'meetings#create'
    get '/meetings/:id' => 'meetings#show'
    patch '/meetings/:id' => 'meetings#update'
    delete '/meetings/:id' => 'meetings#destroy'
  end
end