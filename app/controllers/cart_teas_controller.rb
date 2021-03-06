class CartTeasController < ApplicationController
    
    def create
        user = logged_in_user
        found_cart = Cart.find(params[:cart_id])
        if found_cart.cart_teas.pluck(:tea_id).include?(params[:tea_id])
            found_cart_tea = found_cart.cart_teas.find_by(tea_id: params[:tea_id])
            if params[:quantity] <= 0 
                found_cart_tea_id = found_cart_tea.id
                found_cart_tea.destroy
                render json: {cart: user.current_cart, deleted_item_id: found_cart_tea_id}
            else
                found_cart_tea.update(quantity: params[:quantity])
                render json: found_cart_tea
            end
        else 
            new_cart_tea = CartTea.create(cart_tea_params)
            render json: new_cart_tea
        end
    end

    def destroy 
        found_tea = CartTea.find(params[:id])
        found_tea.delete

        render json: {cart: user.current_cart}
    end

    private 

    def cart_tea_params
        params.permit(:quantity, :item_total, :cart_id, :tea_id)
    end

end
