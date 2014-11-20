class CreateExerciseSets < ActiveRecord::Migration
  def change
    create_table :exercise_sets do |t|
      t.integer :reps
      t.integer :weight
      t.references :exercise, index: true

      t.timestamps
    end
  end
end
