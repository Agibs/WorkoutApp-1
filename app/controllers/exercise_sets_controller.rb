class ExerciseSetsController < ApplicationController
	
	def create
		@exercise = Exercise.find(params[:exercise_id])
    @exercise_set = @exercise.exercise_sets.create(exercise_set_params)
    redirect_to exercise_path(@exercise)
	end
	
  def destroy         
    @exercise_set = ExerciseSet.find(params[:exercise_id])
    @exercise = Exercise.find(@exercise_set.exercise_id)             
    @exercise_set.destroy
    redirect_to exercise_path(@exercise)
  end
  
	private

	def exercise_set_params
		params.require(:exercise_set).permit(:weight, :reps)
	end
end
