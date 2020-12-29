class CartTeaSerializer < ActiveModel::Serializer
  attributes :id, :tea_name, :quantity, :item_total, :tea_id
end
