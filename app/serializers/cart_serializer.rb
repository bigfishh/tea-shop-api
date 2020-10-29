class CartSerializer < ActiveModel::Serializer
  attributes :id, :total, :checked_out
  has_one :user
end
