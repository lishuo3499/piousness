class UsersController < ApplicationController

def index
	# p User.find(1)['crypted_password']
end

def create
	 @user=User.new(params.require(:user).permit(:email,:password,:password_confirmation,:email_unm))
     @user.save
	 redirect_to '/users/index'
end

end
