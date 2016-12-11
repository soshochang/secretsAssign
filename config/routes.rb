Rails.application.routes.draw do
  get 'secrets/index'
  get 'secrets/new'
  post '/secrets' => 'secrets#create'
	delete '/secrets/:id' => 'secrets#destroy'

  get '/users' => 'users#index'
	get '/users/new' => 'users#new'
	get '/users/:id' => 'users#show'  
	get '/users/:id/edit' => 'users#edit'
	post '/users' => 'users#create'
	patch '/users/:id' => 'users#update'
	delete '/users/:id' => 'users#destroy'

  get '/sessions/new'
  post '/sessions' => "sessions#create"
  delete '/sessions/:id' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
