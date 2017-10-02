class Api::V1::TasksController < ApplicationController
before_action :set_task

  def show
  end

  def create
    @task = Task.create(task_params)
    if @task.save
      current_user.rolable_type == "Student" ? redirect_to student_path :
      redirect_to teacher_path
    else
      redirect_back
    end
  end

  private

  def set_task
     @task = Task.find(params[:id]) if params[:id]
  end

  def task_params
    params.require(:task).permit(
      :name,
      :user_id
    )
  end
end
