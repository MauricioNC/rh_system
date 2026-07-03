class EmploymentsController < ApplicationController
  def show
    @employment = Employment.find(params[:id])
  end
  
  def new
    # @employee = set_employee
    @employment = Employment.new
  end

  def create
    employee = Employee.find_by(name: params[:employment][:name])
    
    @employment = employee.employments.new(employment_params)

    @employment.position_id               = Position.find_by(position_desc: params[:employment][:position_desc]).id
    @employment.responsibility_center_id  = AdscriptionUnity.find_by(adsc_key: params[:employment][:resp_center_code]).responsibility_center_id
    
    if @employment.save
      puts "Employment saved successfully"
      redirect_to @employment
    else
      pp @employment.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_employee
    Employee.find(params[:employee_id])
  end

  def employment_params
    params.require(:employment).permit(:start_date, :end_date, :employee_type_id, :position_id, :responsibility_center_id, :contract_type_id)
  end
end
