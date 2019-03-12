class Comedian < ApplicationRecord
  has_many :specials
  validates_presence_of :name
  validates_presence_of :age
  validates_presence_of :city
  validates_numericality_of :age

  def self.avg_age
    average(:age)
  end

  def self.city_list
    distinct.pluck(:city)
  end
  #
  # def self.comedian_list(comedian_params)
  #   Comedian.where(comedian_params)
  # end 


end
