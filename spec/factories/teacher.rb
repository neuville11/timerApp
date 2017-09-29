FactoryGirl.define do
  factory :teacher do
    professional_id "123421341"
    gender "Male"
    association :user
  end

  trait :with_user do
    professional_id "123421341"
    gender "Male"
    association :user, email: 'teacher@example.com'
  end
end