class Project < ApplicationRecord
  has_many :assignments
  has_many :groups, through: :assignments
end
