class AmbushesController < ApplicationController
  # GET /ambushes
  # GET /ambushes.json
  def index
    @ambushes = Ambush.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ambushes }
    end
  end

  # GET /ambushes/1
  # GET /ambushes/1.json
  def show
    @ambush = Ambush.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ambush }
    end
  end

  # GET /ambushes/new
  # GET /ambushes/new.json
  def new
    @ambush = Ambush.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ambush }
    end
  end

  # GET /ambushes/1/edit
  def edit
    @ambush = Ambush.find(params[:id])
  end

  # POST /ambushes
  # POST /ambushes.json
  def create
    @ambush = Ambush.new(params[:ambush])

    respond_to do |format|
      if @ambush.save
        format.html { redirect_to @ambush, :notice => 'Ambush was successfully created.' }
        format.json { render :json => @ambush, :status => :created, :location => @ambush }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ambush.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ambushes/1
  # PUT /ambushes/1.json
  def update
    @ambush = Ambush.find(params[:id])

    respond_to do |format|
      if @ambush.update_attributes(params[:ambush])
        format.html { redirect_to @ambush, :notice => 'Ambush was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ambush.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ambushes/1
  # DELETE /ambushes/1.json
  def destroy
    @ambush = Ambush.find(params[:id])
    @ambush.destroy

    respond_to do |format|
      format.html { redirect_to ambushes_url }
      format.json { head :ok }
    end
  end
end
