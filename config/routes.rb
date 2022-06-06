Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/spiders" => "spiders#index"
  post "/spiders" => "spiders#create"

  get "/spiders/:id" => "spiders#show"

  patch "/spiders/:id" => "spiders#update"

  delete "/spiders/:id" => "spiders#destroy"


  post "/users" => "users#create"

end
