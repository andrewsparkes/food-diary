# frozen_string_literal: true

# Documentation: Controller for Consumable item types.
class ConsumableItemTypesController < ApplicationController
  before_action :set_consumable_item_type, only: %i[show edit update destroy]

  # GET /consumable_item_types
  def index
    @consumable_item_types = ConsumableItemType.all
  end

  # GET /consumable_item_types/1
  def show; end

  # GET /consumable_item_types/new
  def new
    @consumable_item_type = ConsumableItemType.new
  end

  # GET /consumable_item_types/1/edit
  def edit; end

  # POST /consumable_item_types
  def create
    @consumable_item_type = ConsumableItemType.new(consumable_item_type_params)

    # show the form back to the user if it wasn't valid
    if @consumable_item_type.save
      redirect_to @consumable_item_type, notice: \
      'Consumable item type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /consumable_item_types/1
  def update
    # show the form back to the user if the updates aren't valid
    if @consumable_item_type.update(consumable_item_type_params)
      redirect_to @consumable_item_type, notice: \
      'Consumable item type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /consumable_item_types/1
  def destroy
    # TODO: validate that their are no linked records before deleting
    @consumable_item_type.destroy
    redirect_to consumable_item_types_url, notice: \
    'Consumable item type was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_consumable_item_type
    @consumable_item_type = ConsumableItemType.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def consumable_item_type_params
    params.require(:consumable_item_type).permit(:name, :description)
  end
end
