class ApplicationController < ActionController::API
    include ActionController::Cookies
    
    def current_user 
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end 

    def current_cart
        @current_cart ||= current_user.cart
    end

end
