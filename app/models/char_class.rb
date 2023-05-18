class CharClass < ApplicationRecord
  has_many :levels
  has_many :spells
  has_many :characters
end
