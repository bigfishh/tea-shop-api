class CartTeaSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :item_total
end
