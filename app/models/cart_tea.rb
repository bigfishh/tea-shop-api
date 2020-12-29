class CartTea < ApplicationRecord
  after_initialize :init

  belongs_to :cart
  belongs_to :tea

  def init
    self.quantity = 1 if quantity.nil?
    self.item_total = self.tea.price * self.quantity
  end

  def tea_name
    self.tea.name
  end

  def tea_id
    self.tea.id
  end

end
