class RecordsController < ApplicationController
  def recordimage
  end
  def recordpage
  end
  def recordcreate
    records = Record.find_by(user_id: @current_user.id)
    if records.studypage
      records.studypage = params[:pageNumber]
      records.save
    else
      @record = Record.new(
      studypage: params[:pageNumber],
      user_id: @current_user.id
      )
    end

    if @record.save
      redirect_to('/records/recordwell')
    end
  end
end
