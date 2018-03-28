class Api::MedicationController < ApplicationController

  before_action :set_medication, only: [:show, :update, :destroy]

  def index
    render json: Medication.all
  end

  def create
    medication = Medication.new(medication_params)
    if medication.save
      render json: medication
    else
      render json: { message: medication.errors }, status: 400
    end
  end

  def show
    render json: @medication
  end

  def update
    if @medication.update(medication_params)
      render json: @medication
    else
      render json: { message: @medication.errors }, status: 400
    end
  end

  def destroy
    if @medication.destroy
      render json: { message: "Successfully removed item." }, status: 204
    else
      render json: { message: "Unable to remove item" }, status: 400
    end
  end

  private

    def set_medication
      @medication = Medication.find_by(id: params[:id])
    end

    def medication_params
      params.require(:medication).permit(:name, :dose, :prescribed, :first_dose, :notes)
    end

end
