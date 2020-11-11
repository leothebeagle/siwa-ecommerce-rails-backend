class ApplicationController < ActionController::API
    include ActionController::Cookies
    
    @test_variable = "I am an instance variable. can you access me?"

    def current_user 
        current_user ||= User.find(session[:user_id]) if session[:user_id]
    end 

    def current_cart
        current_cart ||= Cart.find(session[:cart_id]) if session[:cart_id]
    end

    def check_session_cookie
        cookie_session_id = cookies.encrypted[:_session_id]["session_id"]
        cookie_user_id = cookies.encrypted[:_session_id]["user_id"]

        true if cookie_session_id == session.id && cookie_user_id == current_user.id   
    end

    def check_cart_cookie
        cookie_cart_id = cookies["cart_id"]
        binding.pry
        true if cookie_cart_id == session[:cart_id].to_s
    end

end
