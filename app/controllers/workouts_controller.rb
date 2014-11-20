class WorkoutsController < ApplicationController
  
  def show
    @workout = Workout.find(params[:id])
    @user = User.find(@workout.user_id)    
  end
  
  def create
    @user = User.find(params[:user_id])
    @workout = @user.workouts.create(workout_params)
    redirect_to user_path(@user)
  end
  
  private
  def workout_params
    params.require(:workout).permit(:name)
  end
    
end
