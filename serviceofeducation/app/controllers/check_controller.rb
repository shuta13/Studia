class CheckController < ApplicationController
  def checklist
  end
  def progresscontent
    goal = Goal.find_by(id: 1)  #本来idはログインユーザー
    @pageNumber = goal.number
    record = Record.find_by(id: 1)  #本来idはログインユーザー
    @pageNumStudy = record.studypage
  end
end
