class EventsController < ApplicationController
	def index
  	@events = Event.all
  end	

  def show
  	@event = Event.find(params["id"])
	end

	def create
	  event_params = params["event"].permit("date", "time", "title")
	  event = Event.create(event_params)
	  redirect_to(event_path(event))
	end

	def new
		@event = Event.new
	end
end
