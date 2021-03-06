class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all

    render json: @employees
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
    render json: @employee
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render json: @employee, status: :created, location: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      head :no_content
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy

    head :no_content
  end

  private

    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:name, :gender, :dateofbirth, :passportno, :passportissue, :passportexpiry)
    end
end
