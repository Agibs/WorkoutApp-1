class AddDateToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :workout_date, :date
  end
end
