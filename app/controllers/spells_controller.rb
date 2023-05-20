class SpellsController < ApplicationController

  before_action :authorize
  skip_before_action :authorize, only: [:index]

  def index
  end

  private

  def spell_params
    params.require(spell).permit(:char_class, :level, :duration, :range, :text)
  end

  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

end
