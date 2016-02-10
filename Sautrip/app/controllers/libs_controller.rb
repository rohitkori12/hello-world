class LibsController < ApplicationController
	def index
    	@libs = Lib.all
  	end


	def new
		@lib = Lib.new
	end
	def create
		@lib = Lib.new(lib_params)
 
    	 @lib.save
      	 redirect_to @lib
	end	
	def show
    	@lib = Lib.find(params[:id])
  	end
 
  	private
    def lib_params
      params.require(:lib).permit(:name)
    end
end
