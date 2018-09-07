class GoalsController < ApplicationController
  def goaldecision
  end
  def pagedecision
    @goal = Goal.find_by() #current要る
    #if文 trueで目標一覧、falseで目標決定画面
  end
  def goalcreate
    goal = Goal.new(content: params[:content], number: params[:number])
    if goal.save
      redirect_to('/goals/goalconfirm')
    else
      render('goals/goaldecision')
    end
  end
end

