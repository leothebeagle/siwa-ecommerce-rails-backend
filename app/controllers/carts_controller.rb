class CartsController < ApplicationController
    def add_item_to_cart
        binding.pry
        cart = Cart.find(params["cart_id"]) if params["cart_id"]
        item = Item.find(params["item"]["id"]) if params["item"]["id"]

        if cart 
            current_cart.items << item if current_cart == cart
            current_cart.save
        else 
            cart = Cart.create
            current_cart = cart 
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