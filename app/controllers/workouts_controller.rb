class WorkoutsController < ApplicationController
  
  def show
    @workout = Workout.find(params[:id])
    @user = User.find(@workout.user_id)  
    #@excercises = Excercise.find(@workout.workout_id)  
  end
  
  def create
    @user = User.find(params[:user_id])
    @workout = @user.workouts.create(workout_params)
    redirect_to user_path(@user)
  end
  
  def destroy       
    @workout = Workout.find(params[:id])
    @user = User.find(@workout.user_id)  
    @workout.destroy
    redirect_to user_path(@user)
  end
  
  private
  def workout_params
    params.require(:workout).permit(:workout_date)
  end
    
end
