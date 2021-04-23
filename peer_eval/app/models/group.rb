class Group < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :students, through: :memberships
  has_many :assignments, dependent: :destroy
  has_many :projects, through: :assignments
  has_many :reviews
  validates :name, presence: true, uniqueness: true
end
