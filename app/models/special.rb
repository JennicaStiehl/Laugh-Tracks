class Special < ApplicationRecord
  belongs_to :comedian
  validates_numericality_of :length
  validates_presence_of :name
  validates_presence_of :length

  def self.avg_length
    average(:length)
  end



  private
  def special_params
    require.(:specials).permit(:length, :name)
  end
end
