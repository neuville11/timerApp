require "spec_helper"
require "rails_helper"

describe User do
  context "Create an User" do

    describe "validations" do
      it { is_expected.to validate_presence_of :first_name}
    end

    context "When rolable type is a teacher" do
      it "creates an User with type teacher" do
        user = User.create( first_name: "Joe",
                            last_name: "Doe",
                            email: "mail@mail.com"
                          )
      end
    end
    
  end
end