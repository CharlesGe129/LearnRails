Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/ads', to: 'ads#index'
  get '/ads/new', to: 'ads#new'
  get '/ads/:id', to: 'ads#show'
  get '/ads/edit/:id', to: 'ads#edit'
  get '/ads/delete/:id', to: 'ads#destroy'
  post '/ads/update/:id', to: 'ads#update'
  post '/ads/create', to: 'ads#create'
end
