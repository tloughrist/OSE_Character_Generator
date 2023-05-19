class CharactersController < ApplicationController

  before_action :authorize


  private

  def character_params
      params.require(:character).permit(:name, :char_class, :char_heritage, :level, :strength, :dexterity, :constitution, :wisdom, :intelligence, :charisma, :hp, :xp, :coins, :armor_class, :climb_sheer_surfaces, :find_and_remove_treasure_traps, :hear_noise, :hide_in_shadows, :move_silently, :open_locks, :pick_pockets, :read_languages, :falling, :tightrope_walking, :tracking, :assassination)
    end

    def authorize
      return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end
end

