class NoodlesController < ApplicationController


  def index
    @noodles = Noodle.all
  end

  def new
    @noodle = Noodle.new
  end

  def create
    @noodle = Noodle.create(noodle_params)
    if @noodle.save
      redirect_to new_noodle_address_path(@noodle.id)
    else
      render :new
    end
  end


  def noodle_params
    params.require(:noodle).permit(:image, :store_name, :description, :menu, :genre, :star_id, :prefecture_id, :price, :eat_date).merge(user_id: current_user.id)
  end

end
