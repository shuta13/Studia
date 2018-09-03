class RecordsController < ApplicationController
  def recordimage
  end
  def recordpage
    @record = Record.new(studypage: params[:pageNumber])
    @record.save
    #redirect_to('records/')
  end
end
