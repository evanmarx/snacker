Websnacks::Application.routes.draw do
	root to: "snacks#index"

  resources :users

  resources :trails 

  resources :snacks

  # match "snacks/new[:query]" => "snacks#new"
end
