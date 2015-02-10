class Exercise < ActiveRecord::Base
 
  belongs_to :workout
  has_many :exercise_sets, dependent: :destroy
  validates_presence_of :name
 
end
