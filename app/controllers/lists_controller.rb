class ListsController < ApplicationController
		def index
  	@lists = List.all
  end	

  def show
  	@list = List.find(params["id"])
	end

	def create
	  list_params = params["list"].permit("title", "item")
	  list = List.create(list_params)
	  redirect_to(lists_path(list))
	end

	def new
		@list= List.new
	end

	def edit
  	@list = List.find(params["id"])
	end


	def update
	  list_params = params["list"].permit("title", "item")
	  list = List.find(params["id"])
	  list.update(list_params)
	  redirect_to(lists_path(list))
	end

	def destroy
		list = List.find(params["id"])
		list.destroy
  	redirect_to(lists_path(list))
	end

end

