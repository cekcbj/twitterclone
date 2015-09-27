class SessionsController < ApplicationController
  def new
  end

  def create
    email = params[:email]
    password = params[:password]

     user = User.find_by email: email
     if user.try(:authenticate, password)
      session[:user_id]= user.id
      redirect_to root_path

    else
      flash.now[:alert] = " Something is wrong with your login"
      render :new
    end

  end

  def destroy
    session.delete :user_id
    flash[:notice]= "You have been logged out"
    redirect_to root_path
  end

end
