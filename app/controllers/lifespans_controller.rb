class LifespansController < ApplicationController
  
  
  # GET /lifespans/new
  # GET /lifespans/new.json
  def new
	@lifespan = Lifespan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @lifespan }
    end

	 
	end

  
  # POST /lifespans
  # POST /lifespans.json
  def create
         end

    # DELETE /lifespans/1
  # DELETE /lifespans/1.json
  def destroy
    @lifespan = Lifespan.find(params[:id])
    @lifespan.destroy

    respond_to do |format|
      format.html { redirect_to lifespans_url }
      format.json { head :no_content }
    end
  end
end
