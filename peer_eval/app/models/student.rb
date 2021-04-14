class Student < ApplicationRecord
  has_many :authored_evals, class_name: "Evaluation", foreign_key: "author"
  has_many :received_evals, class_name: "Evaluation", foreign_key: "recipient"

  has_many :memberships
  has_many :groups, through: :memberships
end
