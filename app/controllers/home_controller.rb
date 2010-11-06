class HomeController < ApplicationController
  # GET /tasks
  # GET /tasks.xml
  def index
    @countdowns = Countdown.find(:all, :conditions => ["end >= ?", Time.now], :order => "end ASC", :limit => 2)
    
  	httpauth = Twitter::HTTPAuth.new('mustardhamsters', 'sporks')
		client = Twitter::Base.new(httpauth)
    @timeline = client.friends_timeline
    
    respond_to do |format|
      format.html # index.html.erb
      # format.xml  { render :xml => @tasks }
    end
  end
  
  def update_twitter
  	httpauth = Twitter::HTTPAuth.new('mustardhamsters', 'sporks')
		client = Twitter::Base.new(httpauth)
    @new_timeline = client.friends_timeline
    unless @new_timeline == @timeline
    	@timeline = @new_timeline
  	
	    render :update do |p|
	      p.replace_html "tweets", :partial => "partials/tweets"
	    end
	  end
  end
end
