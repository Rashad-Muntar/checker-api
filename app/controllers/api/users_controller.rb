class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render json: { user: @user, status: 'created', message: 'You have successfuly created your account' }
    else
      render json: { errors: 'Ooops something went wrong'}, statues: :internal_server_error
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user
      render json: UserSerializer.new(@user, options).serialized_json
    else
      render json: { message: 'User was not found' }, statues: :internal_server_error
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end

  def options
    @options ||= { include: %i[categories] }
  end
end
