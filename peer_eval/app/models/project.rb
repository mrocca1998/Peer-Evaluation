class Project < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :groups, through: :assignments
  has_many :reviews
  validates :title, presence: true, uniqueness: true

  validates :due, presence: true
  validate :due_date_must_be_in_the_future

  def due_date_must_be_in_the_future
  	if due.present? && due < Date.today
      errors.add(:due, "must be in the future")
    end
  end
end
