class Api::InsurancesController < ApplicationController

  before_action :authenticate_user
  before_action :set_insurance, only: [:show, :update, :destroy]

  def index
    @insurances = current_user.insurances
    render json: @insurances
    # @insurances = Insurance.all
    # render json: @insurances
  end

  def create
    @insurance = current_user.insurances.build(insurance_params)
    if @insurance && @insurance.save
      render json: @insurance
    else
      render json: { message: @insurance.errors }, status: 400
    end
    # @insurance = Insurance.new(insurance_params)
    # if @insurance.save
    #   render json: @insurance
    # else
    #   render json: { message: @insurance.errors }, status: 400
    # end
  end

  def show
    render json: @insurance
  end

  def update
    if @insurance.update(insurance_params)
      render json: @insurance
    else
      render json: { message: @insurance.errors }, status: 400
    end
  end

  def destroy
    if @insurance.destroy
      render json: { message: "Successfully removed item." }, status: 204
    else
      render json: { message: "Unable to remove item" }, status: 400
    end
  end

  private

    def set_insurance
      @insurance = Insurance.find_by(id: params[:id])
    end

    def insurance_params
      params.require(:insurance).permit(:name, :address, :phone, :notes)
    end

end
