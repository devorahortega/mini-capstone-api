class ProductSerializer < ActiveModel::Serializer
  current_user
  attributes :id, :name, :price, :description, :is_discounted?, :tax, :total, :supplier, :images
end
