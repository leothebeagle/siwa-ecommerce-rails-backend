class CartsController < ApplicationController
    def add_item_to_cart
        render json: {
            cart_id: "test",
            cart_items: "test"
        }
    end
end