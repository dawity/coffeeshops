class SessionsController < ApplicationController

  def new
    render 'new'
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      flash[:error] = 'Either your email, password  or both are Invalid'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to home_url, notice: "You are Logged out"
  end

end
