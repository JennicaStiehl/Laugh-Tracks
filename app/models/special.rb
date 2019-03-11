class Special < ApplicationRecord
  belongs_to :comedian
  validates_numericality_of :length
  validates_presence_of :name
  validates_presence_of :length
end
