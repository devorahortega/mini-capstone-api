Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  #get "/search_products/:wildcard" => "products#search_procucts"
end
