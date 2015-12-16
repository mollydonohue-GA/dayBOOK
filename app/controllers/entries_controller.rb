class EntriesController < ApplicationController
	
	def index
		@entries = Entry.all.order('id DESC')
	end

	def show
  	@entry = Entry.find(params["id"])
	end

	def create
	  entry_params = params["entry"].permit("date", "contents")
	  entry = Entry.create(entry_params)
	  redirect_to(entry_path(entry))
	end

	def new
		@entry = Entry.new
	end

end
