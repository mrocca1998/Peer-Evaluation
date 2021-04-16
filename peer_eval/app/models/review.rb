class Review < ApplicationRecord
  belongs_to :group
  belongs_to :project
  belongs_to :student

  has_many :scores
end
