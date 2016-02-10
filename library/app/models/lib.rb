class Lib < ActiveRecord::Base
	has_many  :books
	
	resourcify
end
