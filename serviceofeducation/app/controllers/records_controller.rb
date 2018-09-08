class RecordsController < ApplicationController
  def recordimage
  end
  def recordpage
  end
  def recordcreate
    @record = Record.new(
      studypage: params[:pageNumber],
      user_id: @current_user.id
      )
    if @record.save
      redirect_to('/records/recordwell')
    end
  end
end
