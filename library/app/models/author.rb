class Author < ActiveRecord::Base
	belongs_to  :publisher
	has_many  :books
	resourcify
end
