class PersonalEquipsController < ApplicationController

  before_action :authorize


  private

  def personal_equip_params
    params.require(personal_equip).permit(:character, :equip, :location)
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
end
