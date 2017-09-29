require "rails_helper"

describe Teacher do
  context "validators" do
    it {validate_presence_of :professional_id}
  end

  it { is_expected.to accept_nested_attributes_for(:user) }

  let(:user) { FactoryGirl.build(:user,
                                  first_name: "Teacher",
                                  last_name: "Professor", 
                                  email: 'user@example.com',
                                  rolable: Teacher.new
                                  )
              }

  it "Creates a teacher " do
    teacher = create(:teacher, :with_user, user: user)
    is_expected.to be_a_new(Teacher)
    expect(teacher.user).to be_a(User)
  end

  it "return the name" do
    teacher = create(:teacher, :with_user, user: user)
    expect(teacher.user.name).to eq("Teacher Professor")
  end
end