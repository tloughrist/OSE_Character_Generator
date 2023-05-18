class SpellsController < ApplicationController

  before_action :authorize


  private

  def user_params
    params.permit(:username, :password)
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

end
