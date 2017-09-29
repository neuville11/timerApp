class Teacher < ApplicationRecord
  has_one :user, as: :rolable, dependent: :destroy, required: true
  validates :professional_id, presence: true
  accepts_nested_attributes_for :user
end
