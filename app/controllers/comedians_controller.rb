class ComediansController < ApplicationController
  def index
    if query_params[:age]
      @comedians = Comedian.where(query_params)
    elsif query_params[:sort]
      @comedians = Comedian.order(query_params[:sort])
    else
      @comedians = Comedian.all
    end
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

  def show
    @comedian = Comedian.find_by_id(params[:id])
  end

  private
  def query_params
    params.permit(:age, :sort)
  end

  def comedian_params
    params.require(:comedian).permit(:name, :age, :city)
  end
end
