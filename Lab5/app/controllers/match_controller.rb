class MatchController < ApplicationController
  def index
	@m = Match.all
	respond_to do |format|
      format.json { render json: @m}
    end
  end

  def show
  @ShowM = Match.find(params[:id])
    respond_to do |format|
      format.json { render json: @ShowM}
  end

  def create
  @NewM = Match.new
    @NewTeam.save
    respond_to do |format|
        format.json { render json: @NewM}
    end
  end

  def update
	@UpM = Team.find(params[:id]) 
	if @UpM.update_attributes(params[:date_match]) 
		flash[:notice] = "Updated" 
	end 
	respond_to do |format| 
		format.json { render json: @UpM} 
	end
  end

  def delete
	@DelM = Match.find(params[:id])
    @DelM.destroy
    respond_to do |format|
		format.json { head :no_content}
    end
  end
end
