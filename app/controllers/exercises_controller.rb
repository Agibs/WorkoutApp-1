class ExercisesController < ApplicationController
  def show
    @exercise = Exercise.find(params[:id])
  end

  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.create(exercise_params)
    redirect_to workout_path(@workout)
  end
  
  def destroy         
    @exercise = Exercise.find(params[:id])
    @workout = Workout.find(@exercise.workout_id)              
    @exercise.destroy
    redirect_to workout_path(@workout)
  end
  
  
  private
  def exercise_params
    params.require(:exercise).permit(:name)
  end
  
end
