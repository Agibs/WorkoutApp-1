class SessionsController < ApplicationController
 
 def new
   #renders the sign in page
 end
   
def create
  @user = login(params[:email], params[:password])
  if @user
    redirect_to @user, :notice => "Logged in!"
  else
    flash.now.alert = "Email or password was invalid"
    redirect_to root_url
    #render :new
  end
end

def destroy
  logout
  redirect_to root_url, :notice => "Logged out!"
end


end
