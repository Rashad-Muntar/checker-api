class Api::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
      end
    
      def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          render json: {user: @user, statued: 'created', message: 'You have successfuly created your account'}
        else
         render json: {erro: 'Ooops something went wrong'}
        end
      end
    
      private
    
      def user_params
        params.require(:user).permit(:username, :email)
      end
end
