Websnacks::Application.routes.draw do
	root to: "trails#index"

	resource :session, only: [:new, :create, :destroy]

  resources :users

  resources :trails 

  resources :snacks

  match '/login', to: "sessions#new"
	match '/logout', to: "sessions#destroy" 
end
