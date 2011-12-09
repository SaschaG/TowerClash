class EarthsController < ApplicationController
  # GET /earths
  # GET /earths.json
  def index
    @earths = Earth.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @earths }
    end
  end

  # GET /earths/1
  # GET /earths/1.json
  def show
    @earth = Earth.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @earth }
    end
  end

  # GET /earths/new
  # GET /earths/new.json
  def new
    @earth = Earth.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @earth }
    end
  end

  # GET /earths/1/edit
  def edit
    @earth = Earth.find(params[:id])
  end

  # POST /earths
  # POST /earths.json
  def create
    @earth = Earth.new(params[:earth])

    respond_to do |format|
      if @earth.save
        format.html { redirect_to @earth, :notice => 'Earth was successfully created.' }
        format.json { render :json => @earth, :status => :created, :location => @earth }
      else
        format.html { render :action => "new" }
        format.json { render :json => @earth.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /earths/1
  # PUT /earths/1.json
  def update
    @earth = Earth.find(params[:id])

    respond_to do |format|
      if @earth.update_attributes(params[:earth])
        format.html { redirect_to @earth, :notice => 'Earth was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @earth.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /earths/1
  # DELETE /earths/1.json
  def destroy
    @earth = Earth.find(params[:id])
    @earth.destroy

    respond_to do |format|
      format.html { redirect_to earths_url }
      format.json { head :ok }
    end
  end
end
