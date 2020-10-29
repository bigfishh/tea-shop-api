class TeaSerializer < ActiveModel::Serializer
  attributes :id, :name, :image1, :image2, :description, :price
  has_one :tea_variety
end
