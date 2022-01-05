class ProductSerializer < ActiveModel::Serializer
  current_user
  attributes :id, :name, :price, :description, :is_discounted?, :tax, :total, :supplier, :images, :categories

  belongs_to :supplier
  has_many :categories
end
