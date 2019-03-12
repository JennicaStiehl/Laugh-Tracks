class ComediansController < ApplicationController
  def index
    @comedians = Comedian.where(comedian_params)
    @avg_age = Comedian.avg_age
    @avg_length = Special.avg_length
    @city_list = Comedian.city_list
    # @query_params = Comedian.fetch_comedians(params)
  end

  private
  def comedian_params
    params.permit(:name, :age, :city)
  end
end
