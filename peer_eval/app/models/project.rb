class Project < ApplicationRecord
  has_many :assignments
  has_many :groups, through: :assignments
  has_many :reviews
  validates :title, presence: true, uniqueness: true
end
