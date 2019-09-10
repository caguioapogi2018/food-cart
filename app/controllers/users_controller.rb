class UsersController < ApplicationController
    before_action :user_id, only:[:destroy,:update]

  def index

    @admins = User.where admin:[:admin]
    @users = User.where admin:nil?

  end
  def create

  end

    def update
      if @user.toggle!(:admin)
        flash[:success] = "UPDATED"
        redirect_to users_path
      end
    end

  def destroy
    @user = user_id
    if @user.destroy
    flash[:success] = "This user was successfully deleted"
    redirect_to users_path
    else
      redirect_to users_path
    end
  end
  private

  def user_id
    @user = User.find(params[:id])
  end



end