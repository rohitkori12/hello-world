class Book < ActiveRecord::Base
	belongs_to :lib
	belongs_to :authors
	belongs_to  :publisher
	resourcify
	include Authority::Abilities
end
