class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  has_many :targets
  has_many :muscles, :through => :targets

  accepts_nested_attributes_for :muscles, :reject_if => :all_blank
end
