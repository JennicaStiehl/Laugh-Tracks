class User < ApplicationRecord
  has_many :favorites
  has_many :comedians, through: :favorites
  has_secure_password
end
