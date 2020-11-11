class CartsController < ApplicationController

    def add_item_to_cart
        item = Item.find(params["item"]["id"]) if params["item"]["id"]
        if cookies[:cart_id]
            if check_cart_cookie
                current_cart.items << item 
                current_cart.save
            end
        else 
            cart = Cart.create 
            session[:cart_id] = cart.id
            cookies[:cart_id] = cart.id
            current_cart.items << item 
            current_cart.save
        end 
        binding.pry
        render json: {
            cart: {
                id: current_cart.id,
                items: current_cart.items
            }
        }  
    end
end