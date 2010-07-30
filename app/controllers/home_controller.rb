class HomeController < ApplicationController
  # GET /tasks
  # GET /tasks.xml
  def index
    @countdown = Countdown.find(:first, :conditions => ["end >= ?", Time.now])
    
    respond_to do |format|
      format.html # index.html.erb
      # format.xml  { render :xml => @tasks }
    end
  end
end
