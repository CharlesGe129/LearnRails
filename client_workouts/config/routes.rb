Rails.application.routes.draw do
  resources :client_workouts
  post 'client_workouts/find', to: 'client_workouts#find'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
