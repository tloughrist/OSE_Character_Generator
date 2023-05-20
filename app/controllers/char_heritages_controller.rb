class CharHeritagesController < ApplicationController

  before_action :authorize
  skip_before_action :authorize, only: [:index]

  def index
  end

  private

  def char_heritage_params
    params.require(:equip).permit()
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
end

