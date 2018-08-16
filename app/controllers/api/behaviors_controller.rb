class Api::BehaviorsController < ApplicationController

  before_action :authenticate_user
  before_action :set_behavior, only: [:show, :update]

  def index
    render json: Behavior.all
  end

  def show
    render json: @behavior
  end

  def update
    if @behavior.update(behavior_params)
      render json: @behavior
    else
      render json: { message: @behavior.errors }, status: 400
    end
  end

  private

    def set_behavior
      @behavior = Behavior.find_by(id: params[:id])
    end

    def behavior_params
      params.require(:behavior).permit(:name, :details, condition_ids:[], :conditions_attributes => [:id, :name, :_destroy])
    end

end
