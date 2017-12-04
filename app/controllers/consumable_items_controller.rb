# frozen_string_literal: true

# Documentation: Controller for Consumable items.
class ConsumableItemsController < ApplicationController
  before_action :set_consumable_item, only: %i[show edit update destroy]

  # GET /consumable_items
  def index
    @consumable_items = ConsumableItem.all
  end

  # GET /consumable_items/1
  def show; end

  # GET /consumable_items/new
  def new
    @consumable_item = ConsumableItem.new
  end

  # GET /consumable_items/1/edit
  def edit; end

  # POST /consumable_items
  def create
    @consumable_item = ConsumableItem.new(consumable_item_params)

    # show the form back to the user if it wasn't valid
    if @consumable_item.save
      redirect_to @consumable_item, notice: \
      'Consumable item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /consumable_items/1
  def update
    # show the form back to the user if the updates aren't valid
    if @consumable_item.update(consumable_item_params)
      redirect_to @consumable_item, notice: \
      'Consumable item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /consumable_items/1
  def destroy
    # TODO: validate that their are no linked records before deleting
    @consumable_item.destroy
    redirect_to consumable_items_url, notice: \
    'Consumable item was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_consumable_item
    @consumable_item = ConsumableItem.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def consumable_item_params
    params.require(:consumable_item).permit(:name,
                                            :consumable_item_type_id,
                                            :approx_calories,
                                            :notes)
  end
end
