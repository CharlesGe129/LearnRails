Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/ads', to: 'ads#index'
  get '/ads/new', to: 'ads#new'
  get '/ads/:id', to: 'ads#show'
  post '/ads/create', to: 'ads#create'
end
