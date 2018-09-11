class ApplicationController < ActionController::Base
  before_action :set_current_user
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  ###
  def authenticate_user
    if @current_user == nil
      redirect_to('/menu')
    end
  end
  ###
  def forbid_login_user
    if @current_user
      redirect_to('/top')
    end
  end
  ###
  def access_key_num
    goal = Goal.find_by(id: @current_user.id)
    if goal
      @accessKey = Date.today - Date.parse(goal.updated_at.to_s)
          +100
    end
  end
end
