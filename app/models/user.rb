class User < ApplicationRecord
  has_many :characters

  validates :username, uniqueness: true
  validates :username, length: { minimum: 5 }, allow_blank: true
  validates :email, presence: true
  validates :password, length: { minimum: 8 }, allow_blank: true

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
end
