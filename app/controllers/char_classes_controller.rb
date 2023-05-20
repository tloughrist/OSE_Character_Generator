class CharClassesController < ApplicationController

  before_action :authorize


  private

  def char_class_params
    params.require(:equip).permit()
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
end

