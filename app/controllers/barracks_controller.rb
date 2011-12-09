class BarracksController < ApplicationController
  # GET /barracks
  # GET /barracks.json
  def index
    @barracks = Barrack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @barracks }
    end
  end

  # GET /barracks/1
  # GET /barracks/1.json
  def show
    @barrack = Barrack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @barrack }
    end
  end

  # GET /barracks/new
  # GET /barracks/new.json
  def new
    @barrack = Barrack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @barrack }
    end
  end

  # GET /barracks/1/edit
  def edit
    @barrack = Barrack.find(params[:id])
  end

  # POST /barracks
  # POST /barracks.json
  def create
    @barrack = Barrack.new(params[:barrack])

    respond_to do |format|
      if @barrack.save
        format.html { redirect_to @barrack, :notice => 'Barrack was successfully created.' }
        format.json { render :json => @barrack, :status => :created, :location => @barrack }
      else
        format.html { render :action => "new" }
        format.json { render :json => @barrack.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /barracks/1
  # PUT /barracks/1.json
  def update
    @barrack = Barrack.find(params[:id])

    respond_to do |format|
      if @barrack.update_attributes(params[:barrack])
        format.html { redirect_to @barrack, :notice => 'Barrack was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @barrack.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /barracks/1
  # DELETE /barracks/1.json
  def destroy
    @barrack = Barrack.find(params[:id])
    @barrack.destroy

    respond_to do |format|
      format.html { redirect_to barracks_url }
      format.json { head :ok }
    end
  end
end
