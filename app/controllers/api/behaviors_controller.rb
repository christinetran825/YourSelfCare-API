class Api::BehaviorsController < ApplicationController

  before_action :set_behavior, only: [:show]

  def index
    render json: Behavior.all
  end

  def show
    render json: @behavior
  end

  private

    def set_behavior
      @behavior = Behavior.find_by(id: params[:id])
    end

    def behavior_params
      params.require(:behavior).permit(:name, :details, condition_ids:[], :conditions_attributes => [:id, :name, :_destroy])
    end

end
