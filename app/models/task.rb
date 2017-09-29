class Task < ApplicationRecord
  has_one :user
  validates :name, :user_id, presence: true
end
