class Workout < ActiveRecord::Base
  belongs_to :user
  has_many :exercises, dependent: :destroy
 	validates_presence_of :name, notice: "please enter day"
end
