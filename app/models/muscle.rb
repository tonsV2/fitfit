class Muscle < ActiveRecord::Base
	belongs_to :muscle_group

	cattr_reader :per_page
	@@per_page = 10

	has_many :targets, :dependent => :destroy
	has_many :exercises, :through => :targets

	validates_presence_of :name
	validates_presence_of :muscle_group

	def self.search(search, page)
		if !search.blank?
			paginate :page => page, :conditions => ['muscle_group_id = ?', search], :order => 'name'
		else
			paginate :page => page, :order => 'name'
		end
	end
end

