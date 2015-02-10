class Workout < ActiveRecord::Base
  belongs_to :user
  has_many :exercises, dependent: :destroy
 	validates_presence_of :workout_date, notice: "please enter day"
 	validates_uniqueness_of :workout_date
end
