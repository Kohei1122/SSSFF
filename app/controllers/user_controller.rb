class UserController < ApplicationController
  def login_form
    @user = User.new
  end
  
  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    @email = params[:email]
    @password = params[:password]
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインに成功しました"
      redirect_to("/")
    else
      flash[:notice] = "ログインに失敗しました"
      render "user/login_form"
    end
  end
  
  def logoff
    session[:user_id] = nil
    redirect_to("/")
  end
  
end
