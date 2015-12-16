class EventsController < ApplicationController
	def index
  	@events = Event.all.order('date DESC')
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

	def edit
  	@event = Event.find(params["id"])
	end


	def update
	  event_params = params["event"].permit("date", "time", "title")
	  event = Event.find(params["id"])
	  event.update(event_params)
	  redirect_to(events_path(event))
	end

	def destroy
		event = Event.find(params["id"])
		event.destroy
  	redirect_to(events_path(event))
	end

end
