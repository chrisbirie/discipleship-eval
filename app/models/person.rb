class Person < ApplicationRecord
  has_many :disciples
  validates_associated :disciples
  validates :first_name, :last_name, presence: true
end
