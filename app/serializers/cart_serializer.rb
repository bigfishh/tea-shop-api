class CartSerializer < ActiveModel::Serializer
  attributes :id, :cart_total, :checked_out
  has_many :cart_teas
end
