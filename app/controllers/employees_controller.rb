class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to @employee, notice: "Empleado creado exitosamente."
    else
      render :new
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :father_last_name, :mother_last_name, :curp, :rfc, :gender, :marital_status, :nationality, :birth_date, :address)
  end
end
