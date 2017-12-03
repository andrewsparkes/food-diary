class SymptomTypesController < ApplicationController
  before_action :set_symptom_type, only: [:show, :edit, :update, :destroy]

  # GET /symptom_types
  def index
    @symptom_types = SymptomType.all
  end

  # GET /symptom_types/1
  def show
  end

  # GET /symptom_types/new
  def new
    @symptom_type = SymptomType.new
  end

  # GET /symptom_types/1/edit
  def edit
  end

  # POST /symptom_types
  def create
    @symptom_type = SymptomType.new(symptom_type_params)

    if @symptom_type.save
      redirect_to @symptom_type, notice: 'Symptom type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /symptom_types/1
  def update
    if @symptom_type.update(symptom_type_params)
      redirect_to @symptom_type, notice: 'Symptom type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /symptom_types/1
  def destroy
    @symptom_type.destroy
    redirect_to symptom_types_url, notice: 'Symptom type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_symptom_type
      @symptom_type = SymptomType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def symptom_type_params
      params.require(:symptom_type).permit(:name, :start_time, :end_time, :description)
    end
end
