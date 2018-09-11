class RecordsController < ApplicationController
  def recordimage
  end
  def recordpage
  end
  def recordcreate
    records = Record.find_by(user_id: @current_user.id)
    if records
      dayRecord = Date.parse(records.updated_at.to_s)
      today = Date.today
      if records && dayRecord == today
        records.studypage = records.studypage + params[:pageNumber].to_i
        if records.save
          redirect_to('/records/recordwell')
        end
      elsif records && dayRecord != today
        records.studypage = params[:pageNumber]
        if records.save
          redirect_to('/records/recordwell')
        end
      end
    else
      @record = Record.new(
      studypage: params[:pageNumber],
      user_id: @current_user.id
      )
      if @record.save
        redirect_to('/recorxds/recordwell')
      else
        render('records/recordpage')
      end
    end
  end
end
