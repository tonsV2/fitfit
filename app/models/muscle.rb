class Muscle < ActiveRecord::Base
	belongs_to :muscle_group


	cattr_reader :per_page
	@@per_page = 10
end
