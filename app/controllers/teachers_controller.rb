class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all   
  end

  def show
    @teacher = Teacher.find(params[:id])
    @tasks = @teacher.task
    @task = Task.new
  end

  def create
    @teacher = Teacher.create(teacher_params)
    if @teacher.save
      reditect_to teachers_path
    else
      reditect_to teachers_path
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(
        :professional_id,
        :gender,
        user_attributes: [
        :id,
        :first_name,
        :last_name,
        :email.downcase
      ]
    )
  end
end
