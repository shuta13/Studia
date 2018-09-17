class CheckController < ApplicationController
  before_action :access_key_num
  def checklist
  end
  def checkinfo

  end
  ###
  def progresscontent
    goal = Goal.find_by(user_id: @current_user.id)
    @pageNumber = goal.number
    record = Record.find_by(user_id: @current_user.id)
    if record
      @pageNumStudy = record.studypage
    else
      @pageNil = "0"
    end
  end

  def checkpass
    if @accessKey >= 7
      redirect_to('/check/errorsheet')
    end
  end

  def checkauthentication
    @user = User.find_by(id: @current_user.id)
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to("/check/checkprogress")
    else
      redirect_to("/check/checkpass")
    end
  end

  def displaycontent
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @records = Record.find_by(user_id: @current_user.id, updated_at: range)
  end
  #アクセス制限#
  def judger
    random = Random.rand(0 .. 5)
    if @accessKey < 7 && @accessKey >= 0
      case random
      when 0 then
        redirect_to('/check/stampsheet0') #stamp0
      when 1 then
        redirect_to('/check/stampsheet1') #1
      when 2 then
        redirect_to('/check/stampsheet2') #2
      when 3 then
        redirect_to('/check/stampsheet3') #3
      when 4 then
        redirect_to('/check/stampsheet4') #4
      when 5 then
        redirect_to('/check/stampsheet5') #5
      end
    elsif @accessKey == 7
      redirect_to('/check/stampsheet6')
    elsif @accessKey > 7 || @accessKey < 0
      redirect_to('/check/errorsheet')
    end
  end
  ###
  def gohome
    flash[:notice] = "よくできました！"
    render('home/top')
  end
end
