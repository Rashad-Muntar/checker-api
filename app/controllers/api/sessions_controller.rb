class Api::SessionsController < ApplicationController
  before_action :current_user

  def create
    user = User.find_by(username: params[:username])
    if user.authenticate(params[:password])
      render json: { user: user, status: 'signed_in', message: 'You have successfuly login' }
    else
      render json: {error: 'invalid_credentials'}, status: 500
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def destroy
    session[:user_id] = nil
    render json: { message: 'You have logout successfully' }
  end
end
