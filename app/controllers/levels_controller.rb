class LevelsController < ApplicationController

  before_action :authorize


  private

  def level_params
    params.require(level).permit(:char_class, :level, :hit_dice, :attack_bonus, :xp, :death, :wands, :paralysis, :breath, :spell, :sp_1, :sp_2, :sp_3, :sp_4, :sp_5, :sp_6, :turn_1, :turn_2, :turn_3, :turn_4, :turn_5, :turn_6, :turn_7_9, :assas_mod, :track)
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
end

