class SessionsController < ApplicationController

  def destroy
    session["user_id"] = nil
    redirect_to "/bottles", notice: "Come back soon!"
  end
  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session["user_id"] = user.id
      redirect_to "/bottles", notice: "Welcome back, #{user.name}"
    else
      redirect_to "/login", notice: "Unknown username or password."
    end
  end

end


#sessions new is the login form
#create is the login form
#destroy is the signout

#make sure user is an admin, otherwise kick them back to the index page
