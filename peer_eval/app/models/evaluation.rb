class Evaluation < ApplicationRecord
  belongs_to :author, class_name: 'Student'
  belongs_to :recipient, class_name: 'Student'
end
