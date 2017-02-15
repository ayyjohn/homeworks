class SesssionsController < ApplicationController
  def create
    user = User.find_by_credentials(
    params[:user][:username],
    params[:user][:password]
    )

    if user.nil?
      render json: "Invalid username/password"
    else
      render json: "Welcome back #{user.username}"
    end
  end

  def new
  end
end
