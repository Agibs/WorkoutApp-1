class WorkoutsController < ApplicationController
  
  def create
    @user = User.find(params[:user_id])
    @workout = @user.workouts.create(workout_params)
    redirect_to user_path(@workout)
  end
  
  private
  def workout_params
    params.require(:workout).permit(:name)
  end
    
end
