class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: [:create]

  def new
  end

  def create
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end
