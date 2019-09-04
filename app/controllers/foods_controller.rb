class FoodsController < ApplicationController


  def index
    @foods = Food.all
  end

  def new
      @food = Food.new
  end

  def create
      @food = Food.create(food_params)
      @food.user_id = current_user.id
      if @food.save
        flash[:success] = "the food was successful saved"
        redirect_to root_path
      else
        render :new
      end
  end
  def show

  end

  def destroy

  end

  private

  def food_params
    params.require(:food).permit(:title, :category, :description)
  end


end