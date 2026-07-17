class EmploymentsController < ApplicationController
  def show
    @employment = Employment.find(params[:id])
  end

  def new
    @employment = Employment.new
  end

  def create
    employee = Employee.find_by(rfc: params[:employment][:rfc])

    @employment = employee.employments.new(employment_params)

    @employment.position_id               = Position.find_by(position_code: params[:employment][:position_code]).id
    @employment.responsibility_center_id  = AdscriptionUnity.find_by(adsc_key: params[:employment][:resp_center_code]).responsibility_center_id
    @employment.status = "Activo" # Move this to a background job afet employment's saved

    if @employment.save
      position_salary = PositionSalary.where(position_id: @employment.position_id).first # Move this to a background job later
      PositionDetail.create!(employee_id: employee.id, position_salary_id: position_salary.id)

      redirect_to @employment
    else
      pp @employment.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  private

  def employment_params
    params.require(:employment).permit(:start_date, :end_date, :employee_type_id, :position_id, :responsibility_center_id, :contract_type_id, :budget_key, :status)
  end
end
