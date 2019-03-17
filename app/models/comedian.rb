class Comedian < ApplicationRecord

  has_many :specials
  has_many :favorites
  has_many :users, through: :favorites

  validates :name, presence: true, uniqueness: true
  validates_presence_of :age
  validates_presence_of :city
  validates_numericality_of :age

  def self.avg_age
    average(:age).round(1)
  end

  def self.city_list
    select(distinct: :city).order(:city).pluck(:city)
  end

  def self.sort_by(attribute)
    order(attribute)
  end

  def self.specials_avg_length
    joins(:specials).average(:length).round(1)
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
