class ItemsController < ApplicationController
    def index 
        binding.pry
        items = Item.all
        render json: {
            items: items
        }
    end
end