class ShipsController < ApplicationController
  def new
    @ship = Ship.new
  end

  def create
    @ship = Ship.create(params_ship)

    if @ship.save
      redirect_to ship_path(@ship)
    else
      render 'new'
    end
  end

  def show
    @ship = Ship.find(params[:id])
  end

  def destroy

  end

  private
   def params_ship
     params.require(:ship).permit(:name, :location, :containers, :avatar)
   end
end
