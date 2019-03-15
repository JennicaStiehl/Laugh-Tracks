class Comedian < ApplicationRecord

  has_many :specials
  has_many :favorites
  has_many :users, through: :favorites

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

  def self.sort_by(attribute)
    order(attribute)
  end

  def self.specials_avg_length
    joins(:specials).average(:length)
  end

  def self.specials_count
    joins(:specials).count(:length)
  end

  def specials_count
    specials.count
  end

  def self.comedian_count
    count
  end

end
