class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price
end
