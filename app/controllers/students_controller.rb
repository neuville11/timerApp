class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
    @tasks = @student.user.task.page params[:page]
    @task = Task.new
  end

  def create
    @user = User.create(student_params)
    if @user.save
      redirect_to :index
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to student_path(current_user.rolable_id)
    else
      redirect_to student_path(current_user.rolable_id)
    end
  end

private
   def student_params
    params.require(:student).permit(
      :account_number,
      :blood_type,
      user_attributes: [
        :id,
        :first_name,
        :last_name,
        :email.downcase
      ]
    )
  end
end
