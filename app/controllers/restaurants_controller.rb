class RestaurantsController < ApplicationController

  def index
    # list all restaurants
    @restaurants = Restaurant.all
  end

  def show
    # list one restaurant
    @restaurant = Restaurant.find(params[:id])

    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_restaurant)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new
    end
  end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # def update
  #   @restaurant.update
  # end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :category)
  end

end
