class AddressesController < ApplicationController

  def index
  end

  def new
    @address = Address.new
  end

  def create
    @noodle = Noodle.find(params[:noodle_id])
    @address = Address.create(address_params)
    if @address.save
      redirect_to root_path
    else
      render :new
    end
  end

  def address_params
    #@noodle = Noodle.find(params[:noodle_id])
    params.require(:address).permit(:prefecture_id, :post_code, :prefecture_id, :city, :home_number, :building_name, :phone_number).merge(noodle_id: @noodle.id)
  end

end
