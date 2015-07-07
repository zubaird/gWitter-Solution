class UsersController < ApplicationController

  def index
  	@users = User.all
  end

  def show
  	@user = User.find_by(id: params[:id])
  	@gweet = Gweet.new
  	@gweets = @user.gweets
  end

end