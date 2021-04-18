class Group < ApplicationRecord
  has_many :memberships
  has_many :students, through: :memberships
  has_many :assignments
  has_many :projects, through: :assignments
  has_many :reviews
  validates :name, presence: true, uniqueness: true
end
