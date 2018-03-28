class Api::ProviderController < ApplicationController

  before_action :set_provider, only: [:show, :update, :destroy]

  def index
    render json: Provider.all
  end

  def create
    provider = Provider.new(provider_params)
    if provider.save
      render json: provider
    else
      render json: { message: provider.errors }, status: 400
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
      @provider = Provider.find_by(id: params[:id])
    end

    def provider_params
      params.require(:provider).permit(:name, :address, :phone, :first_visit, :notes, :provider_type)
    end

end
