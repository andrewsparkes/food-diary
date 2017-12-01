class ConsumableItemsController < ApplicationController
  
  def index
    @consumable_items = ConsumableItem.all
  end

  def show
    @consumable_item = ConsumableItem.find(params[:id])
  end

  def new
    @consumable_item = ConsumableItem.new
  end
 
  def create
    @consumable_item = ConsumableItem.new(consumable_item_params)

    if @consumable_item.save
      redirect_to @consumable_item
    else
      render 'new'
    end
  end

  private
    def consumable_item_params
      params.require(:consumable_item).permit(:name, :approx_calories, :notes)
    end
end
