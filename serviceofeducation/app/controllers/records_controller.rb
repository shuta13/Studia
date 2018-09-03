class RecordsController < ApplicationController
  def recordimage
  end
  def recordpage
  end
  def recordcreate
    @record = Record.new(studypage: params[:pageNumber])
    @record.save
    redirect_to('/records/recordwell')
  end
end
