class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:new, :create]

  def home
  end

  def new
  end

  def create
    @user = User.new(user_create_params)
    store_location

    if @user.save!
      sign_in @user
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def user_create_params
      params.require(:user).permit(:email, :name, :password)
    end
end
