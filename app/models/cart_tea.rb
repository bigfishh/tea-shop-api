class CartTea < ApplicationRecord
  belongs_to :cart
  belongs_to :tea
end
