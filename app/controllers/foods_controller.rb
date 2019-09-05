class FoodsController < ApplicationController

  before_action :food_id, only:[:show, :edit, :update]


  def index
    @foods = Food.all
    @foods = Food.paginate(page:params[:page], per_page:6)
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

  def update
    if @food.update(food_params)
      flash[:success] = "The content was successfully updated"
      redirect_to root_path
    end
  end

  def destroy
    @food =  current_user.foods.find(params[:id])
    @food.destroy
    redirect_to root_path

  end

  private

  def food_params
    params.require(:food).permit(:title, :category, :description)
  end

  def food_id
    @food = Food.find(params[:id])
  end



end