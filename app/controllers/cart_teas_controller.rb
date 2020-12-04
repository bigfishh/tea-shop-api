class CartTeasController < ApplicationController
    
    def create
        addCartTea = CartTea.create(cart_tea_params)
        render json: addCartTea
    end

    def destroy 
        user = logged_in_user
        found_tea = CartTea.find(params[:id])
        found_tea.delete

        render json: {cart: user.cart, removed_cart_tea_id: found_tea.id}
    end

    private 

    def cart_tea_params
        params.permit(:quantity, :item_total, :cart_id, :tea_id)
    end

end
