class EscapetunnelsController < ApplicationController
  # GET /escapetunnels
  # GET /escapetunnels.json
  def index
    @escapetunnels = Escapetunnel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @escapetunnels }
    end
  end

  # GET /escapetunnels/1
  # GET /escapetunnels/1.json
  def show
    @escapetunnel = Escapetunnel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @escapetunnel }
    end
  end

  # GET /escapetunnels/new
  # GET /escapetunnels/new.json
  def new
    @escapetunnel = Escapetunnel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @escapetunnel }
    end
  end

  # GET /escapetunnels/1/edit
  def edit
    @escapetunnel = Escapetunnel.find(params[:id])
  end

  # POST /escapetunnels
  # POST /escapetunnels.json
  def create
    @escapetunnel = Escapetunnel.new(params[:escapetunnel])

    respond_to do |format|
      if @escapetunnel.save
        format.html { redirect_to @escapetunnel, :notice => 'Escapetunnel was successfully created.' }
        format.json { render :json => @escapetunnel, :status => :created, :location => @escapetunnel }
      else
        format.html { render :action => "new" }
        format.json { render :json => @escapetunnel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /escapetunnels/1
  # PUT /escapetunnels/1.json
  def update
    @escapetunnel = Escapetunnel.find(params[:id])

    respond_to do |format|
      if @escapetunnel.update_attributes(params[:escapetunnel])
        format.html { redirect_to @escapetunnel, :notice => 'Escapetunnel was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @escapetunnel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /escapetunnels/1
  # DELETE /escapetunnels/1.json
  def destroy
    @escapetunnel = Escapetunnel.find(params[:id])
    @escapetunnel.destroy

    respond_to do |format|
      format.html { redirect_to escapetunnels_url }
      format.json { head :ok }
    end
  end
end
