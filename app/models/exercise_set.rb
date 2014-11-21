class ExerciseSet < ActiveRecord::Base
  belongs_to :exercise
  validates_presence_of :weight
  validates_presence_of :reps
end
