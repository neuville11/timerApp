class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :rolable, polymorphic: true
  validates :first_name, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, with: Devise.email_regexp

  def name
    self.first_name + ' ' + self.last_name
  end
end
