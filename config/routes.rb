Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get 'cities' => 'cities#index'
    get 'cities/:id' => 'cities#show'
    post 'cities' => 'cities#create'
    patch 'cities/:id' => 'cities#update'
    delete 'cities/:id' => 'cities#destroy'
  end

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
end
