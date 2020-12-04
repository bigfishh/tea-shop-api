class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_teas, dependent: :destroy
  has_many :teas, through: :cart_teas
  

  def cart_total 
    total = 0 
    self.cart_teas.each do |cart_tea|
      total = total + (cart_tea.item_total * cart_tea.quantity)
    end
    total
  end

end
