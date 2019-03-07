class FacilityController < ApplicationController
  def index
    @facilities = Facility.all
    @url = Facility.group(:url).pluck(:url).sort
  end
  
  def show
     @facility = Facility.find_by(id: params[:id])
  end
  
  
  def search
      @facilities = Facility.where('url LIKE ?', "%#{params[:url]}%")
      @url = Facility.group(:url).pluck(:url).sort
      render "facility/index"
  end
  
  def create_form
    @facility = Facility.new
  end
  
  def create
    @facility = Facility.new(
      name: params[:name],
      url: params[:url],
      description: params[:description]
    )
    if @facility.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/facility/index")
    else
      render("facility/create_form")
    end
  end
  
  
end
