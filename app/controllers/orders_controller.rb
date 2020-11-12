class OrdersController < ApplicationController
    def create 
        binding.pry
        render json: {
            test: "this is a test message from orders#create"
        }
    end
end