class WelcomeController < ApplicationController
  def index
    @user = User.new
    @student = StudentFactory.build
    @teacher = TeacherFactory.build
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
