class AddressesController < ApplicationController

  before_action :set_address, only: [:edit, :update]


  def index
    @address = Address.all
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.create(address_params)
    if @address.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @noodles = Noodle.find(params[:id])
  end

  def update
    if address = Address.update(address_params)
      redirect_to noodle_path
    else
      render :edit
    end
  end

  private

  def address_params
    params.require(:address).permit(:prefecture_id, :post_code, :prefecture_id, :city, :home_number, :building_name, :phone_number).merge(noodle_id: params[:noodle_id])
  end

  def set_address
    @address = Address.find(params[:id])
  end

end
