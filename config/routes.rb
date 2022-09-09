Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "articles#index" #set this as root so that by default the rails application starts with /articles(even without mentioning localhost:3000/articles n simply runnning localhost:3000)
  #get "/articles", to: "articles#index" #Router after receiving the request (here GET), declares that the GET /articles requests should be mapped to the index action of ArticlesController.
  #get "/articles/:id", to: "articles#show"
  resources :articles do
    resources :comments
  end
end



 
