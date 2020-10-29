class CartTeaSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :item_total
  has_one :cart
  has_one :tea
end
