class Score < ApplicationRecord
  belongs_to :author, class_name: 'Student'
  belongs_to :recipient, class_name: 'Student'
  belongs_to :review, optional: true

  validates :rating, presence: true
end
