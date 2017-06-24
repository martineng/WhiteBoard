class Course < ActiveRecord::Base
  has_many :enrolments
  has_many :students, through: :enrolments
  has_many :subjects
end
