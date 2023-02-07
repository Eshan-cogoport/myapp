Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    root "pages#home"
    get "/about", to:"pages#about"
    get "/contacts/:id", to:"contacts#index"
    post "/contacts", to:"contacts#create"

    get "/articles", to:"articles#read"
    get "/articles/:id", to:"articles#index"
    post "/articles", to:"articles#create"
    put "/articles/:id", to:"articles#update"
    delete "/articles/delete/:id", to:"articles#delete"

    get "/users", to:"users#index"
    post "/users", to:"users#create"
    put "/users/:id", to:"users#update"
    delete "/users/:id", to:"users#delete"

    get "/tasks", to:"task#read"
    get "/tasks/:id", to:"task#index"
    post "/tasks", to:"task#create"
    delete "/tasks/delete/:id", to:"task#delete"
    post "/tasks/check", to:"task#check"
    put "/tasks/change", to:"task#update_password"
  # Defines the root path route ("/")
  # root "articles#index"
end
