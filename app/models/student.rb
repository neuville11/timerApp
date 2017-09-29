class Student < ApplicationRecord
  has_one :user, as: :rolable, dependent: :destroy, required: true
  validates :account_number, presence: true
  accepts_nested_attributes_for :user
end
