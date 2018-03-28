class Api::ProviderController < ApplicationController

  before_action :set_provider, only: [:show, :update, :destroy]

  def index
    @providers = @user.providers
    render json: @providers
  end

  def create
    @provider = @user.providers.build(provider_params)
    if @provider && @provider.save
      render json: @provider
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
      params.require(:provider).permit(:name, :address, :phone, :first_visit, :notes, provider_types_id:[], :provider_types_attributes => [:id, :name, :_destroy])
    end

end
