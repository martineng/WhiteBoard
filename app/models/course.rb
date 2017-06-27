class Course < ActiveRecord::Base
  # a course has many students enrolled.
  # a course has many subjects
  has_many :enrolments
  has_many :students, through: :enrolments
  has_many :subjects
end
