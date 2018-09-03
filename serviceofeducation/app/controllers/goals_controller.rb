class GoalsController < ApplicationController
  def goaldecision
  end
  def pagedecision
  end
  def goalcreate
    @goal = Goal.new(content: params[:content], number: params[:number])
    @goal.save
    redirect_to('/goals/goalconfirm')
  end
end
