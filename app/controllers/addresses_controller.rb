class AddressesController < ApplicationController

  def index
    @address = Address.all
  end

  def new
    @address = Address.new
  end

  def create
    #@noodles = Noodle.find(@noodles.id)
    @address = Address.create(address_params)
    if @address.save
      redirect_to root_path
    else
      render :new
    end
  end


  def address_params
    #@noodle = Noodle.find(params[:noodle_id])
    params.require(:address).permit(:prefecture_id, :post_code, :prefecture_id, :city, :home_number, :building_name, :phone_number).merge(noodle_id: params[:noodle_id])
  end

end
