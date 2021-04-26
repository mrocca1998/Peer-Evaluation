class Grade < ApplicationRecord
  belongs_to :student
  belongs_to :project
  validates :projectGrade, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end
