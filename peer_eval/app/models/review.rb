class Review < ApplicationRecord
  belongs_to :group
  belongs_to :project
  belongs_to :student

  has_many :scores, dependent: :delete_all
  accepts_nested_attributes_for :scores
end
