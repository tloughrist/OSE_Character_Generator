class EquipsController < ApplicationController

  before_action :authorize


  private

  def equip_params
    params.require(:equip).permit(:name, :weapon, :damage, :attack_modifier, :special, :range, :blunt, :brace, :charge, :melee, :missile, :reload, :slow, :splash_weapon, :two_handed, :armor, :armor_class, :cost, :weight, :special)
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end
end

