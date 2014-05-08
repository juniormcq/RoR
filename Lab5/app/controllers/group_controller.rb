class GroupController < ApplicationController
  def index
  @g = Group.all
    respond_to do |format|
      format.json { render json: @g}
    end
  end

  def show
	@ShowG = Group.find(params[:id])
    respond_to do |format|
      format.json { render json: @ShowG}
  end

  def create
	@NewG = Group.new
    @NewG.name = params[:name_group]
    @NewG.save
    respond_to do |format|
       format.json { render json: @NewTeam} 
    end
  end

  def update
	@UpMG = Team.find(params[:id]) 
	if @UpG.update_attributes(params[:date_match]) 
		flash[:notice] = "Updated" 
	end 
	respond_to do |format| 
		format.json { render json: @UpG} 
	end
  end

  def delete
	@DelG = Group.find(params[:id])
    @DelG.destroy
    respond_to do |format|
     format.json { head :no_content}
    end
  end
end
