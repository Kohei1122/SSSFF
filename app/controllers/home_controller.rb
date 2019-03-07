class HomeController < ApplicationController
  def top
    @current_user=User.find_by(id: session[:user_id])
  end
  
  def housing
  end
  
  def finance
  end
  
  def medical
  end
  
  
  
end
