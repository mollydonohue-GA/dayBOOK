class WelcomeController < ApplicationController
  def index
  	@entries = Entry.all
  end
  def index
  	@events = Event.all
  end	
end
