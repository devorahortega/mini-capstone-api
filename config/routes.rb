Rails.application.routes.draw do
  get "/all_products" => "products#all_products"
  get "/one_product" => "products#one_product"
  get "/search_products/:wildcard" => "products#search_procucts"
end
