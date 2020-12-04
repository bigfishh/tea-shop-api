class User < ApplicationRecord
    has_secure_password
    after_create :set_current_cart

    has_many :carts, dependent: :destroy

    def current_cart 
        current_cart = self.carts.find_or_create_by(checked_out: false)
        CartSerializer.new(current_cart)
    end

    def past_orders
        all_past_orders = self.carts.where(checked_out: true)
        all_past_orders.map do |order|
            CartSerializer.new(order)
        end
    end

    private

    def set_current_cart
        self.carts.create
    end

end
