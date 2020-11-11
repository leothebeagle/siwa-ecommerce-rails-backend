class ApplicationController < ActionController::API
    include ActionController::Cookies
    
    @test_variable = "I am an instance variable. can you access me?"

    def current_user 
        current_user ||= User.find(session[:user_id]) if session[:user_id]
    end 

    def current_cart
        current_cart ||= Cart.find(session[:cart_id]) if session[:cart_id]
    end

end
