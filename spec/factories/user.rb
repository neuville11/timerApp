FactoryGirl.define do
  factory :user do
    first_name "John"
    last_name  "Doe"
    email "ulises.garcia.urzua+user@gmail.com"
    password "123456"
    password_confirmation "123456"
    rolable User.new
  end
end