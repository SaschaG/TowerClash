class IcesController < ApplicationController
  # GET /ices
  # GET /ices.json
  def index
    @ices = Ice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ices }
    end
  end

  # GET /ices/1
  # GET /ices/1.json
  def show
    @ice = Ice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ice }
    end
  end

  # GET /ices/new
  # GET /ices/new.json
  def new
    @ice = Ice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ice }
    end
  end

  # GET /ices/1/edit
  def edit
    @ice = Ice.find(params[:id])
  end

  # POST /ices
  # POST /ices.json
  def create
    @ice = Ice.new(params[:ice])

    respond_to do |format|
      if @ice.save
        format.html { redirect_to @ice, :notice => 'Ice was successfully created.' }
        format.json { render :json => @ice, :status => :created, :location => @ice }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ices/1
  # PUT /ices/1.json
  def update
    @ice = Ice.find(params[:id])

    respond_to do |format|
      if @ice.update_attributes(params[:ice])
        format.html { redirect_to @ice, :notice => 'Ice was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ices/1
  # DELETE /ices/1.json
  def destroy
    @ice = Ice.find(params[:id])
    @ice.destroy

    respond_to do |format|
      format.html { redirect_to ices_url }
      format.json { head :ok }
    end
  end
end
