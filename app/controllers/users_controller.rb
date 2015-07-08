class UsersController < ApplicationController

  def index
  	@users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def show
  	@user = User.find_by(id: params[:id])
  	@gweet = Gweet.new
  	@gweets = @user.gweets
  end


private

  def user_params
    params.require(:user).permit(
    :username,
    :email,
    :avatar_url,
    :password,
    :password_confirmation
    )
  end

end
