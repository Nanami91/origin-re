class NoodlesController < ApplicationController

  before_action :set_noodle, only: [:show, :edit, :update, :destroy]

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

  def show
  end

  def edit
  end

  def update
    #@noodle = Noodle.update(noodle_params)
    if @noodle = Noodle.update(noodle_params)
      redirect_to noodle_path
    else
      render :edit
    end
  end

  def destroy
    #@addresses = Address.find(params[:id])
    @noodle.destroy
    redirect_to root_path
  end

  private

  def noodle_params
    params.require(:noodle).permit(:image, :store_name, :description, :menu, :genre, :star_id, :prefecture_id, :price, :eat_date).merge(user_id: current_user.id)
  end

  def set_noodle
    @noodle = Noodle.find(params[:id])
  end


end
