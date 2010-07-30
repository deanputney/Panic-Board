class CountdownsController < ApplicationController
  # GET /countdowns
  # GET /countdowns.xml
  def index
    @countdowns = Countdown.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @countdowns }
    end
  end

  # GET /countdowns/1
  # GET /countdowns/1.xml
  def show
    @countdown = Countdown.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @countdown }
    end
  end

  # GET /countdowns/new
  # GET /countdowns/new.xml
  def new
    @countdown = Countdown.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @countdown }
    end
  end

  # GET /countdowns/1/edit
  def edit
    @countdown = Countdown.find(params[:id])
  end

  # POST /countdowns
  # POST /countdowns.xml
  def create
    @countdown = Countdown.new(params[:countdown])

    respond_to do |format|
      if @countdown.save
        flash[:notice] = 'Countdown was successfully created.'
        format.html { redirect_to(@countdown) }
        format.xml  { render :xml => @countdown, :status => :created, :location => @countdown }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @countdown.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /countdowns/1
  # PUT /countdowns/1.xml
  def update
    @countdown = Countdown.find(params[:id])

    respond_to do |format|
      if @countdown.update_attributes(params[:countdown])
        flash[:notice] = 'Countdown was successfully updated.'
        format.html { redirect_to(@countdown) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @countdown.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /countdowns/1
  # DELETE /countdowns/1.xml
  def destroy
    @countdown = Countdown.find(params[:id])
    @countdown.destroy

    respond_to do |format|
      format.html { redirect_to(countdowns_url) }
      format.xml  { head :ok }
    end
  end
end
