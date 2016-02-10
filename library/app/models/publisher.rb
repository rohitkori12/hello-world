class Publisher < ActiveRecord::Base
	has_many  :books
	has_many  :authors, through:  :books
	resourcify
end
