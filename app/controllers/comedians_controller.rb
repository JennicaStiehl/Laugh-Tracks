class ComediansController < ApplicationController
  def index
    @comedians = Comedian.where(comedian_params)
    @avg_age = @comedians.avg_age
    @specials = Special.where(comedian_params[:id])
    @avg_length = @specials.avg_length
    @city_list = @comedians.city_list
  end

  private
  def comedian_params
    params.permit(:name, :age, :city)
  end
end
