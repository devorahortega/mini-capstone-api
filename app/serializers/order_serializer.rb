class OrderSerializer < ActiveModel::Serializer
  attributes :id, :current_user, :price, :tax, :total
end
