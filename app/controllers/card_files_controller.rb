class CardFilesController < ApplicationController
  def index
  end

  def show
    if user_signed_in?
      user_id=current_user.id
      @card_files=current_user.card_files
      if @card_files.present?
        card_name = params[:card_name]
          if !card_name.present?
            card_name=@card_files[0].name
          end
        id=Cardfile.find_by_sql(['select id from userfiles where user_id=:userid and filename=:filename',{userid: userId,filename: fileName}])
        gon.cards=Word.find_by_sql(['select id,English,Japanese,Weak from words where fileid=:id',{id: id}])
        render json: { :homearr => gon.cards } and return if request.xhr?
      end
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
