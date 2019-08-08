Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/services" => "services#index"
    # get "/services/new" => "services#new"
    # post "/services" => "services#create"
    get "/services/:id" => "services#show"
    # get "/services/:id/edit" => "services#edit"
    # patch "/services/:id" => "services#update"
    # delete "/services/:id" => "services#destroy"

    get "/professionals" => "professionals#index"
    post "/professionals" => "professionals#create"

    get "/professionals/:id" => "professionals#show" # returns all the details about this professional, as well as all the appointments under this professional (matches to our first screenshot)

    post "/appointments" => "appointments#create" # create an open appointment under a given professional, matches to my second screenshot

    # get "/professionals/:id/appointments/:id" => "appointments#show" #matches to my third screenshot

    # post "/professionals/:id/appointments/:id" => "appointments#confirm"

    delete "/appointments/:id" => "appointments#destroy"
  end
end
