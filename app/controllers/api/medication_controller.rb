class Api::MedicationController < ApplicationController

  skip_before_action :authenticate_user, only: [:create], raise: false
  before_action :set_medication, only: [:show, :update, :destroy]

  def index
    @medications = current_user.medications
    render json: @medications
  end

  def create
    @medication = current_user.medications.build(medication_params)
    if @medication && @medication.save
      render json: @medication
    else
      render json: { message: @medication.errors }, status: 400
    end
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
      @medication = Medication.find(id: params[:id])
    end

    def medication_params
      params.require(:medication).permit(:name, :dose, :prescribed, :first_dose, :notes)
    end

end
