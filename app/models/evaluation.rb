class Evaluation < ApplicationRecord
  belongs_to :disciple
  has_many :evaluation_responses
end
