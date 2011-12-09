class AirsController < ApplicationController
  # GET /airs
  # GET /airs.json
  def index
    @airs = Air.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @airs }
    end
  end

  # GET /airs/1
  # GET /airs/1.json
  def show
    @air = Air.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @air }
    end
  end

  # GET /airs/new
  # GET /airs/new.json
  def new
    @air = Air.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @air }
    end
  end

  # GET /airs/1/edit
  def edit
    @air = Air.find(params[:id])
  end

  # POST /airs
  # POST /airs.json
  def create
    @air = Air.new(params[:air])

    respond_to do |format|
      if @air.save
        format.html { redirect_to @air, :notice => 'Air was successfully created.' }
        format.json { render :json => @air, :status => :created, :location => @air }
      else
        format.html { render :action => "new" }
        format.json { render :json => @air.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /airs/1
  # PUT /airs/1.json
  def update
    @air = Air.find(params[:id])

    respond_to do |format|
      if @air.update_attributes(params[:air])
        format.html { redirect_to @air, :notice => 'Air was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @air.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /airs/1
  # DELETE /airs/1.json
  def destroy
    @air = Air.find(params[:id])
    @air.destroy

    respond_to do |format|
      format.html { redirect_to airs_url }
      format.json { head :ok }
    end
  end
end
