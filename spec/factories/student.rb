FactoryGirl.define do
  factory :student do
    account_number "123456"
    blood_type "O+"
    association :user
  end

  trait :student_with_user do
    account_number "123456"
    blood_type "O+"
    association :user, email: 'student@example.com'
  end
end