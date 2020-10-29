class Tea < ApplicationRecord
  has_many :cart_teas, dependent: :destroy
  has_many :carts, through: :cart_teas
  
  belongs_to :tea_variety
end
