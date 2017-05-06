class ShipsController < ApplicationController

  def index
    @ships = Ship.all
  end

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
  def edit

  end
def update

end
  def destroy

  end

  private
   def params_ship
     params.require(:ship).permit(:name, :location, :containers, :avatar)
   end
end
