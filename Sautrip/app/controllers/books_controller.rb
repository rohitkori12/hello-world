class BooksController < ApplicationController
		def new
		@book = Book.new
	end
	def create
    @lib = Lib.find(params[:lib_id])
		@book = @lib.books.new(lib_params)
 
    	 @book.save
      	 redirect_to @book
	end	
	def show
    	@book = Book.find(params[:id])
  	end
  	  
  def index
    @lib = Lib.find(params[:lib_id])
    @books = @lib.books.all
  end

  	private
    def lib_params
      params.require(:book).permit(:name, :author)
    end
end
