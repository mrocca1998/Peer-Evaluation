class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships
  has_many :authored_scores, class_name: "Score", foreign_key: "author_id"
  has_many :received_scores, class_name: "Score", foreign_key: "recipient_id"
  has_many :scores
  has_many :reviews
  has_many :grades
  validates :fname, :lname, :email, presence: true
  validates :groups, absence: { message: 'cannot have admins as members' }, if: :isAdmin?
  validates_uniqueness_of :email
end
