class Character < ApplicationRecord
  belongs_to :user
  belongs_to :char_class
  belongs_to :char_heritage
  has_many :personal_equips
  has_many :personal_spells
end
