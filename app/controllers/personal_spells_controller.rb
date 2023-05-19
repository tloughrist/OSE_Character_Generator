class PersonalSpellsController < ApplicationController

  before_action :authorize


  private

  def personal_spell_params
    params.require(personal_spell).permit(:character, :spell, :memorized)
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
end
