require('minitest/autorun')
require_relative( '../student')

class StudentSpec < MiniTest::Test
  
  def test_can_add_student_with_cohort
    student = Student.new("James", 9, "I can talk!", "Java")
    assert_equal(Student, student.class)
  end

  def test_can_get_student
    student = Student.new("Zach", 0, "I can talk!", "C++")
    assert_equal("Zach", student.student)
  end

  def test_can_get_cohort
    student = Student.new("Sean", 9, "I can talk!", "C")
    assert_equal(9, student.cohort)
  end

  def test_student_can_talk
    student = Student.new("Julia", 9, "I can talk!", "Javascript")
    assert_equal("I can talk!", student.talk)
  end

  def test_favourite_language
    student = Student.new("Peter", 9, "I can talk!", "Ruby")
    assert_equal("I love Ruby", student.fav_lang)
  end

  def test_set_name_and_cohort
    student = Student.new("Nina", 9, "I can talk!", "Ruby")
    @student = "Nina"
    @cohort = 9
    assert_equal("Nina", student.student)
    assert_equal(9, student.cohort)
  end
end