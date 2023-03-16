require './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, name, parent_permission: true, classroom: nil)
    super(name, age, parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.add_student(self) unless classroom.students.include?(self)
  end
end
