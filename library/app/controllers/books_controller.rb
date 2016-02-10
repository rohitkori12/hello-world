class BooksController < ApplicationController
	#@lib = Lib.find(params[:Lib_id])
	def new 
		
	end

	def index
	@books = Book.all 

	end 


	def create 

		@book = Book.new(books_params)
		
		@book.save
		redirect_to @book
	end 

	def edit
		@book = Book.find(params[:id])
	

	end 

	def update
		@book = Book.find(params[:id])

		@book.update(books_params)
		redirect_to @book

	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy 
		redirect_to root_path
	end 

	def show
		@book = Book.find(params[:id])

	end 
	
	private 
		def books_params
			params.require(:book).permit(:name, :author,
      	:category,
       	:version,
       	:publishedDate,
       	:typeofBook,
       	:quantity)

		end 

end
