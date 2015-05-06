class StoreSessionsController < ApplicationController
  def new
  end

  def create
    user = HostUser.find_by_email(params[:email])
    if user and user.authenticate(params[:password])
      session[:host_user_id] = user.id
      redirect_to '/'
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:host_user_id] = nil
    redirect_to '/'
  end
end
