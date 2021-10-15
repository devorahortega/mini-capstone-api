Rails.application.routes.draw do
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  put "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
end
