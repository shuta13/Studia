class GoalsController < ApplicationController
  def goaldecision
    goal = Goal.find_by(user_id: @current_user.id)
    if goal
      upDay = Date.parse(goal.updated_at.to_s)
      cleanDay = Date.today
      lagDay = cleanDay - upDay
      if lagDay >= 7
        goal.destroy()
        render('goals/goaldecision')
      elsif lagDay < 7 && lagDay >= 0
        redirect_to('/goals/goallist')
      end
    else
      render('goals/goaldecision')
    end
  end
  ###
  def goallist
    goal = Goal.find_by(user_id: @current_user.id)
    if goal.content && goal.number
      @content = goal.content
      @pageNum = goal.number
    end
  end
  ###
  def goalcreate
    goal = Goal.new(
      content: params[:content],
      number: params[:number],
      user_id: @current_user.id
    )
    if goal.save
      redirect_to('/goals/goalconfirm')
    else
      render('goals/goaldecision')
    end
  end
end

