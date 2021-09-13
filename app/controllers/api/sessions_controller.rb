class Api::SessionsController < ApplicationController
    
      def create
        @user = User.find_by(params[:username])
        if @user
          session[:user_id] = @user.id
          render json: @user
        else
          render json: {error: "Ooops you couldn't sign in"}
        end
      end
    
      def destroy
        session[:user_id] = nil
        flash[:notice] = 'You have succesffuly logged out'
        redirect_to root_path
      end
end
