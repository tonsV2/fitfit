class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  has_many :targets
  has_many :muscles, :through => :targets
end
