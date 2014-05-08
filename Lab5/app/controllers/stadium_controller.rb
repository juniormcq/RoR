class StadiumController < ApplicationController
  def index
	@st = Stadium.all
    respond_to do |format|
      format.json { render json: @st}
    end
  end

  def show
	@ShowS = Stadium.find(params[:id])
    respond_to do |format|
      format.json { render json: @ShowS}
    end
  end

  def create
	@NewS = Stadium.new
    @NewS.save
    respond_to do |format|
        format.json { render json: @NewS}
    end
  end

  def update
	@UpS = Team.find(params[:id]) 
	if @UpS.update_attributes(params[:name_stadium]) 
		flash[:notice] = "Updated" 
	end 
	respond_to do |format| 
		format.json { render json: @UpS} 
	end
  end

  def delete
    @DelS = Stadium.find(params[:id])
    @DelS.destroy

    respond_to do |format|
		format.json { head :no_content}
    end
  end
end
