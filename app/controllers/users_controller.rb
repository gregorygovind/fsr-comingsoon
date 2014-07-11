class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:new, :create]

  def home
  end

  def new
  end

  def create
    @user = User.new(user_create_params)
    store_location

    if @user.save
      sign_in @user

      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render js: "window.location.pathname = #{root_path.to_json}" }
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js { render :new }
      end
    end
  end

  private
    def user_create_params
      params.require(:user).permit(:email, :password)
    end
end
