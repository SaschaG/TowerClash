class TowersController < ApplicationController
  # GET /towers
  # GET /towers.json
  def index
    @towers = Tower.where(:user_id => current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @towers }
    end
  end

  # GET /towers/1
  # GET /towers/1.json
  def show
    @tower = Tower.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @tower }
    end
  end

  # GET /towers/new
  # GET /towers/new.json
  def new
    @tower = Tower.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @tower }
    end
  end

  # GET /towers/1/edit
  def edit
    @tower = Tower.find(params[:id])
  end

  # POST /towers
  # POST /towers.json
  def create
    @tower = Tower.new(params[:tower])
	
	#Vergabe der Koordinaten. Die Karte ist in vier Teile gteilt. Mittelpunkt ist 50/50
	#Es wird immer erst eine y Reihe ausgefüllt wobei der x Abstand zufällig bestimmt wird.
	#Es gibt 4 Startpunkte und somit $ reihen die abwechselnd gefüllt werden.
	tnortheast = Tower.where(:position => 'northeast')
	tnorthwest = Tower.where(:position => 'northwest')
	tsouthwest = Tower.where(:position => 'southwest')
	tsoutheast = Tower.where(:position => 'southeast')
	if tnortheast.last.nil? 
	  
	  @tower.position = 'northeast'
	  @tower.x = '51'
	  @tower.y = '51'
	  
	elsif tnorthwest.last.nil?
	  @tower.position = 'northwest'
	  @tower.x = '49'
	  @tower.y = '51'
	  
	elsif tsouthwest.last.nil?
	  @tower.position = 'southwest'
	  @tower.x = '49'
	  @tower.y = '49'
	
	elsif tsoutheast.last.nil?
	  @tower.position = 'southeast'
	  @tower.x = '51'
	  @tower.y = '49'
	
	else
	  
	  if tsoutheast.count < tsouthwest.count
	    if tsoutheast.last.x < 95
	      @tower.position = 'southeast'
	 	  @tower.x = tsoutheast.last.x + 1 + rand(5)
	  	  @tower.y = tsoutheast.last.y
	    
	    else
	      @tower.position = 'southeast'
	 	  @tower.x = 51 + rand(4)
	  	  @tower.y = tsoutheast.last.y - 1
	    
	    end
	    
	    
	    
	  
	  elsif tsouthwest.count < tnorthwest.count
	    if tsouthwest.last.x > 5
	      @tower.position = 'southwest'
	 	  @tower.x = tsouthwest.last.x - 1 - rand(5)
	  	  @tower.y = tsouthwest.last.y 
	    
	    else
	      @tower.position = 'southwest'
	 	  @tower.x = 49 - rand(4)
	  	  @tower.y = tsouthwest.last.y - 1
	    
	    end
	  
	  elsif tnorthwest.count < tnortheast.count
	    if tnorthwest.last.x > 5
	      @tower.position = 'northwest'
	 	  @tower.x = tnorthwest.last.x - 1 - rand(5)
	  	  @tower.y = tnorthwest.last.y 
	    
	    else
	      @tower.position = 'northwest'
	 	  @tower.x = 49 - rand(4)
	  	  @tower.y = tnorthwest.last.y + 1
	    
	    end
	  else
	    if tnortheast.last.x < 95
	      @tower.position = 'northeast'
	 	  @tower.x = tnortheast.last.x + 1 + rand(5)
	  	  @tower.y = tnortheast.last.y 
	    
	    else
	      @tower.position = 'northeast'
	 	  @tower.x = 51 + rand(4)
	  	  @tower.y = tnortheast.last.y + 1
	    
	    end
	  
	  
	  end
	end
	
	#User_id wird zugewiesen
	@tower.user_id = current_user.id
	@tower.down2 = 'store 1'

	
	
	
	
    respond_to do |format|
      if @tower.save
        format.html { redirect_to @tower, :notice => 'Tower was successfully created.' }
        format.json { render :json => @tower, :status => :created, :location => @tower }
        
        #Coordinates für die MAp anlegen
        @c = Coordinate.new(params[:coordinates])
        @c.x = @tower.x
        @c.y = @tower.y
        @c.user_id = @tower.user_id
        @c.save
        
      else
        format.html { render :action => "new" }
        format.json { render :json => @tower.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /towers/1
  # PUT /towers/1.json
  def update
    @tower = Tower.find(params[:id])

    respond_to do |format|
      if @tower.update_attributes(params[:tower])
        format.html { redirect_to @tower, :notice => 'Tower was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @tower.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /towers/1
  # DELETE /towers/1.json
  def destroy
    @tower = Tower.find(params[:id])
    @tower.destroy

    respond_to do |format|
      format.html { redirect_to towers_url }
      format.json { head :ok }
    end
  end
  
  
  
  #Aufsetzen der Bauoptionen
  def built
    @user = current_user
    @tower = Tower.find(params[:id])
    if @user.wood >= Fire.find(1).wood && @user.stone >= Fire.find(1).stone &&
       @user.christals >= Fire.find(1).christals && @user.iron >= Fire.find(1).iron
       @user.gold >= Fire.find(1).gold
    p = params[:place]
    b = params[:building]
    @tower.build(p,b)
    flash[:notice] = "Wird gebaut!"
    flash[:notice] = p
    redirect_to tower_url(@tower)
    else
    flash[:notice] = "Nicht genügend Rohstoffe!"
    redirect_to tower_url(@tower)
    end
  end
  
  
  
  
end
