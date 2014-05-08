class TeamController < ApplicationController
  def index
   @t = Team.all
    respond_to do |format|
      format.json { render json: @t}
    end
  end

  def show
   @S = Team.find(params[:id])
    respond_to do |format|
      format.json { render json: @S}
  end

  def create
	@NewE = Team.new
    @NewE.name_team = params[:name_team]
    @NewE.name_manager = params[:name_manager]
    @NewE.flag_team = params[:flag_team]
    @NewE.uniforme = params[:uniforme]
    @NewE.information = params[:information]
    @NewE.save
    respond_to do |format|
        format.json { render json: @NewE}
    end
	
  end

  def update
	@UpT = Team.find(params[:id]) 
	if @UpT.update_attributes(params[:name_team]) 
		flash[:notice] = "Updated" 
	end 
	respond_to do |format| 
		format.json { render json: @UpT} 
	end
  end

  def delete
	@DeleteE = Team.find(params[:id])
    @DeleteE.destroy

    respond_to do |format|
        format.json { head :no_content}  
    end
  end
end
