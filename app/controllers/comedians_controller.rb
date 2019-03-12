class ComediansController < ApplicationController
  def index
    @comedians = Comedian.all
    @avg_age = Comedian.avg_age
  end
end
