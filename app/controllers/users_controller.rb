class UsersController < ApplicationController

  before_action :authorize
  skip_before_action :authorize, only: [:create]


  private

  def user_params
    params.require(user).permit(:username, :password)
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

end