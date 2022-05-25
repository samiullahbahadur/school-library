require './person'
require './classroom'
class Student < Person
  def initialize(classroom)
    super(age, name, parent_permission)
    self.classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def  classroom =(new_classroom)
    if new_classroom.is_a(Classroom)
      @classroom.remove_student(self) unless @classroom.nil? ||@classroom==new_classroom
      @classroom = new_classroom
      @classroom.add_student(self) unless @classroom.students.include?(self)
    else
      @classroom = nil
    end
  end
end
