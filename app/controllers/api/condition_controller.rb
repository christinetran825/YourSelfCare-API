class Api::TypeOfController < ApplicationController

  before_action :set_type_of, only: [:show, :update, :destroy]

  def index
    render json: TypeOf.all
  end

  def create
    type_of = TypeOf.new(type_of_params)
    if type_of.save
      render json: type_of
    else
      render json: { message: type_of.errors }, status: 400
    end
  end

  def show
    render json: @type_of
  end

  def update
    if @type_of.update(type_of_params)
      render json: @type_of
    else
      render json: { message: @type_of.errors }, status: 400
    end
  end

  def destroy
    if @type_of.destroy
      render json: { message: "Successfully removed item." }, status: 204
    else
      render json: { message: "Unable to remove item" }, status: 400
    end
  end

  private

    def set_type_of
      @type_of = TypeOf.find_by(id: params[:id])
    end

    def type_of_params
      params.require(:type_of).permit(:name)
    end

end
