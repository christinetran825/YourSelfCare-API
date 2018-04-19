class Api::DepartmentsController < ApplicationController

  # before_action :authenticate_user
  before_action :set_department, only: [:show, :update, :destroy]
  before_action :find_the_provider

  def index
    # @departments = current_user.provider.departments
    # render json: @department
    # @departments = Department.all
    @departments = @provider.departments
    render json: @departments
  end

  def create
    # @department = current_user.provider.departments.build(department_params)
    # if @department && @department.save
    #   render json: @department
    # else
    #   render json: { message: @department.errors }, status: 400
    # end
    # @department = Department.new(department_params)
    @department = @provider.departments.new(department_params)
    if @department.save
      render json: @department
    else
      render json: { message: @department.errors }, status: 400
    end
  end

  def show
    render json: @department
  end


  def update
    if @department.update(department_params)
      render json: @department
    else
      render json: { message: @department.errors }, status: 400
    end
  end

  def destroy
    if @department.destroy
      render json: { message: "Successfully removed item." }, status: 204
    else
      render json: { message: "Unable to remove item" }, status: 400
    end
  end

  private

    def find_the_provider
      @provider = Provider.find(params[:provider_id])
    end

    def set_department
      @department = Department.find_by(id: params[:id])
    end

    def department_params
      params.require(:department).permit(:name)
    end


end
