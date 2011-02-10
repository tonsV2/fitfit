class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  belongs_to :user

  has_many :targets, :dependent => :destroy
  has_many :muscles, :through => :targets

  accepts_nested_attributes_for :muscles, :reject_if => :all_blank


  validates_presence_of :name
  validates_presence_of :user
end
