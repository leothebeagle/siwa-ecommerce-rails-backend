class CartsController < ApplicationController
    def add_item_to_cart
        binding.pry
        cart = Cart.find(params["cart_id"]) if params["cart_id"]
        item = Item.find(params["item"]["id"]) if params["item"]["id"]

        if cart 
            cart.items << item
            cart.save
        else 
            cart = Cart.create 
            cart.items << item 
            cart.save 
        end
        binding.pry
        render json: {
            cart: {
                id: cart.id,
                items: cart.items
            }
        }
        
    end
end