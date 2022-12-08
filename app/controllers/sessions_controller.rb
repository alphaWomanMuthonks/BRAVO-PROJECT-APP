class SessionsController < ApplicationController

    # POST /login
    def create
      # Find user by their username
      user = User.find_by(username: params[:username])
      # Authenticate the user
      if user && user.authenticate(params[:password])
        # Set the user ID in the session
        session[:user_id] = user.id
        # Render the user as JSON
        render json: user, status: :ok
      else
        # Tell the client there is something wrong with the credentials
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      end
    end
    def destroy
        session.delete :user_id
        head :no_content
    end

end