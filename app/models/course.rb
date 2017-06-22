class Course < ActiveRecord::Base
  has_many :user_courses
  has_many :students, through: :user_courses
end
