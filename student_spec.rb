require('minitest/autorun')
require('minitest/rg')
require_relative('./student')

class TestStudent < MiniTest::Test

  def test_get_name
    student = Student.new("Frank", 10)
    assert_equal("Frank", student.name() )
  end

  def test_get_cohort
    cohort = Student.new("Frank", 10)
    assert_equal(10, cohort.cohort_number())
  end

def test_set_name
    student = Student.new("Frank", 10)
    student.set_name("Franco")
    assert_equal("Franco", student.name())
end

def test_set_cohort
    cohort = Student.new("Frank", 10)
    cohort.set_cohort(12)
    assert_equal(12, cohort.cohort_number())
end

def test_student_talk
    talk = Student.new("Frank", 10)
    # assert_equal("Frank can talk", "#{@name} can talk")
    assert_equal("Frank can talk!", talk.student_talk())
end

def test_favourite_language
    student1 = Student.new("Frank", 10)
    assert_equal("ruby", student1.favourite_language())
end



end