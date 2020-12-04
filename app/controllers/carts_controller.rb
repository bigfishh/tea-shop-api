class CartsController < ApplicationController
    before_action :authorized 

    def update 
        current_cart = user.orders.find(params[:id])
        current_cart.update(checked_out: true)
        new_cart = user.orders.create(checked_out: false)
        render: json: {
            current_cart: CartSerializer.new(new_cart)
            updated_cart: CartSerializer.new(current_cart)
        }
    end

end
