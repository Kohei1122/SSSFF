class UserController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by(id: params[:id])
  end
  
  def login_form
    @user = User.new
  end
  
  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    @email = params[:email]
    @password = params[:password]
    if @user
      session[:user_id] = @user.id
      # flash[:notice] = "ログインに成功しました"
      redirect_to("/")
    else
      # flash[:notice] = "ログインに失敗しました"
      render "user/login_form"
    end
  end
  
  def logoff
    session[:user_id] = nil
    redirect_to("/")
  end
  
  def create_form
    @user = User.new
  end
  
  def create
     @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/")
    else
      render("user/create_form")
    end
  end
  
end
