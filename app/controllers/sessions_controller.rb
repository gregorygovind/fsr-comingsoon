class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: [:new, :create]

  def new
  end

  def create
    url = session[:return_to] || root_path

    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      session[:return_to] = nil
      respond_to do |format|
        format.html { redirect_to url }
        format.js { render js: "window.location.href = '#{url}'" }
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js { render :new }
      end
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end
