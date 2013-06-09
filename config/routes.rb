Websnacks::Application.routes.draw do
  resources :users

  resources :trails 

  resources :snacks

  match "snacks/new[:query]" => "snacks#new"
end
