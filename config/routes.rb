Rails.application.routes.draw do
  resources :posts
  get 'latest', to: 'posts#latest'
  get 'members/show'
  devise_for :users,
  	  controllers: {
  	    sessions: 'users/sessions',
  	    registrations: 'users/registrations'
  	  }
  	get '/member-data', to: 'members#show'
  	resource :members
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
