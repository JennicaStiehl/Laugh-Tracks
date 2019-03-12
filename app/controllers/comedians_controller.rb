class ComediansController < ApplicationController
  def index
    @comedians = Comedian.all
    @avg_age = Comedian.avg_age
    @avg_length = Special.avg_length
    @city_list = Comedian.city_list
  end
end
