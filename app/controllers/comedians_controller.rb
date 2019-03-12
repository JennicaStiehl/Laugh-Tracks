class ComediansController < ApplicationController
  def index
    if query_params
      @comedians = Comedian.where(query_params)
    else
      @comedians = Comedian.all
    end
    @avg_age = @comedians.avg_age
    @specials = Special.where(query_params[:id])
    @avg_length = @specials.avg_length
    @city_list = @comedians.city_list
  end

  def new
    @comedian = Comedian.new
  end

  def create
    @comedian = Comedian.create(comedian_params)
    if @comedian.save
      flash[:success] = "Success!"
      redirect_to comedians_path
    else
      redirect_to new_comedian_path
    end
  end

  private
  def query_params
    params.permit(:name, :age, :city)
  end

  def comedian_params
    params.require(:comedian).permit(:name, :age, :city)
  end
end
