class EmployeesController < ApplicationController
  def new
    @division = Division.find(params[:division_id])
    @employee = @division.employees.new
    render :new
  end

def create
    @division = Division.find(params[:division_id])
    @employee = @division.employees.new(employee_params)
    if @employee.save
      redirect_to division_path(@division)
    else
      render :new
    end
  end

  def show
    @employee = Employee.find(params[:id])
    @division = Division.find(@employee.division_id)
    @projects = []
    Project.all.each do |project|
    @projects.push(project.proj_name)

    end


    render :show
  end

  def edit
    @division = Division.find(params[:division_id])
    @employee = Employee.find(params[:id])
    render :edit
  end

  def update
  @employee = Employee.find(params[:id])
  if @employee.update(employee_params)
    redirect_to division_path(@employee.division)
  else
    render :edit
  end
end

def destroy
  @employee = Employee.find(params[:id])
  @employee.destroy
  redirect_to division_path(@employee.division)
end

def add
  @employee = Employee.find(params[:id])
  project = Project.where(proj_name: params[:project].fetch("project")).first
  @employee.projects << project
  flash[:notice] = "Project added"
  redirect_to employee_path
end

  private
    def employee_params
      params.require(:employee).permit(:name)
    end
end
