class UsersController < ApplicationController

    def create 
        user = User.create(user_params)
        session[:user_id] = user.id
        # this logs the user in
        binding.pry 
        render json: user.to_json
    end


    private
 
    def user_params
      params.require(:user).permit(:first_name, :last_Name, :email, :password, :password_confirmation)
    end

end

# it'll be good practice here to use strong_params