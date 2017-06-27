require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  fixtures :courses

  def test_new_course
    # test on creating new courses

    # hard coded value
    thecourse = Course.new(course_name: 'cname01',
        course_code: 'ccode01',
        stream: 's01',
        description: 'description01')

    # using fixtures data
    course02 = Course.new(course_name: courses(:course_two).course_name,
          course_code: courses(:course_two).course_code,
          stream: courses(:course_two).stream,
          description: courses(:course_two).description)

    # insert
    assert thecourse.save
    assert course02.save

    # delete
    assert thecourse.destroy
    assert course02.destroy
  end # END test_new_course

end
