class Cart < ApplicationRecord
  has_many :cart_teas, dependent: :destroy
  has_many :teas, through: :cart_teas
  belongs_to :user
end
