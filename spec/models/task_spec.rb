require 'rails_helper'

describe Task do

  context "Validators" do
    it { validate_presence_of :name }
    it { validate_presence_of :user_id }
  end

  context "Validates relationships" do
    it { have_one :user }
  end

  let (:task) {FactoryGirl.build(:task)}
  let (:user) {FactoryGirl.build(:user)}
  it "verify task has user id" do
    expect(task.user_id).to eq 1
  end
1
  it "creates a task" do
    my_task = Task.create(id: 1, name: "Tarea 1", user_id: user.id)
    expect(my_task).to be_a(Task)
    expect(Task.count).to eq 1
  end

end
