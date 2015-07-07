class GweetsController < ApplicationController

  def index
    @gweets = Gweet.all
  end

  def new
  end

  def create
  	@user = User.find_by(id: params[:id])

  	@gweet = @user.gweets.create(gweet_params)

  	if @gweet
  	  redirect_to user_show_path(@user)
  	end
  end

private

  def gweet_params
    params.require(:gweet).permit(
      :content
    	)
  end

end