class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @noodles = @user.noodles
  end

end
