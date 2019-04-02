class RecordsController < ApplicationController
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
      user_id: @current_user.id,
      )
      if @record.save
        redirect_to('/records/recordwell')
      else
        render('records/recordpage')
      end
    end
  end
  ###

  def imageRec1
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
    if !(@user)
      @user = Record.new(
        user_id: @current_user.id,
        image1: "default.png"
      )

      if @user.save
        @user = Record.find_by(user_id: @current_user.id, updated_at: range)
        @user.image1 = "#{@user.user_id}1.jpg"
        image = params[:image]
        File.binwrite("public/image/#{@user.image1}", image.read)
        if @user.save
          redirect_to('/records/select1')
        end

      elsif
        redirect_to('/records/recordpage')
      end

    else

      if params[:image]
        @user.image1 = "#{@user.user_id}1.jpg"
        image = params[:image]
        File.binwrite("public/image/#{@user.image1}", image.read)

        if @user.save
          redirect_to('/records/select1')
        end
      end

    end
  end

  def imageRec2
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
    if params[:image]
      @user.image2 = "#{@user.user_id}2.jpg"
      image = params[:image]
      File.binwrite("public/image/#{@user.image2}", image.read)

      if @user.save
        redirect_to('/records/select2')
      end

    end
  end

  def imageRec3
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
    if params[:image]
      @user.image3 = "#{@user.user_id}3.jpg"
      image = params[:image]
      File.binwrite("public/image/#{@user.image3}", image.read)

      if @user.save
        redirect_to('/records/select3')
      end

    end
  end

  def imageRec4
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
    if params[:image]
      @user.image4 = "#{@user.user_id}4.jpg"
      image = params[:image]
      File.binwrite("public/image/#{@user.image4}", image.read)

      if @user.save
        redirect_to('/records/select4')
      end

    end
  end

  def imageRec5
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
    if params[:image]
      @user.image5 = "#{@user.user_id}5.jpg"
      image = params[:image]
      File.binwrite("public/image/#{@user.image5}", image.read)

      if @user.save
        redirect_to('/records/select5')
      end

    end
  end

  def imageRec6
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
    if params[:image]
      @user.image6 = "#{@user.user_id}6.jpg"
      image = params[:image]
      File.binwrite("public/image/#{@user.image6}", image.read)

      if @user.save
        redirect_to('/records/select6')
      end

    end
  end

  def imageRec7
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
    if params[:image]
      @user.image7 = "#{@user.user_id}7.jpg"
      image = params[:image]
      File.binwrite("public/image/#{@user.image7}", image.read)

      if @user.save
        redirect_to('/records/select7')
      end

    end
  end

  def imageRec8
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
    if params[:image]
      @user.image8 = "#{@user.user_id}8.jpg"
      image = params[:image]
      File.binwrite("public/image/#{@user.image8}", image.read)

      if @user.save
        redirect_to('/records/select8')
      end

    end
  end

  def imageRec9
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
    if params[:image]
      @user.image9 = "#{@user.user_id}9.jpg"
      image = params[:image]
      File.binwrite("public/image/#{@user.image9}", image.read)

      if @user.save
        redirect_to('/records/select4')
      end

    end
  end

  def imageRec10
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
    if params[:image]
      @user.image10 = "#{@user.user_id}10.jpg"
      image = params[:image]
      File.binwrite("public/image/#{@user.image10}", image.read)

      if @user.save
        redirect_to('/records/select10')
      end

    end
  end
  ###

  def select1
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
  end
  def select2
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
  end
  def select3
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
  end
  def select4
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
  end
  def select5
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
  end
  def select6
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
  end
  def select7
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
  end
  def select8
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
  end
  def select9
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
  end
  def select10
    range = Date.today.beginning_of_day..Date.today.end_of_day
    @user = Record.find_by(user_id: @current_user.id, updated_at: range)
  end

  ###
  def recordimage1
  end
  def recordimage2
  end
  def recordimage3
  end
  def recordimage4
  end
  def recordimage5
  end
  def recordimage6
  end
  def recordimage7
  end
  def recordimage8
  end
  def recordimage9
  end
  def recordimage10
  end
  ###
  def recordpage
  end
  ###
  def recordBack
    redirect_to('/top')
  end
end
