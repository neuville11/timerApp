class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
    @tasks = @student.user.task
    @task = Task.new
  end

  def create
    @user = User.create(resource_params)
    if @user.save
      redirect_to :index
    else
      render :new
    end
  end


private
   def resource_params
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
