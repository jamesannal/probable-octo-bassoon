class Student
  attr_reader :student, :cohort
  attr_accessor :talk, :lang

  def initialize(student, cohort, talk, lang)
    @student = student
    @cohort = cohort
    @talk = talk
    @lang = lang
  end

  def fav_lang
    return "I love #{lang}"
  end
end
