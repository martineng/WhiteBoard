class Subject < ApplicationRecord
  # a subject is belong to one course
  belongs_to :course
end
