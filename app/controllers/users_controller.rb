class UsersController < ApplicationController
  layout "two_column"

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    if @user
      puts "User successfully created"
      redirect_to '/'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to '/'
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :favorite_language)
    end

end
