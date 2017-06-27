class User < ActiveRecord::Base
  # A user can enroll in many courses
  has_many :enrolments
  has_many :courses, through: :enrolments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # I activated these and all can be found in the migration
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
end
