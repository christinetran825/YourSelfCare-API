class Api::DepartmentController< ApplicationController

  before_action :set_department, only: [:show, :update, :destroy]

  def index
    render json: Department.all
  end

  def create
    @department = Department.new(department_params)
    if @department && @department.save
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

    def set_department
      @department = Department.find_by(id: params[:id])
    end

    def department_params
      params.require(:department).permit(:name)
    end


end
