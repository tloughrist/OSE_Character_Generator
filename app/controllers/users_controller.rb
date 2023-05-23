class UsersController < ApplicationController

  before_action :authorize
  skip_before_action :authorize, only: [:create]

  def create
    if params[:password] == params[:password_confirmation]
      user = User.create(username: params[:username], password: params[:password], email: params[:email])
      if user.valid?
        session[:user_id] = user.id
        render json: user, status: :created
        flash[:success] = "You're logged in as #{user.username}"
        redirect_to 'home'
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { errors: "Passwords do not match" }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(user).permit(:username, :password, :email)
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

end