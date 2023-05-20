class UsersController < ApplicationController

  before_action :authorize
  skip_before_action :authorize, only: [:create]

  def create
    puts params
    if params[:password] == params[:conf_password]
      user = User.create(username: params[:username], password: params[:password])
      if user.valid?
        session[:user_id] = user.id
        render json: user, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { errors: "Passwords do not match" }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(user).permit(:username, :password)
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

end