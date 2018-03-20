class Disciple < ApplicationRecord
  belongs_to :person
  has_many :evaluations
  validates :first_name, :last_name, :person_id, presence: true
  validates :person_id, numericality: { only_integer: true }
end
