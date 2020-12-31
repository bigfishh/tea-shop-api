class Cart < ApplicationRecord
  after_initialize :init
  belongs_to :user
  has_many :cart_teas, dependent: :destroy
  has_many :teas, through: :cart_teas  

  def cart_total 
    total = 0 
    self.cart_teas.each do |cart_tea|
      total = total + cart_tea.item_total
    end
    total
  end

  def init
    self.total = 0 if total.nil?
    self.checked_out = false if checked_out.nil?
  end

end
