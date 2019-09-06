class FavsController < ApplicationController

  def index

  end

  def new
    @food = Food.find(params[:food_id])
    @fav = current_user.foods.new
  end

  def create
    render json: params
    # @food = Food.find(params[:id])
    # @fav = current_user.foods.build(params[:food_id])
    # if @fav.save
    #   flash[:success] = "Add to new Favorite food"
    #   redirect_to root_path
    # end
  end

  def add_favorites
    @food = Food.find(params[:id])
    @fav = Favorite.new(user: current_user, food_id: params[:id])
    if @fav.save
      flash[:success] = "Add to new Favorite food"
      redirect_to root_path
    end
  end

  private

  def get_id
  end


end