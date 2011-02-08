class Muscle < ActiveRecord::Base
	belongs_to :muscle_group

	cattr_reader :per_page
	@@per_page = 10

	has_many :targets
	has_many :exercises, :through => :targets
end
