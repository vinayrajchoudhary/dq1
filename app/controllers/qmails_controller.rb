class QmailsController < ApplicationController
  # GET /qmails
  # GET /qmails.json
  def index
    @qmails = Qmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qmails }
    end
  end

  # GET /qmails/1
  # GET /qmails/1.json
  def show
    @qmail = Qmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qmail }
    end
  end

  # GET /qmails/new
  # GET /qmails/new.json
  def new
    @qmail = Qmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qmail }
    end
  end

  # GET /qmails/1/edit
  def edit
    @qmail = Qmail.find(params[:id])
  end

  # POST /qmails
  # POST /qmails.json
  def create
     @q = Q.find(params[:q_id])
    @qmail = @q.qmails.create(params[:qmail])
    current_user.qmails << @qmail
    redirect_to q_path(@q)
  end

  # PUT /qmails/1
  # PUT /qmails/1.json
  def update
    @qmail = Qmail.find(params[:id])

    respond_to do |format|
      if @qmail.update_attributes(params[:qmail])
        format.html { redirect_to @qmail, notice: 'Qmail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qmail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qmails/1
  # DELETE /qmails/1.json
  def destroy
    @qmail = Qmail.find(params[:id])
    @qmail.destroy

    respond_to do |format|
      format.html { redirect_to qmails_url }
      format.json { head :no_content }
    end
  end
end
