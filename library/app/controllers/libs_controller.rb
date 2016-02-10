class LibsController < ApplicationController
#@lib = Lib.find(Lib.Name)
	def new
	end
	def index
		@libs=Lib.all
	end

    def create
     	@lib= Lib.new(libs_params)
    
        redirect_to lib_path(@lib)
    end
	def show
		@lib = Lib.find(params[:id])
	end

 
  

	private 
		def lib_params
			params.require(:lib).permit(:name)
		end


end
