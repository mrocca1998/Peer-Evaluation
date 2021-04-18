class Student < ApplicationRecord
  has_many :memberships
  has_many :groups, through: :memberships
  has_many :authored_scores, class_name: "Score", foreign_key: "author_id"
  has_many :received_scores, class_name: "Score", foreign_key: "recipient_id"
  has_many :scores
  has_many :reviews
  validates :fname, :lname, :email, presence: true
  validates :groups, absence: { message: 'cannot have admins as members' }, if: :isAdmin?
end
