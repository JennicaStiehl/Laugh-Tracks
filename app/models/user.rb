class User < ApplicationRecord
  has_many :favorites
  has_many :comedians, through: :favorites

  validates :username, uniqueness: true, presence: true
  validates_presence_of :password, require: true

  has_secure_password

  enum role: [:visitor, :registered_user, :admin]

  def set_active_flag
    if self.active == true
      self.active = false
    else
      self.active = true
    end
  end
end
