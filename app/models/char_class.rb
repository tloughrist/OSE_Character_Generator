class CharClass < ApplicationRecord
  has_many :attack_bonuses
  has_many :experience_levels
  has_many :hit_dice
  has_many :saves
  has_many :spells_per_levels
  has_many :turnings
  has_many :characters
end
