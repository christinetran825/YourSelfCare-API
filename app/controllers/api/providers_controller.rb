class Api::ProvidersController < ApplicationController

  # before_action :authenticate_user
  before_action :set_provider, only: [:show, :update, :destroy]

  def index
    # @providers = current_user.providers
    # render json: @providers
    @providers = Provider.all
    render json: @providers
  end

  def create
    # @provider = current_user.providers.build(provider_params)
    # if @provider && @provider.save
    #   render json: @provider
    # else
    #   render json: { message: @provider.errors }, status: 400
    # end
    @provider = Provider.new(provider_params)
    if @provider.save
      render json: @provider
    else
      render json: { message: @provider.errors }, status: 400
    end
  end

  def show
    render json: @provider
  end

  def update
    if @provider.update(provider_params)
      render json: @provider
    else
      render json: { message: @provider.errors }, status: 400
    end
  end

  def destroy
    if @provider.destroy
      render json: { message: "Successfully removed item." }, status: 204
    else
      render json: { message: "Unable to remove item" }, status: 400
    end
  end

  private

    def set_provider
      @provider = Provider.find(id: params[:id])
    end

    def provider_params
      params.require(:provider).permit(:name, :address, :phone, :first_visit, :notes, department_ids:[], :departments_attributes => [:id, :name, :_destroy])
    end

end
