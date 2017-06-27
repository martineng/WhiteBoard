require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  fixtures :subjects

  def test_new_subject
    # test on creating new subjects

    # using fixtures data
    this_sub = Subject.new(subject_name: subjects(:subject_two).subject_name,
          subject_code: subjects(:subject_two).subject_code,
          description: subjects(:subject_two).description,
          course: subjects(:subject_two).course)

    # insert
    # this will failed because of the invalid reference of course
    # which is success failed test
    assert this_sub.save
    # delete
    assert this_sub.destroy
  end # END test_new_subject

end
