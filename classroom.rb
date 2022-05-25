class Classroom
  attr_accessor :label

  def initialize(lable)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
    student.classroom = self
  end

  def remove_student(student)
    @students.delete(student)
  end
end
