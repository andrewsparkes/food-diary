class SymptomsController < ApplicationController
  before_action :set_symptom, only: [:show, :edit, :update, :destroy]

  # GET /symptoms
  def index
    @symptoms = Symptom.all
  end

  # GET /symptoms/1
  def show
  end

  # GET /symptoms/new
  def new
    @symptom = Symptom.new
  end

  # GET /symptoms/1/edit
  def edit
  end

  # POST /symptoms
  def create
    @symptom = Symptom.new(symptom_params)

    # show the form back to the user if it wasn't valid
    if @symptom.save
      redirect_to @symptom, notice: 'Symptom was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /symptoms/1
  def update
    # show the form back to the user if the updates aren't valid
    if @symptom.update(symptom_params)
      redirect_to @symptom, notice: 'Symptom was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /symptoms/1
  def destroy
    @symptom.destroy
    redirect_to symptoms_url, notice: 'Symptom was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_symptom
      @symptom = Symptom.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def symptom_params
      params.require(:symptom).permit(:name, :start_time, :end_time, :description, :symptom_type_id)
    end
end
