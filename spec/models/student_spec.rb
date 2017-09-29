require "rails_helper"

describe Student do
  context "Student has an User" do
    it { is_expected.to have_one(:user) }
  end

  it { is_expected.to accept_nested_attributes_for(:user) }
  
  let(:user) { FactoryGirl.build(:user,
                                  first_name: "Student",
                                  last_name: "Studying", 
                                  email: 'student@example.com',
                                  rolable: Student.new
                                  )
              }


  context "When creates a Student creates an User too" do
    it "creates a Student" do
      student = create(:student, :student_with_user, user: user)
      is_expected.to be_a_new(Student)
      expect(student.user).to be_a(User)
      expect(Student.count).to eq 1
    end
  end
end