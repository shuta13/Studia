class HomeController < ApplicationController
  before_action :authenticate_user, {only: [:top]}
  before_action :forbid_login_user, {only: [:new]}
  protect_from_forgery :except => [:authentication]
  def start
  end
  def menu

  end
  def login
  end

  def new
  end
  ###
  def create
    @user = User.new(
        name: params[:name],
        password: params[:password],
        )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = nil
      redirect_to('/top') #←本来ならログイン完了→testページに飛ばす
    else
      flash[:notice] = "そのIDは既に使用されています"
      render('new')
    end
  end
  ###
  def authentication
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to("/top")
    else
      @name = params[:name]
      @password = params[:password]
      render("login")
    end
  end
  def logout
    session[:user_id] = nil
    redirect_to('/')
  end

  def top
  end

  def decision
  end
end
