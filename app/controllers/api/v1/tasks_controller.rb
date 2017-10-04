class Api::V1::TasksController < ApplicationController
before_action :set_task

  def show
  end

  def create
    @task = Task.create(task_params)
    if @task.save
      redirect_to student_path(current_user.rolable_id)
    else
      redirect_to student_path(current_user.rolable_id)
    end
  end

  def update
    if @task.update(status: "finished", finished_at: Time.zone.now)
      redirect_to student_path(current_user.rolable_id)
    else  
      redirect_to student_path(current_user.rolable_id)
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
