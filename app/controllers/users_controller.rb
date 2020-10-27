class UsersController < ApplicationController

    def create 
        user = User.create(user_params)
        session[:user_id] = user.id
        # this logs the user in.
        binding.pry 
        render json: user.to_json
        #do you actually need to send the entire user object? or will names and email suffice?
    end


    private
 
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end

# it'll be good practice here to use strong_params