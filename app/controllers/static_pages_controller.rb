class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user
  
  def coming
  end

  def landing
  end
  
  def style 
  end

end
