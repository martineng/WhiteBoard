class Enrolment < ApplicationRecord
  # a join table
  # enrolment involve student id and course id
  # could also explained as a class/classroom
  # simply reference student and course id
  belongs_to :user
  belongs_to :course
end
