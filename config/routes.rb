Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies, only: [:index, :new, :create, :destroy] 

 # GET / => Render an HTML page displaying the JS frontend app;
#POST /api/1/movies => Add a movie (as a JSON object) to the DB and return its id;
#DELETE /api/1/movies/:id
end
