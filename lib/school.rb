# code here!
class School
  attr_reader :roster, :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    intermediary = {}
    @roster.map do |grade, students|
      intermediary[grade] = students.sort
    end
    intermediary
  end
end