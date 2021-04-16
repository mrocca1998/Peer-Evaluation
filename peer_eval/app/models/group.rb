class Group < ApplicationRecord
  has_many :students, through: :memberships
  has_many :memberships

  has_many :assignments
  has_many :projects, through: :assignments
  has_many :reviews
end
