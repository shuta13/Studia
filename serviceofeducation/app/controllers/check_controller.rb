class CheckController < ApplicationController
  def checklist
  end
  def checkinfo

  end
  ###
  def progresscontent
    goal = Goal.find_by(user_id: @current_user.id)
    @pageNumber = goal.number
    record = Record.find_by(user_id: @current_user.id)
    @pageNumStudy = record.studypage
  end

  def checkauthentication
    @user = User.find_by(id: session[:user_id])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to("/check/checkprogress")
    else
      render("check/checkpass")
    end
  end
end
