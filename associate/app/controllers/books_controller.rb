class BooksController < ApplicationController
#	def new
#		@book = Book.new
#	end
	def create
		@lib = Lib.find(params[:lib_id])
		@book = @lib.books.build(lib_params)
 
    	@book.save
      	redirect_to lib_books_path(@lib)
	end	
	def show
		@lib = Lib.find(params[:lib_id])
    	@book = Book.find(params[:id])
  	end
  	def index
  		@lib = Lib.find(params[:lib_id])
	    @books =@lib.books
  	end
  	def destroy
  		@book = Book.find(params[:id])
		@book.destroy 
		redirect_to lib_books_path
	end

  	private
    def lib_params
      params.require(:book).permit(:name, :author ,:lib_id)
    end
end
