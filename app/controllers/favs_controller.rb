class FavsController < ApplicationController

  before_action only:[:destroy]

  def index
    # @favorites = Favorite.all
    @favorites = current_user.favorites

  end

  def new
    # @food = Food.find(params[:food_id])
    # @fav = current_user.foods.new
  end

  def create
    render json: params
    # @food = Food.find(params[:id])
    # @fav = current_user.foods.build(params[:food_id])
    # if @fav.save
    #   flash[:success] = "Add to new Favorite food"
    #   redirect_to root_path
    # end
    #
    #
  end
  def destroy
    @favorite = current_user.favorites.find(params[:id])
    if @favorite.destroy
      flash[:success] = "You have successfully deleted a favorite"
      redirect_to favs_path
    end
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

    def favorite_id
      @favorite = Favorite.find(params[:id])
    end

end