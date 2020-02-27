Rails.application.routes.draw do
  resources :goals
  resources :objectives
  # get '/users/:id/objectives/:id/goals', to: 'objectives#objective_goals'
  resources :users
  # get '/users/:id/objectives', to: 'users#user_objectives' 
  namespace :api do
    namespace :v1 do
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
