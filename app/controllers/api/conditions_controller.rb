class Api::ConditionsController < ApplicationController

  # before_action :authenticate_user
  before_action :set_condition, only: [:show, :update, :destroy]

  def index
    render json: Condition.all
  end

  def create
    condition = Condition.new(condition_params)
    if condition.save
      render json: condition
    else
      render json: { message: condition.errors }, status: 400
    end
  end

  def show
    render json: @condition
  end

  def update
    if @condition.update(condition_params)
      render json: @condition
    else
      render json: { message: @condition.errors }, status: 400
    end
  end

  def destroy
    if @condition.destroy
      render json: { message: "Successfully removed item." }, status: 204
    else
      render json: { message: "Unable to remove item" }, status: 400
    end
  end

  private

    def set_condition
      @condition = Condition.find_by(id: params[:id])
    end

    def condition_params
      params.require(:condition).permit(:name)
    end

end
